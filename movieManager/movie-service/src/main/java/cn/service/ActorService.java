package cn.service;

import cn.entity.Actor;
import cn.entity.ActorByFilm;

import java.util.List;

public interface ActorService {

    //根据主键id删除
    public int removeByPrimaryKey(Integer aId);

    //新增一条数据
    public int add(Actor record);

    //新增数据（部分信息）
    public int addSelective(Actor record);

    //根据主键id查询
    public Actor queryByPrimaryKey(Integer aId);

    //根据主键id更新部分信息
    public int changeByPrimaryKeySelective(Actor record);

    //根据主键id更新整条信息
    public int changeByPrimaryKey(Actor record);



    List<ActorByFilm> getByFilmId(Integer filmId);

    List<Actor> getByIds(List<Integer> ids);
}
