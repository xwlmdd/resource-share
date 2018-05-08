package com.mdd.share.model;

import java.util.Date;

public class NewestTitle {
    private Integer id;

    private String key;

    private String newestTitle;

    private Date createTime;

    private Date updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key == null ? null : key.trim();
    }

    public String getNewestTitle() {
        return newestTitle;
    }

    public void setNewestTitle(String newestTitle) {
        this.newestTitle = newestTitle == null ? null : newestTitle.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}