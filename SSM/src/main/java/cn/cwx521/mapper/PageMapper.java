package cn.cwx521.mapper;

import cn.cwx521.pojo.Page;
import cn.cwx521.pojo.PageExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface PageMapper {
    int countByExample(PageExample example);

    int deleteByExample(PageExample example);

    int deleteByPrimaryKey(Integer pid);

    int insert(Page record);

    int insertSelective(Page record);

    List<Page> selectByExample(PageExample example);

    Page selectByPrimaryKey(Integer pid);

    int updateByExampleSelective(@Param("record") Page record, @Param("example") PageExample example);

    int updateByExample(@Param("record") Page record, @Param("example") PageExample example);

    int updateByPrimaryKeySelective(Page record);

    int updateByPrimaryKey(Page record);

    int jjupdateBypid(String ids);


    int deletePageByPid(String s);

    int qxupdateBypid(String s);

    List<Page> selectByGoog();
}