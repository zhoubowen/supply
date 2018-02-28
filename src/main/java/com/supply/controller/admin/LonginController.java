package com.supply.controller.admin;

import com.supply.entity.Member;
import com.supply.exception.BusinessException;
import com.supply.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by bowen on 2018-02-28 00:14
 */
@Controller
@RequestMapping("/admin/")
public class LonginController {

    @Autowired
    private MemberService memberService;

    @RequestMapping("/")
    public ModelAndView index(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("msg", "asdfa");
        modelAndView.setViewName("/admin/login");
        return modelAndView;
    }

    @RequestMapping("login")
    public ModelAndView login(Member member){
        ModelAndView modelAndView = new ModelAndView();
        try {
            memberService.login(member);
            modelAndView.setViewName("/admin/index");
        } catch (BusinessException e) {
            modelAndView.addObject("code", e.getCode());
            modelAndView.getModel().put("msg", e.getMsg());
            modelAndView.setViewName("error");
        }
        return modelAndView;
    }
}
