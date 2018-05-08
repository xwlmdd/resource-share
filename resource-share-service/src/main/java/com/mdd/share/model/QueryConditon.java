package com.mdd.share.model;

/**
 * Created by Administrator on 2018/4/30.
 */
public class QueryConditon {
    private Integer page;
    private Integer limit;

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getLimit() {
        return limit;
    }

    public QueryConditon(Integer page, Integer limit) {
        this.page = page;
        this.limit = limit;
    }

    public QueryConditon() {
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }
}
