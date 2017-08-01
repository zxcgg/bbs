package cn.cwx521.service;

import cn.cwx521.common.YinHeResult;
import cn.cwx521.pojo.EasyUIDataGridResult;
import cn.cwx521.pojo.Page;

public interface PageService {

    int insertPage(Page page);

    YinHeResult deletePageBypid(String ids);

    EasyUIDataGridResult pagelist(int page, int rows);

    YinHeResult jjPageBypid(String ids);

    YinHeResult qxPageBypid(String ids);

    EasyUIDataGridResult upagelist(int page, int rows);
}
