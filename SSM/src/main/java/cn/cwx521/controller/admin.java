package cn.cwx521.controller;

import cn.cwx521.pojo.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/admin")
public class admin {


    @RequestMapping(value = "", method = RequestMethod.GET)
    public String login(HttpServletRequest request) {
        Admin admin=new Admin();
        admin.setAdminname("");
        request.getSession().setAttribute("admin", admin);
        return "/admin/index";
    }
    @RequestMapping(value = "show", method = RequestMethod.GET)
    public String show() {
        return "/admin/show";
    }
    @RequestMapping(value = "page1", method = RequestMethod.GET)
    public String page() {
        return "/admin/page1";
    }

    @RequestMapping(value = "loginfail", method = RequestMethod.GET)
    public String loginfail() {
        return "/admin/loginfail";
    }
}
