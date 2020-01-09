package cn.service;

import cn.entity.FilmImg;

import java.util.List;

public interface FilmImgService {

    public void add(FilmImg record);

    public void addSelective(FilmImg record);

    //根据id查询电影图集
    public List<FilmImg> queryByFilmId(Integer fId);

    //删除图片
    public void removeById(Integer id);
}
