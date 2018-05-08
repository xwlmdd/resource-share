package com.mdd.share.controller;

import com.mdd.share.constant.AdminConstant;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Objects;

/**
 * Created by xwl on 2018/4/1.
 */
@Controller
@Slf4j
@RequestMapping("admin")
public class AdminController {

    private static final String LOGIN_PAGE = "/page/login";

    private static final String INDEX_PAGE = "/index";

    @RequestMapping("login")
    public String login(String username, String password, Model model,HttpServletRequest request){
        log.info("admin login username:{},password:{}",username,password);
        if(StringUtils.isAnyBlank(username,password)){
            model.addAttribute("errorMsg",AdminConstant.PARAM_IS_NULL_MSG);
            return LOGIN_PAGE;
        }

        if ((Objects.equals(AdminConstant.USER_NAME, username) &&
        Objects.equals(AdminConstant.USER_PWD,password))){
            model.addAttribute("errorMsg",AdminConstant.PARAM_ERROR_MSG);
            return LOGIN_PAGE;
        }
        HttpSession session = request.getSession();
        session.setAttribute("username",username);
        return INDEX_PAGE;
    }
}
