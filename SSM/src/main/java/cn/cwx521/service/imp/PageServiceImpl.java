package cn.cwx521.service.imp;

import cn.cwx521.common.YinHeResult;
import cn.cwx521.mapper.PageMapper;
import cn.cwx521.pojo.EasyUIDataGridResult;
import cn.cwx521.pojo.Page;
import cn.cwx521.pojo.PageExample;
import cn.cwx521.service.PageService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class PageServiceImpl implements PageService {
    @Autowired
    private PageMapper pageMapper;

    @Override
    public int insertPage(Page page) {
        page.setGood(0);
        return pageMapper.insert(page);
    }

    @Override
    public YinHeResult deletePageBypid(String ids) {
        String[] idArray = ids.split(",");
        List<Integer> idList = new ArrayList<Integer>(10);
        for (String s : idArray) {
            idList.add(Integer.valueOf(s));
            pageMapper.deletePageByPid(s);
        }


        return YinHeResult.ok();
    }

    @Override
    public EasyUIDataGridResult pagelist(int page, int rows) {
        PageHelper.startPage(page, rows);
        PageExample pageExample = new PageExample();
        List<Page> list = pageMapper.selectByExample(pageExample);
        PageInfo<Page> pageInfo = new PageInfo<Page>(list);
        return new EasyUIDataGridResult(pageInfo.getTotal(), list);
    }

    @Override
    public YinHeResult jjPageBypid(String ids) {

        String[] idArray = ids.split(",");
        List<Integer> idList = new ArrayList<Integer>(10);
        for (String s : idArray) {
            idList.add(Integer.valueOf(s));
            pageMapper.jjupdateBypid(s);
        }
        return YinHeResult.ok();
    }

    @Override
    public YinHeResult qxPageBypid(String ids) {
        String[] idArray = ids.split(",");
        List<Integer> idList = new ArrayList<Integer>(10);
        for (String s : idArray) {
            idList.add(Integer.valueOf(s));
            pageMapper.qxupdateBypid(s);
        }
        return YinHeResult.ok();
    }

    @Override
    public EasyUIDataGridResult upagelist(int page, int rows) {

        PageHelper.startPage(page, rows);
        List<Page> list = pageMapper.selectByGoog();
        PageInfo<Page> pageInfo = new PageInfo<Page>(list);
        return new EasyUIDataGridResult(pageInfo.getTotal(), list);
    }
}
