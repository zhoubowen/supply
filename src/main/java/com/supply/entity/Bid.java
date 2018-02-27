package com.supply.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 投标信息
 * Created by bowen on 2018-02-27 12:52
 */
@Table(name = "t_bid")
public class Bid {
    @Id
    private Integer id;
    @Column(name = "article_id")
    private Integer articleId;
    @Column(name = "member_id")
    private Integer memberId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public Integer getMemberId() {
        return memberId;
    }

    public void setMemberId(Integer memberId) {
        this.memberId = memberId;
    }

    @Override
    public String toString() {
        return "Bid{" +
                "id=" + id +
                ", articleId=" + articleId +
                ", memberId=" + memberId +
                '}';
    }
}
