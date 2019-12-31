package cn.mapper;

import cn.entity.ActorFilm;

public interface ActorFilmMapper {
    public int deleteByPrimaryKey(Integer id);

    public int insert(ActorFilm record);

    public int insertSelective(ActorFilm record);

    public ActorFilm selectByPrimaryKey(Integer id);

    public int updateByPrimaryKeySelective(ActorFilm record);

    public int updateByPrimaryKey(ActorFilm record);
}