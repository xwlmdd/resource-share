package com.mdd.share.service.impl;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.mdd.share.mapper.EbookMapper;
import com.mdd.share.model.Ebook;
import com.mdd.share.model.QueryConditon;
import com.mdd.share.service.EbookService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Objects;

/**
 * Created by Administrator on 2018/4/21.
 */
@Service("ebookService")
@Slf4j
public class EbookServiceImpl implements EbookService {

    @Resource
    private EbookMapper ebookMapper;

    @Override
    public void addEbook(Ebook ebook) {
        if (Objects.isNull(ebook)){
            log.error("fail to addEbook, ebook is null");
            return;
        }
        ebookMapper.insert(ebook);
    }

    @Override
    public List<Ebook> getAllEbook(QueryConditon queryConditon) {
        return ebookMapper.getAllEbook(queryConditon);
    }


    @Override
    public Ebook getEbookById(Integer id) {
        return ebookMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Ebook> getPreAndLastEbookById(List<Integer> idList) {
        return ebookMapper.selectByIds(idList);
    }

    @Override
    public List<Ebook> recommendEbook(String kind, Integer limit) {
        return ebookMapper.recommendEbook(kind,limit);
    }
}
