package com.supply.service.impl;

import com.github.pagehelper.PageHelper;
import com.google.common.collect.Maps;
import com.supply.entity.Article;
import com.supply.mapper.ArticleMapper;
import com.supply.param.ArticleQueryParam;
import com.supply.service.ArticleService;
import com.supply.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
import java.util.Map;

/**
 * Created by bowen on 2018-02-27 22:43
 */
@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleMapper articleMapper;

    @Override
    public List<Article> findForPage(ArticleQueryParam articleQueryParam, PageUtil pageUtil) {
        PageHelper.startPage(pageUtil.getPage(), pageUtil.getSize());
        Example example = new Example(Article.class);
        return articleMapper.selectByExample(example);
    }

    @Override
    public int add(Article article) {
        return articleMapper.insert(article);
    }

    @Override
    public int update(Article article) {
        return articleMapper.updateByPrimaryKey(article);
    }

    @Override
    public Article findById(Integer id) {
        return articleMapper.selectByPrimaryKey(id);
    }
}
