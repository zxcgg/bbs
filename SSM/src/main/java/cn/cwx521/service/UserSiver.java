package cn.cwx521.service;

import cn.cwx521.common.YinHeResult;
import cn.cwx521.pojo.EasyUIDataGridResult;
import cn.cwx521.pojo.User;

/**
 * Created by zxc on 2017/7/19.
 */
public interface UserSiver {
    boolean insertUser(User user);

    User selectUser(User user);

    EasyUIDataGridResult getUsers(int pageNum, int pageSize);

    YinHeResult deleteUserByname(String ids);

    String userVail(String username);

    int updateByUserName(User user);
}
