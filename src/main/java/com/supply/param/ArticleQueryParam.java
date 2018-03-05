package com.supply.param;

/**
 * Created by bowen on 2018-02-27 22:42
 */
public class ArticleQueryParam {
    private Integer type = 0;

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "ArticleQueryParam{" +
                "type=" + type +
                '}';
    }
}
