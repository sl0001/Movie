package cn.mapper;

import cn.entity.Actor;

import java.util.List;

public interface ActorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Actor record);

    int insertSelective(Actor record);

    Actor selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Actor record);

    int updateByPrimaryKey(Actor record);

    //前台查询演员图集列表
    List<Actor> selectByIds(List<Integer> ids);

}