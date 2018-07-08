package com.mdd.share.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.mdd.share.model.Ebook;
import com.mdd.share.model.QueryConditon;
import com.mdd.share.service.EbookService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2018/4/21.
 */
@Controller
@Slf4j
public class EbookController {

    @Resource
    private EbookService ebookService;

    private static final String ADD_EBOOK_PAGE = "ebookAdd";

    private static final String EBOOK_PAGE = "ebook";

    @RequestMapping(value = "ebook/addEbook",method = RequestMethod.POST)
    public String addEbook(Ebook ebook, Model model){
        ebook.setIsPublish(1);
        log.info("ebook:{}",new Gson().toJson(ebook,Ebook.class));
        ebookService.addEbook(ebook);
        model.addAttribute("meg","success");
        return ADD_EBOOK_PAGE;
    }

    @RequestMapping(value = "ebook/getAllEbook")
    public String getAllEbook(Integer page, Integer limit, Model model){
        if (limit == null){
            limit = 1;
        }
        if (page==null){
            page = 1;
        }
        PageHelper.startPage(page, 2);
        List<Ebook> list = ebookService.getAllEbook(new QueryConditon(page, limit));
        PageInfo<Ebook> ebooks = new PageInfo(list);
        model.addAttribute("paginator",ebooks);
        log.info("ebooks:{}",new Gson().toJson(ebooks));
//        model.addAttribute("paginator",ebooks.getPaginator());
        return EBOOK_PAGE;
    }

}
