package com.supply.controller.admin;

import com.supply.entity.Article;
import com.supply.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by bowen on 2018-02-28 21:48
 */
@Controller
@RequestMapping("/admin/supply/")
public class SupplyController {

    @Autowired
    private ArticleService articleService;

    @RequestMapping("index")
    public ModelAndView index(@RequestParam(name = "type", defaultValue = "0") Integer type,
                              @RequestParam(name = "status", defaultValue = "1") Integer status){
        List<Article> list = articleService.findAllByExample(type, status);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/admin/supply");
        modelAndView.addObject("list", list);
        return modelAndView;
    }
}
