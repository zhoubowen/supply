package com.supply.controller;

import com.supply.entity.Member;
import com.supply.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by bowen on 2018-02-27 00:25
 */
@Controller
@RequestMapping("/member/")
public class MemberController {
    @Autowired
    private MemberService memberService;

    @RequestMapping("index")
    public String index() {
        memberService.findAll();
        return "member/index";
    }
}
