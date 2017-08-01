package cn.cwx521.service.imp;

import cn.cwx521.common.YinHeResult;
import cn.cwx521.mapper.AdminMapper;
import cn.cwx521.mapper.PageMapper;
import cn.cwx521.mapper.UserMapper;
import cn.cwx521.pojo.*;
import cn.cwx521.service.AdminService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;


    @Override
    public Admin vailUser(Admin admin) {

        return adminMapper.selectAdmin(admin);
    }
}
