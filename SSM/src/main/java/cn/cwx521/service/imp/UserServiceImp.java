package cn.cwx521.service.imp;

import cn.cwx521.common.YinHeResult;
import cn.cwx521.mapper.UserMapper;
import cn.cwx521.pojo.EasyUIDataGridResult;
import cn.cwx521.pojo.User;
import cn.cwx521.pojo.UserExample;
import cn.cwx521.service.UserSiver;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by zxc on 2017/7/19.
 */
@Service
public class UserServiceImp implements UserSiver {
    @Autowired
    private UserMapper userMapper;

    @Override
    public boolean insertUser(User user) {
        try {
            if (userMapper.insert(user) != 0) {
                return true;
            }
        } catch (Exception e) {
            return false;
        }

        return false;
    }

    @Override
    public User selectUser(User user) {
        return userMapper.selectUser(user);
    }

    @Override
    public EasyUIDataGridResult getUsers(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);//分助手 获取页码等
        //开始查询
        UserExample userExample = new UserExample();
        List<User> list = userMapper.selectByExample(userExample);
        //分页处理
        PageInfo<User> pageInfo = new PageInfo<User>(list);//获取到userList 然后交给分页助手处理
        EasyUIDataGridResult result = new EasyUIDataGridResult(pageInfo.getTotal(), list);//将结果返回
        return result;
    }

    @Override
    public YinHeResult deleteUserByname(String ids) {
        String[] idArray = ids.split(",");
        List<String> idList = new ArrayList<String>(10);
        for (String s : idArray) {
            idList.add(s);
        }
        UserExample example = new UserExample();
        example.createCriteria().andUsernameIn(idList);
       if (userMapper.deleteByExample(example)!=1){
           return YinHeResult.build(0,"失败");
       }
         return YinHeResult.build(200,"删除成功");
    }

    @Override
    public String userVail(String username) {
        return userMapper.vailUser(username);
    }

    @Override
    public int updateByUserName(User user) {
        return userMapper.updateByUserName(user);
    }


}
