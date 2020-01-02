package cn.mapper;

import cn.entity.FilmImg;

import java.util.List;

public interface FilmImgMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FilmImg record);

    int insertSelective(FilmImg record);

    FilmImg selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FilmImg record);

    int updateByPrimaryKey(FilmImg record);

    List<FilmImg> selectByFilmId(Integer filmId);
}