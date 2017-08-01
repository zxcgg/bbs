package cn.cwx521.controller;

import cn.cwx521.pojo.EasyUIDataGridResult;
import cn.cwx521.pojo.Page;
import cn.cwx521.pojo.PageExample;
import cn.cwx521.service.PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value = "/page")
public class page {
    @Autowired
    private PageService pageService;

    @RequestMapping(value = "home", method = RequestMethod.POST)
    public String home() {
        return "home";
    }

    @RequestMapping(value = "write", method = RequestMethod.POST)
    @ResponseBody
    public String write(Page page) {
        if (pageService.insertPage(page) != 1) {
            return "{\"msg\":\"失败\"}";
        }
        return "{\"msg\":\"成功\"}";
    }

    @RequestMapping(value = "newpage", method = RequestMethod.GET)
    @ResponseBody
    public EasyUIDataGridResult newpage(int rows, int page) {
        return this.pageService.pagelist(page, rows);
    }

    @RequestMapping(value = "goodpage", method = RequestMethod.GET)
    @ResponseBody
    public EasyUIDataGridResult goodpage(int rows, int page) {
        return this.pageService.pagelist(page, rows);
    }  @RequestMapping(value = "ugoodpage", method = RequestMethod.GET)
    @ResponseBody
    public EasyUIDataGridResult ugoodpage(int rows, int page) {
        return this.pageService.upagelist(page, rows);
    }

}
