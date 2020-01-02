package cn.mapper;

import cn.entity.ActorByFilm;
import cn.entity.ActorFilm;

import java.util.List;

public interface ActorByFilmMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ActorByFilm record);

    int insertSelective(ActorByFilm record);

    ActorByFilm selectByPrimaryKey(Integer id);

    List<ActorByFilm> selectByFilmId(Integer filmId);

    int updateByPrimaryKeySelective(ActorByFilm record);

    int updateByPrimaryKey(ActorByFilm record);
}