package cn.service.impl;

import cn.entity.Film;
import cn.mapper.FilmMapper;
import cn.service.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.crypto.Data;
import java.util.Date;
import java.util.List;
@Service
public class FilmServiceImpl implements FilmService {
    @Autowired
    private FilmMapper filmMapper;

    @Override
    public Integer addFilm(Film film) {
        return filmMapper.insertSelective(film);
    }

    @Override
    public List<Film> getAllFilm() {
        return filmMapper.selectAll();
    }

    //后台查询全部信息
    @Override
    public List<Film> getAllFilms() {
        return filmMapper.selectAllfilm();
    }

    @Override
    public Film getFilmByName(String name) {
        return filmMapper.selectByName(name);
    }

    @Override
    public List<Film> getFilmByType(String type) {
        return filmMapper.selectByType(type);
    }

    @Override
    public List<Film> getFilmByArea(String area) {
        return filmMapper.selectByArea(area);
    }

    @Override
    public List<Film> getFilmByShowTime() {
        return filmMapper.selectByShowTime();
    }

    @Override
    public List<Film> getFilmByLessTime() {
        return filmMapper.selectByLessTime();
    }

    @Override
    public List<Film> getByOffice() {
        return filmMapper.selectByOffice();
    }

    @Override
    public List<Film> getByOffice_100() {
        return filmMapper.selectByOffice_100();
    }

    @Override
    public List<Film> getByExpect() {
        return filmMapper.selectByExpect();
    }

    @Override
    public List<Film> getByScore() {
        return filmMapper.selectByScore();
    }

    @Override
    public List<Film> getFilmByCondition(String type, String area, String time) {
        return filmMapper.selectByCondition(type,area,time);
    }

    @Override
    public List<Film> queryByCondition2(String filmname,String filmtype,Integer state) {
        return filmMapper.selectByCondition2(filmname,filmtype,state);
    }
}
