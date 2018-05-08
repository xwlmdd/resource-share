package com.mdd.share.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Created by xwl on 2018/4/1.
 */
@Controller
@Slf4j
@RequestMapping("admin")
public class PathRouteController {

    private static final String LOGIN_PAGE = "login";
    private static final String ADD_EBOOK_PAGE = "ebookAdd";
    private static final String EBOOK_PAGE = "ebook";

    @RequestMapping("toLogin")
    public String toLogin(){
        log.info("invoke into toLogin");
        return LOGIN_PAGE;
    }

    @RequestMapping("toAddEbook")
    public String toAddEbook(){
        log.info("invoke into toAddEbook");
        return ADD_EBOOK_PAGE;
    }

    @RequestMapping("toEbook")
    public String toEbook(){
        log.info("invoke into toEbook");
        return EBOOK_PAGE;
    }

}
