package com.mdd.share.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.util.Date;
@Data
@Builder
@AllArgsConstructor
public class Ebook {
    private Integer id;

    private String ebookName;

    private String downloadUrl;

    private String picUrl;

    private Integer score;

    private Integer isChinese;

    private String kind;

    private Integer isPublish;

    private Date updateTime;

    private Date createTime;

    private String catalog;

    public Ebook() {}
}