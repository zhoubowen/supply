package com.supply.service.article;

import com.supply.BaseTest;
import com.supply.entity.Article;
import com.supply.service.ArticleService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by bowen on 2018-02-27 23:08
 */
public class ArticleServiceTest extends BaseTest {

    @Autowired
    private ArticleService articleService;

    @Test
    public void findByIdTest(){
        Article a = articleService.findById(1);
        System.out.println(a);
    }
}
