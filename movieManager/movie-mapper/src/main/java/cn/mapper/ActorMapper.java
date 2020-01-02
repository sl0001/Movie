package cn.mapper;

import cn.entity.Actor;

import java.util.List;

public interface ActorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Actor record);

    int insertSelective(Actor record);

    Actor selectByPrimaryKey(Integer id);

    List<Actor> selectByIds(List<Integer> ids);

    int updateByPrimaryKeySelective(Actor record);

    int updateByPrimaryKey(Actor record);
}