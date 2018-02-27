package com.supply.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by bowen on 2018-02-28 00:14
 */
@Controller
@RequestMapping("/admin/")
public class LonginController {

    @RequestMapping("login")
    public String login(){
        return "/admin/login";
    }
}
