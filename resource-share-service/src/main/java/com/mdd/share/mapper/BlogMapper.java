package com.mdd.share.mapper;

import com.mdd.share.model.Blog;

public interface BlogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Blog record);

    int insertSelective(Blog record);

    Blog selectByPrimaryKey(Integer id);

    Blog queryBlogByTitleAndTime(Blog blog);
}