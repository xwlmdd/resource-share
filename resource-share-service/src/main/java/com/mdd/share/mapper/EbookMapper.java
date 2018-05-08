package com.mdd.share.mapper;

import com.github.pagehelper.PageInfo;
import com.mdd.share.model.Ebook;
import com.mdd.share.model.QueryConditon;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EbookMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Ebook record);

    int insertSelective(Ebook record);

    Ebook selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Ebook record);

    int updateByPrimaryKeyWithBLOBs(Ebook record);

    int updateByPrimaryKey(Ebook record);

    List<Ebook> getAllEbook(QueryConditon queryConditon);

    List<Ebook> selectByIds(List<Integer> idList);

    List<Ebook> recommendEbook(@Param("kind") String kind, @Param("limit") Integer limit);
}