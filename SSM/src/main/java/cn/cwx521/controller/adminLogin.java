package cn.cwx521.controller;

import cn.cwx521.common.YinHeResult;
import cn.cwx521.pojo.Admin;
import cn.cwx521.pojo.EasyUIDataGridResult;
import cn.cwx521.pojo.User;
import cn.cwx521.service.AdminService;
import cn.cwx521.service.PageService;
import cn.cwx521.service.UserSiver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/admin")
public class adminLogin {
    @Autowired
    private AdminService adminService;
    @Autowired
    private PageService pageService;
    @Autowired
    private UserSiver userSiver;

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(Admin admin, HttpServletRequest request) {
        if (adminService.vailUser(admin) != null) {
            admin.setAdminpass("");
            request.getSession().setAttribute("admin", admin);
            return "redirect:/admin/show";
        }
        return "redirect:/admin/loginfail";
    }

    @RequestMapping(value = "user", method = RequestMethod.GET)
    @ResponseBody
    public EasyUIDataGridResult list(int page, int rows) {

        return this.userSiver.getUsers(page, rows);
    }

    @RequestMapping(value = "udelete", method = RequestMethod.POST)
    @ResponseBody
    public YinHeResult udelete(String ids) {
        return userSiver.deleteUserByname(ids);
    }

    @RequestMapping(value = "pdelete", method = RequestMethod.POST)
    @ResponseBody
    public YinHeResult pdelete(String ids) {

        return pageService.deletePageBypid(ids);
    }

    @RequestMapping(value = "goodpage", method = RequestMethod.POST)
    @ResponseBody
    public YinHeResult goodpage(String ids) {
        return pageService.jjPageBypid(ids);
    }

    @RequestMapping(value = "nogoodpage", method = RequestMethod.POST)
    @ResponseBody
    public YinHeResult nogoodpage(String ids) {
        return pageService.qxPageBypid(ids);
    }


}
