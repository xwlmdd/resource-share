package com.mdd.share.service;

import com.mdd.share.model.Blog;
import com.mdd.share.model.QueryConditon;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2018/5/9.
 */
public interface BlogService {

    /**
     * 保存博客
     * @param blog
     */
    void saveBlog(Blog blog);

    /**
     * 是否存在该博客
     * @param blog
     * @return
     */
    boolean isExistBlog(Blog blog);

    /**
     * 分页获取博客
     * @param queryConditon
     * @return
     */
    List<Blog> getAllBlog(QueryConditon queryConditon);

    /**
     * 根据id获取博客
     * @param idList
     * @return
     */
    List<Blog> getPreAndLastBlogById(ArrayList<Integer> idList);

    /**
     * 获取相关推荐书籍
     *
     * @param kind
     * @param limit
     * @return
     */
    List<Blog> recommendBlog(String kind, Integer limit);
}
