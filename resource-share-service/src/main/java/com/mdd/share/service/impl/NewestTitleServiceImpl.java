package com.mdd.share.service.impl;

import com.mdd.share.mapper.NewestTitleMapper;
import com.mdd.share.model.NewestTitle;
import com.mdd.share.service.NewestTitleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Objects;

/**
 * Created by Administrator on 2018/5/8.
 */
@Service("newestTitleService")
public class NewestTitleServiceImpl implements NewestTitleService {

    @Resource
    private NewestTitleMapper newestTitleMapper;

    @Override
    public boolean isNewestBlog(String key,String blogTitle) {
        NewestTitle newestTitle = newestTitleMapper.queryNewestTitleByKey(key);
        if (Objects.isNull(newestTitle)){
            return true;
        }
        if (Objects.equals(blogTitle,newestTitle.getNewestTitle())){
            return false;
        }
        return true;
    }

    @Override
    public void saveNewestTitle(NewestTitle newestTitle) {
        newestTitleMapper.insert(newestTitle);
    }
}
