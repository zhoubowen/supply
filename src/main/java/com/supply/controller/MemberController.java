package com.supply.controller;

import com.supply.constant.CommonConstant;
import com.supply.entity.Article;
import com.supply.entity.Member;
import com.supply.exception.BusinessException;
import com.supply.param.ArticleQueryParam;
import com.supply.service.ArticleService;
import com.supply.service.MemberService;
import com.supply.util.MD5Util;
import com.supply.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
import java.util.Objects;

/**
 * Created by bowen on 2018-02-27 00:25
 */
@Controller
@RequestMapping("/member/")
public class MemberController {
    @Autowired
    private MemberService memberService;
    @Autowired
    private ArticleService articleService;


    @RequestMapping("/loginInput")
    public ModelAndView index(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }

    @RequestMapping("login")
    public Object login(Member member, HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        try {
            Member longMember = memberService.login(member);
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("memberId", longMember.getId());
            httpSession.setAttribute("name", longMember.getName());
            return "redirect:/";
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
    public Object info(HttpServletRequest request){
        Integer id = (Integer) request.getSession().getAttribute("memberId");
        if(null == id){
            return "redirect:/member/loginInput";
        }
        Member member = memberService.findByMemberId(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("memberInfo");
        modelAndView.addObject("member", member);
        return  modelAndView;
    }

    @RequestMapping("register")
    public String register(Member member){
        member.setPassword(MD5Util.EncoderByMd5(member.getPassword()));
        member.setStatus(CommonConstant.VALID);
        memberService.add(member);
        return "redirect:/member/loginInput";
    }

    @RequestMapping("supply")
    public ModelAndView supply(ArticleQueryParam articleQueryParam, PageUtil pageUtil, HttpServletRequest request){
        articleQueryParam.setMemberId((Integer) request.getSession().getAttribute("memberId"));
        ModelAndView modelAndView = new ModelAndView();
        List<Article> list = articleService.findForPage(articleQueryParam, pageUtil);
        modelAndView.addObject("list", list);
        modelAndView.addObject("ptype", articleQueryParam.getType());
        modelAndView.addObject("page", pageUtil);
        if (articleQueryParam.getType() == 0){
            modelAndView.setViewName("supplyList");
        }else{
            modelAndView.setViewName("investment");
        }
        return modelAndView;
    }

    @RequestMapping("supplyInput")
    public ModelAndView supplyInput(Integer id, Integer type){
        ModelAndView modelAndView = new ModelAndView();
        Article article = null;
        if(null == id){
            //add input
            article = new Article();
            article.setType(type);
        }else{
            article = articleService.findById(id);
            type = article.getType();
        }
        modelAndView.addObject("article", article);
        if(type == 0){
            modelAndView.setViewName("/supplyInput");
        }else{
            modelAndView.setViewName("/investmentInput");
        }
        return modelAndView;
    }

    @RequestMapping("supplySave")
    public String supplySave(Article article, HttpServletRequest request){
        if(null == article.getId()){
            article.setStatus(CommonConstant.VERIFY);
            Date now = new Date();
            article.setCreateTime(now);
            article.setUpdateTime(now);
            article.setCreateBy((Integer) request.getSession().getAttribute("memberId"));
            articleService.add(article);
        }else{
            articleService.update(article);
        }
        return "redirect:/member/supply?type=" + article.getType();
    }


    @RequestMapping("supplyDelete")
    public String supplyDelete(Integer id, Integer type){
        Article article = new Article();
        article.setId(id);
        article.setStatus(CommonConstant.DELETE);
        articleService.update(article);
        return "redirect:/member/supply?type=" + type;
    }

}
