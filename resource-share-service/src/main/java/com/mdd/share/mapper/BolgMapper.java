package com.mdd.share.mapper;

import com.mdd.share.model.Bolg;

public interface BolgMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Bolg record);

    int insertSelective(Bolg record);

    Bolg selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Bolg record);

    int updateByPrimaryKeyWithBLOBs(Bolg record);

    int updateByPrimaryKey(Bolg record);
}