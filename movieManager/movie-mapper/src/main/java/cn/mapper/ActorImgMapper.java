package cn.mapper;

import cn.entity.ActorImg;

public interface ActorImgMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ActorImg record);

    int insertSelective(ActorImg record);

    ActorImg selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ActorImg record);

    int updateByPrimaryKey(ActorImg record);
}