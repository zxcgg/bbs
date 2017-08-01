package cn.cwx521.controller;

import cn.cwx521.pojo.User;
import cn.cwx521.service.UserSiver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by zxc on 2017/7/19.
 */
@Controller
public class LoginController {

    //此部分仅仅是为了让跳转到主页和注册页
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String login(HttpServletRequest request) {
        User user=new User();
        user.setUsername("");
        request.getSession().setAttribute("user",user);
        return "login";
    }
    @RequestMapping(value = "show", method = RequestMethod.GET)
    public String show() {
        return "show";
    }

    @RequestMapping(value = "register", method = RequestMethod.GET)
    public String register() {
        return "register";
    }
    @RequestMapping(value = "index", method = RequestMethod.GET)
    public String index() {
        return "index";
    }
    @RequestMapping(value = "home", method = RequestMethod.GET)
    public String home() {
        return "home";
    }
    @RequestMapping(value = "goodpage", method = RequestMethod.GET)
    public String good() {
        return "goodpage";
    }
    @RequestMapping(value = "newpage", method = RequestMethod.GET)
    public String newpage() {
        return "newpage";
    }
    @RequestMapping(value = "usercenter", method = RequestMethod.GET)
    public String usercenter() {
        return "usercenter";
    }
    @RequestMapping(value = "writepage", method = RequestMethod.GET)
    public String writepage() {
        return "write";
    }
     @RequestMapping(value = "card", method = RequestMethod.GET)
    public String card() {
        return "card";
    }

}
