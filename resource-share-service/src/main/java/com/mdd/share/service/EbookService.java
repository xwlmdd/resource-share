package com.mdd.share.service;

import com.github.pagehelper.PageInfo;
import com.mdd.share.model.Ebook;
import com.mdd.share.model.QueryConditon;

import java.util.List;

/**
 * Created by xwl on 2018/4/21.
 */
public interface EbookService {

    /**
     * 增加电子书
     * @param ebook 电子书实体
     */
    void addEbook(Ebook ebook);

    /**
     * 获取电子书
     * @return
     */
    List<Ebook> getAllEbook(QueryConditon queryConditon);

    /**
     * 根据id获取电子书详细信息
     * @param id ebook的id
     * @return ebook实体
     */
    Ebook getEbookById(Integer id);

    /**
     * 根据id获取电子书前后详细信息
     * @param idList
     * @return
     */
    List<Ebook>getPreAndLastEbookById(List<Integer>idList);

    /**
     * 推荐相关ebook
     * @param kind 分类
     * @param limit 数量
     * @return
     */
    List<Ebook> recommendEbook(String kind, Integer limit);
}
