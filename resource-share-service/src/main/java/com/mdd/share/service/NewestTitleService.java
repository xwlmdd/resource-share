package com.mdd.share.service;

import com.mdd.share.model.NewestTitle;

/**
 * Created by Administrator on 2018/5/8.
 */
public interface NewestTitleService {

    boolean isNewestBlog(String key,String blogTitle);

    void saveNewestTitle(NewestTitle newestTitle);

}
