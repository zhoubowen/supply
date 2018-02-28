package com.supply.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by bowen on 2018-02-28 21:48
 */
@Controller
@RequestMapping("/admin/supply/")
public class SupplyController {

    @RequestMapping("index")
    public ModelAndView index(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/admin/supply");
        return modelAndView;
    }
}
