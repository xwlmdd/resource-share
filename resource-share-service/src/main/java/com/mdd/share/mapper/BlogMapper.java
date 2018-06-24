package com.mdd.share.mapper;

import com.mdd.share.model.Blog;
import com.mdd.share.model.QueryConditon;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

public interface BlogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Blog record);

    Blog selectByPrimaryKey(Integer id);

    Blog queryBlogByTitleAndTime(Blog blog);

    List<Blog> getAllBlog(QueryConditon queryConditon);

    List<Blog> selectByIds(ArrayList<Integer> idList);

    List<Blog> recommendBlog(@Param("kind") String kind, @Param("limit") Integer limit);
}