package com.mdd.share.crawler;

import com.google.common.collect.Maps;
import com.mdd.share.model.Blog;
import com.mdd.share.service.BlogService;
import com.mdd.share.service.NewestTitleService;
import com.mdd.share.utils.CommonUtils;
import lombok.extern.slf4j.Slf4j;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Created by Administrator on 2018/5/5.
 */
@Slf4j
public class LiangGuiZhaoBolgCrawler {

    private static final String INDEX_URL = "http://blog.720ui.com/";

    private static final String NEWEST_PRE_KEY = "LiangGuiZhaoBolg_";

    private static final Integer FIX_THREAD_NUM = 5;

    private static final String AUTHOR = "梁桂钊的博客";

    private static ExecutorService executorService = Executors.newFixedThreadPool(FIX_THREAD_NUM);

    @Resource
    private NewestTitleService newestTitleService;

    @Resource
    private BlogService blogService;

    private void crawl()  {
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
        Map<String,String> categoriesMap = Maps.newHashMap();
        for(Element element : categorieslist) {
            String href = element.select("a").attr("href");
            String title = element.select("a").attr("title");
            log.info("categories title:{},url:{}", title, href);
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

        for (Element section : sections) {
            String blogUrl = section.getElementsByTag("a").attr("href");
            String blogTitle = section.select("a > h1").text();
            log.info("get blog title:{},bolgUrl:{}",blogTitle,blogUrl);
            String newestTitleKey = NEWEST_PRE_KEY + category;
            // 判断是否最新一篇
            boolean isNewestBlog = newestTitleService.isNewestBlog(newestTitleKey, blogTitle);
            if (isNewestBlog){
                log.info("blogTitle is newest blogTitle:{}",blogTitle);
                return;
            }
            Document blogDocument = null;
            try {
                blogDocument = Jsoup.connect(blogUrl).get();
            } catch (IOException e) {
                log.error("fail invoke crawlPage Jsoup.connect blogUrl:{}",blogUrl,e);
                continue;
            }
            String publishTime = blogDocument.select("#main > article > header > p > time").attr("datetime");
            String copyright = blogDocument.select("#main > article > div.article-footer-copyright").html();
            Element contentElement = blogDocument.select("#main > article > div.article-content").get(0);
            contentElement.removeClass("toc-article");
            contentElement.removeClass("article-nav.clearfix");
            String content = contentElement.html()+copyright;

            Blog blog = new Blog();
            blog.setAuthor(AUTHOR);
            blog.setBlogUrl(blogUrl);
            blog.setTitle(blogTitle);
            blog.setContent(content);
            blog.setKind(category);
            blog.setIsPublish(0);
            try {
                blog.setPublishTime(CommonUtils.string4Date(publishTime));
            }catch (Exception e){
                log.error("fail invoke CommonUtils.string4Date publishTime:{}",publishTime,e);
            }
            blogService.saveBlog(blog);
        }


    }

}
