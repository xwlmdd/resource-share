package com.mdd.share.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Blog {
    private Integer id;

    private String title;

    private String description;

    private String kind;

    private String author;

    private String blogUrl;

    private Date publishTime;

    private Integer type;

    private Integer isPublish;

    private Date createTime;

    private Date updateTime;

    private String content;

}