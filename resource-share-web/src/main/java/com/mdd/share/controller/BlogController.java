package com.mdd.share.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Lists;
import com.google.gson.Gson;
import com.mdd.share.model.Blog;
import com.mdd.share.model.Ebook;
import com.mdd.share.model.QueryConditon;
import com.mdd.share.service.BlogService;
import com.mdd.share.service.EbookService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * Created by xwl on 2018/4/21.
 */
@Controller
@Slf4j
@RequestMapping("blog")
public class BlogController {

    @Resource
    private BlogService blogService;

    private static final String BLOG_DETAIL_PAGE = "blogDetail";

    private static final String INDEX = "index";

    private static final Integer DEFAULT_LIMIT = 8;


    @RequestMapping(value = "getAllBlog")
    public String getAllBlog(QueryConditon queryConditon, Model model){
        log.info("invoke getAllBlog queryConditon:{}",queryConditon);
        if (queryConditon.getLimit() == null){
            queryConditon.setLimit(1);
        }
        if (queryConditon.getPage() == null){
            queryConditon.setPage(1);
        }
        PageHelper.startPage(queryConditon.getPage(), 2);
        List<Blog> list = blogService.getAllBlog(queryConditon);
        PageInfo<Blog> blogs = new PageInfo(list);
        model.addAttribute("paginator",blogs);
        log.info("blogs:{}",new Gson().toJson(blogs));

        // 相关推荐书籍（相关kind前四本）
        List<Blog> recommendBlogs = blogService.recommendBlog(null, DEFAULT_LIMIT);
        model.addAttribute("recommendBlogs", recommendBlogs);
        return INDEX;
    }


    @RequestMapping(value = "getBlogDetail")
    public String getBlogDetail(Integer id,Model model){
        log.info("invoke getBlogDetail id:{}",id);
        if (Objects.isNull(id) || id <= 0){
            log.error("fail invoke getBlogDetail id is null or param invild id:{}",id);
            return BLOG_DETAIL_PAGE;
        }
        ArrayList<Integer> idList = Lists.newArrayList();
        Integer preIndex = id-1;
        Integer nextIndex = id+1;

        idList.add(preIndex);
        idList.add(id);
        idList.add(nextIndex);
        List<Blog> blogList =  blogService.getPreAndLastBlogById(idList);
        // 获取前一页后一页数据
        if (Objects.isNull(blogList)){
            log.error("fail invoke getBlogDetail blogList null  ebookList:{}",blogList);
            return BLOG_DETAIL_PAGE;
        }

        model.addAttribute("preBlog", getBlogFromList(blogList,preIndex));
        model.addAttribute("blog", getBlogFromList(blogList,id));
        model.addAttribute("nextBlog", getBlogFromList(blogList, nextIndex));
        // 相关推荐书籍（相关kind前四本）
        Blog blog = getBlogFromList(blogList, id);
        List<Blog> recommendBlogs = blogService.recommendBlog(blog.getKind(), DEFAULT_LIMIT);

        model.addAttribute("recommendBlogs", recommendBlogs);
        return BLOG_DETAIL_PAGE;
    }


    /**
     * 根据id从List获取blog
     * @param blogList
     * @param id
     * @return
     */
    private Blog getBlogFromList(List<Blog>blogList , Integer id){
        for (Blog blog : blogList){
            if (blog.getId().equals(id)){
                return blog;
            }
        }
        return null;
    }

}
