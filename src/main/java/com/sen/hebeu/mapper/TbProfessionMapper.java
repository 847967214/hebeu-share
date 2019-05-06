package com.sen.hebeu.mapper;

import java.util.List;

import com.sen.hebeu.pojo.TbProfession;
import com.sen.hebeu.pojo.TbProfessionExample;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface TbProfessionMapper {
    int countByExample(TbProfessionExample example);

    int deleteByExample(TbProfessionExample example);

    int deleteByPrimaryKey(Integer professionId);

    int insert(TbProfession record);

    int insertSelective(TbProfession record);

    List<TbProfession> selectByExample(TbProfessionExample example);

    TbProfession selectByPrimaryKey(Integer professionId);

    int updateByExampleSelective(@Param("record") TbProfession record, @Param("example") TbProfessionExample example);

    int updateByExample(@Param("record") TbProfession record, @Param("example") TbProfessionExample example);

    int updateByPrimaryKeySelective(TbProfession record);

    int updateByPrimaryKey(TbProfession record);
}