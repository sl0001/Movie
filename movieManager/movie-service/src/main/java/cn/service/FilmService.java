package cn.service;

import cn.entity.ActorByFilm;
import cn.entity.Film;

import javax.xml.crypto.Data;
import java.util.Date;
import java.util.List;

public interface FilmService {



    List<Film> getAllFilm();
    //后台查询全部信息
    List<Film> getAllFilms();

    Film getFilmByName(String name);

    List<Film> getFilmByType(String type);

    List<Film> getFilmByArea(String area);

    List<Film> getFilmByShowTime();

    List<Film> getFilmByLessTime();

    List<Film> getByOffice();

    List<Film> getByOffice_100();

    List<Film> getByExpect();

    List<Film> getByScore();

    List<Film> getFilmByCondition(String type, String area, String time);
    //动态查询电影信息（电影名，电影类型，电影状态）
    List<Film> queryByCondition2(String filmname,String filmtype,Integer state);

}
