package com.mdd.share.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Created by xwl on 2018/4/1.
 */
@Controller
@Slf4j
@RequestMapping("weShare")
public class PathRouteController {

    private static final String EBOOK_LIST_PAGE = "ebookList";

    private static final String INDEX_PAGE = "index";

    private static final String BLOG_LIST = "blogList";

    @RequestMapping("toEbookList")
    public String toEbookList(){
        log.info("invoke into ebookList");
        return EBOOK_LIST_PAGE;
    }

    @RequestMapping("toIndex")
    public String toIndex(){
        log.info("invoke into toIndex");
        return INDEX_PAGE;
    }

    @RequestMapping("toBlog")
    public String toBlog(){
        log.info("invoke into toBlog");
        return BLOG_LIST;
    }
}
