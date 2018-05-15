package com.mdd.share.service;

import com.mdd.share.model.Blog;

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
}
