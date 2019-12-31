package cn.service.impl;

import cn.entity.Film;
import cn.entity.FilmImg;
import cn.mapper.FilmImgMapper;
import cn.service.FilmImgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Service
public class FilmImgServiceImpl implements FilmImgService {

    @Autowired
    private FilmImgMapper filmImgMapper;

    @Override
    public void add(FilmImg record) {
        filmImgMapper.insert(record);
    }

    @Override
    public void addSelective(FilmImg record) {
        filmImgMapper.insertSelective(record);
    }

    //根据fId查询图集
    @Override
    public List<FilmImg> queryByFilmId(Integer fId) {
        return filmImgMapper.selectByFilmId(fId);
    }

    //删除图片
    @Override
    public void removeById(Integer id) {
        filmImgMapper.deleteByPrimaryKey(id);
    }
}
