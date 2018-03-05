package com.supply.controller;

import com.supply.entity.Member;
import com.supply.exception.BusinessException;
import com.supply.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by bowen on 2018-02-28 00:14
 */
@Controller
@RequestMapping("/member/")
public class MemberLonginController {

    @Autowired
    private MemberService memberService;

    @RequestMapping("/loginInput")
    public ModelAndView index(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }

    @RequestMapping("login")
    public ModelAndView login(Member member, HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        try {
            Member longMember = memberService.login(member);
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("memberId", longMember.getId());
            httpSession.setAttribute("name", longMember.getName());
            modelAndView.setViewName("/");
        } catch (BusinessException e) {
            modelAndView.addObject("code", e.getCode());
            modelAndView.getModel().put("msg", e.getMsg());
            modelAndView.setViewName("error");
        }
        return modelAndView;
    }

    @RequestMapping("logout")
    public String logout(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/";
    }

    @RequestMapping("info")
    public ModelAndView info(Integer id){
        Member member = memberService.findByMemberId(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("memberInfo");
        modelAndView.addObject("member", member);
        return  modelAndView;
    }
}
