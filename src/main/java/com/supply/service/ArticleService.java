package com.supply.service;

import com.supply.entity.Article;
import com.supply.param.ArticleQueryParam;
import com.supply.util.PageUtil;

import java.util.List;

/**
 * Created by bowen on 2018-02-27 22:42
 */
public interface ArticleService {

    List<Article> findForPage(ArticleQueryParam articleQueryParam, PageUtil pageUtil);

    int add(Article article);

    int update(Article article);

    Article findById(Integer id);
}
