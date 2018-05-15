package com.mdd.share.crawler;

import com.google.gson.Gson;
import com.mdd.share.model.Blog;
import com.mdd.share.model.NewestTitle;
import com.mdd.share.service.BlogService;
import com.mdd.share.service.NewestTitleService;
import com.mdd.share.utils.CommonUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Created by Administrator on 2018/5/5.
 */
@Slf4j
@Component
public class LiangGuiZhaoBolgCrawler {

    private static final String INDEX_URL = "http://blog.720ui.com";

    private static final String NEWEST_PRE_KEY = "LiangGuiZhaoBolg_";

    private static final Integer FIX_THREAD_NUM = 5;

    private static final String AUTHOR = "梁桂钊的博客";

    private static ExecutorService executorService = Executors.newFixedThreadPool(FIX_THREAD_NUM);

    @Resource
    private NewestTitleService newestTitleService;

    @Resource
    private BlogService blogService;

    public void crawl()  {
        Document document = null;
        try {
            document = Jsoup.connect(INDEX_URL).get();
        } catch (IOException e) {
            log.error("fail invoke crawl Jsoup.connect index_url:{}",INDEX_URL,e);
            return;
        }
        Elements categorieslist = document.body().select("div.categorieslist > ul > li");
        if (Objects.isNull(categorieslist) || categorieslist.size()<=0){
            log.error("fail invoke crawl categorieslist is null");
            return;
        }
        for(Element element : categorieslist) {
            String href = element.select("a").attr("href");
            String title = element.select("a").attr("title");
            href = "http://blog.720ui.com/"+href;
            log.info("categories title:{},url:{}", title, href);
            crawlPage(href,title);
        }
    }

    /**
     * 抓取每个专题
     * @param url 每个专题url
     */
    private void crawlPage(String url, String category) {
        Document document = null;
        try {
            document = Jsoup.connect(url).get();
        } catch (IOException e) {
            log.error("fail invoke crawlPage Jsoup.connect url:{}",url,e);
            return;
        }
        Elements sections = document.select("#archive-page > section");
        if (Objects.isNull(sections) || sections.isEmpty()){
            log.error("fail invoke crawlPage sections is empty");
            return;
        }

        String blogTitle = sections.first().select("a > h1").text();
        boolean existNewestBlog = isExistNewestBlog(blogTitle, category);
        if (!existNewestBlog){
            log.error("category is {}, blog not update",category);
            return;
        }else {
            NewestTitle newestTitle = new NewestTitle();
            newestTitle.setNewestKey(NEWEST_PRE_KEY + category);
            newestTitle.setNewestTitle(blogTitle);
            newestTitleService.saveNewestTitle(newestTitle);
            log.info("blog update save newestTitle:{}",new Gson().toJson(newestTitle));
        }

        for (Element section : sections) {
            String blogUrl = section.getElementsByTag("a").attr("href");
            blogTitle = section.select("a > h1").text();
            blogUrl = INDEX_URL+blogUrl;
            log.info("get blog title:{},bolgUrl:{}",blogTitle,blogUrl);

            Document blogDocument = null;
            try {
                blogDocument = Jsoup.connect(blogUrl).get();
            } catch (IOException e) {
                log.error("fail invoke crawlPage Jsoup.connect blogUrl:{}",blogUrl,e);
                continue;
            }
            String publishTime = blogDocument.select("#main > article > header > p > time").text();
            String copyright = blogDocument.select("#main > article > div.article-footer-copyright").html();
            Element contentElement = blogDocument.select("#main > article > div.article-content").get(0);
            contentElement.removeClass("toc-article");
            contentElement.removeClass("article-nav.clearfix");
            String content = contentElement.toString()+copyright;
            log.info("content length{}",content.length());

            Blog blog = new Blog();
            blog.setAuthor(AUTHOR);
            blog.setBlogUrl(blogUrl);
            blog.setTitle(blogTitle);
            blog.setContent(content);
            blog.setKind(category);
            blog.setIsPublish(0);
            try {
                blog.setPublishTime(CommonUtils.string2DateYMD(publishTime));
            }catch (Exception e){
                log.error("fail invoke CommonUtils.string4Date publishTime:{}",publishTime,e);
            }
            if(blogService.isExistBlog(blog)) {
                log.warn("blog is exist in db,blog:{}",new Gson().toJson(blog));
                continue;
            }
            blogService.saveBlog(blog);
        }
    }

    /**
     * 查看是否有更新
     * @param blogTitle 第一个博客title
     * @return true 博客更新，false 没有更新
     */
    private boolean isExistNewestBlog(String blogTitle,String category){
        if (StringUtils.isBlank(blogTitle)){
            return false;
        }
        String newestTitleKey = NEWEST_PRE_KEY + category;
        // 判断是否最新一篇
        boolean isNewestBlog = newestTitleService.isNewestBlog(newestTitleKey, blogTitle);
        if (isNewestBlog){
            log.info("blogTitle is update, blogTitle:{}",blogTitle);
            return true;
        }
        return false;
    }

}
