package com.sen.hebeu.mapper;

import java.util.List;

import com.sen.hebeu.pojo.TbAcademy;
import com.sen.hebeu.pojo.TbAcademyExample;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface TbAcademyMapper {
    int countByExample(TbAcademyExample example);

    int deleteByExample(TbAcademyExample example);

    int deleteByPrimaryKey(Integer academyId);

    int insert(TbAcademy record);

    int insertSelective(TbAcademy record);

    List<TbAcademy> selectByExample(TbAcademyExample example);

    TbAcademy selectByPrimaryKey(Integer academyId);

    int updateByExampleSelective(@Param("record") TbAcademy record, @Param("example") TbAcademyExample example);

    int updateByExample(@Param("record") TbAcademy record, @Param("example") TbAcademyExample example);

    int updateByPrimaryKeySelective(TbAcademy record);

    int updateByPrimaryKey(TbAcademy record);
}