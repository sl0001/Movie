package cn.mapper;

import cn.entity.CinemaBand;

public interface CinemaBandMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CinemaBand record);

    int insertSelective(CinemaBand record);

    CinemaBand selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CinemaBand record);

    int updateByPrimaryKey(CinemaBand record);
}