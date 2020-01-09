package cn.mapper;

import cn.entity.CinemaBand;

import java.util.List;


public interface CinemaBandMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CinemaBand record);

    int insertSelective(CinemaBand record);

    CinemaBand selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CinemaBand record);

    int updateByPrimaryKey(CinemaBand record);

    List<CinemaBand> selectAll();

    List<CinemaBand> selectByAddressId(Integer id);
}