package com.mdd.share.mapper;

import com.mdd.share.model.NewestTitle;

public interface NewestTitleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(NewestTitle record);

    NewestTitle selectByPrimaryKey(Integer id);

    NewestTitle queryNewestTitleByKey(String newestKey);
}