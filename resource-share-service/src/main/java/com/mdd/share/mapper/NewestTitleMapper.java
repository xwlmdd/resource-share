package com.mdd.share.mapper;

import com.mdd.share.model.NewestTitle;

public interface NewestTitleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(NewestTitle record);

    int insertSelective(NewestTitle record);

    NewestTitle selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(NewestTitle record);

    int updateByPrimaryKey(NewestTitle record);

    NewestTitle queryNewestTitleByKey(String key);
}