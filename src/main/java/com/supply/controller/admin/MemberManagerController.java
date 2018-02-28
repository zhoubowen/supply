package com.supply.controller.admin;

import com.supply.entity.Member;
import com.supply.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by bowen on 2018-02-28 22:38
 */
@Controller
@RequestMapping("/admin/member/")
public class MemberManagerController {

    @Autowired
    private MemberService memberService;

    @RequestMapping("index")
    public ModelAndView index(){
        List<Member> list = memberService.findAll();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/admin/member");
        modelAndView.addObject("list", list);
        return modelAndView;
    }

    @RequestMapping("input")
    public ModelAndView input(Integer memberId){
        Member member = memberService.findByMemberId(memberId);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/admin/memberInput");
        modelAndView.addObject("member", member);
        return modelAndView;
    }

    @RequestMapping("save")
    public String save(Member memer){
        memberService.update(memer);
        return "forward:/admin/member/index";
    }
}
