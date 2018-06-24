package com.mdd.share.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Lists;
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
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * Created by Administrator on 2018/4/21.
 */
@Controller
@Slf4j
@RequestMapping("ebook")
public class EbookController {

    @Resource
    private EbookService ebookService;

    private static final String EBOOK_DETAIL_PAGE = "ebookDetail";

    private static final String EBOOK_LIST_PAGE = "ebookList";

    private static final Integer LIMIT = 2;

    @RequestMapping(value = "getAllEbook")
    public String getAllEbook(QueryConditon queryConditon, Model model){
        log.info("invoke getAllEbook,queryConditon:{}",queryConditon);
        if (queryConditon.getLimit() == null){
            queryConditon.setLimit(1);
        }
        if (queryConditon.getPage() == null){
            queryConditon.setPage(1);
        }
        PageHelper.startPage(queryConditon.getPage(), LIMIT);
        List<Ebook> list = ebookService.getAllEbook(queryConditon);
        PageInfo<Ebook> ebooks = new PageInfo(list);
        model.addAttribute("paginator",ebooks);
        log.info("ebooks:{}",new Gson().toJson(ebooks));
        return EBOOK_LIST_PAGE;
    }


    @RequestMapping(value = "getEbookDetail")
    public String getEbookDeatil(Integer id,Model model){
        log.info("invoke getEbookDeatil id:{}",id);
        if (Objects.isNull(id) || id <= 0){
            log.error("fail invoke getEbookDeatil id is null or param invild id:{}",id);
            return EBOOK_DETAIL_PAGE;
        }
        ArrayList<Integer> idList = Lists.newArrayList();
        Integer preIndex = id-1;
        Integer nextIndex = id+1;

        idList.add(preIndex);
        idList.add(id);
        idList.add(nextIndex);
        List<Ebook> ebookList =  ebookService.getPreAndLastEbookById(idList);
        // 获取前一页后一页数据
        if (Objects.isNull(ebookList)){
            log.error("fail invoke getEbookDeatil ebookList null  ebookList:{}",ebookList);
            return EBOOK_DETAIL_PAGE;
        }

        model.addAttribute("preEbook", getEbookFromList(ebookList,preIndex));
        model.addAttribute("ebook", getEbookFromList(ebookList,id));
        model.addAttribute("nextEbook", getEbookFromList(ebookList, nextIndex));
        // 相关推荐书籍（相关kind前四本）
        Ebook ebook = getEbookFromList(ebookList, id);
        Integer limit  = 4;
        List<Ebook> recommendEbooks = ebookService.recommendEbook(ebook.getKind(), limit);

        model.addAttribute("recommendEbooks", recommendEbooks);
        return EBOOK_DETAIL_PAGE;
    }


    /**
     * 根据id从List获取ebook
     * @param ebookList
     * @param id
     * @return
     */
    private Ebook getEbookFromList(List<Ebook>ebookList , Integer id){
        for (Ebook ebook : ebookList){
            if (ebook.getId() == id){
                return ebook;
            }
        }
        return null;
    }


}
