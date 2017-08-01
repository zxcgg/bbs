package cn.cwx521.controller;

import cn.cwx521.pojo.User;
import cn.cwx521.service.UserSiver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.SessionScope;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by zxc on 2017/7/19.
 */
@Controller
@RequestMapping(value = "/user")
public class UserLoginController {

    @Autowired
    private UserSiver userSiver;


    @RequestMapping(value = "userlogin", method = RequestMethod.POST)
    public String login(User u, HttpServletRequest request) {
        if (userSiver.selectUser(u) != null) {
            u.setPass("");//防止获取用户密码
            request.getSession().setAttribute("user", u);

            return "redirect:/show";
        }
        return "loginfail";
    }

    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String register(User u) {
        if (userSiver.insertUser(u)) {
            return "rsuccess";
        }
        return "registerfail";


    }

    @RequestMapping(value = "vailuser", method = RequestMethod.POST)
    @ResponseBody
    public String userVail(String username) {
        return userSiver.userVail(username);
    }

    @RequestMapping(value = "cpass", method = RequestMethod.GET)
    @ResponseBody
    public String cpass(User user, String newpass) {
        if (userSiver.selectUser(user) == null) {
            return "fail";
        }
        user.setPass(newpass);//这里利用user改密码
        if (userSiver.updateByUserName(user) != 0) {
        }
        return "success";
    }
}
