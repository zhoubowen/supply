package com.supply.controller;

import com.supply.entity.Article;
import com.supply.param.ArticleQueryParam;
import com.supply.service.ArticleService;
import com.supply.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by bowen on 2018-03-04 20:43
 */
@Controller
public class IndexController {


    @Autowired
    private ArticleService articleService;

    @RequestMapping("/")
    public ModelAndView index(ArticleQueryParam articleQueryParam, PageUtil pageUtil){
        List<Article> list = articleService.findForPage(articleQueryParam, pageUtil);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        modelAndView.addObject("list", list);
        modelAndView.addObject("type", articleQueryParam.getType());
        modelAndView.addObject("page", pageUtil);
        return modelAndView;
    }

    @RequestMapping("/detail")
    public ModelAndView detail(Integer id, Integer type){
        Article article = articleService.findById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("detail");
        modelAndView.addObject("type", type);
        modelAndView.addObject("article", article);
        return modelAndView;
    }

}
