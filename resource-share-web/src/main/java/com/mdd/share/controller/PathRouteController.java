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

    @RequestMapping("toEbookList")
    public String toEbookList(){
        log.info("invoke into ebookList");
        return EBOOK_LIST_PAGE;
    }

}
