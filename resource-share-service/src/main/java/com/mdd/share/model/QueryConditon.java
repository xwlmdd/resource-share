package com.mdd.share.model;

import lombok.*;

/**
 * Created by xwl on 2018/4/30.
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class QueryConditon {
    private Integer page;
    private Integer limit;
    private String kind;
    private Integer type;
}
