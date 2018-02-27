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
    public String index(){
        return "/admin/login";
    }

    @RequestMapping("login")
    public String login(Member member){
        try {
            memberService.login(member);
        } catch (BusinessException e) {
            ModelAndView modelAndView = new ModelAndView();
            modelAndView.addObject("code", e.getCode());
            modelAndView.getModel().put("msg", e.getMsg());
            return "error";
        }
        return "/admin/index";
    }
}
