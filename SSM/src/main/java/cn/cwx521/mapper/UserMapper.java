package cn.cwx521.mapper;

import cn.cwx521.pojo.User;
import cn.cwx521.pojo.UserExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    int countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int insert(User user);

    int insertSelective(User record);

    User selectUser(User user);

    List<User> selectByExample(UserExample example);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    String vailUser(String username);

    int updateByUserName(User user);
}