package cn.mapper;

import cn.entity.Film;
import org.apache.ibatis.annotations.Param;

import javax.xml.crypto.Data;
import java.util.Date;
import java.util.List;

public interface FilmMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Film record);

    int insertSelective(Film record);

    Film selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Film record);

    int updateByPrimaryKey(Film record);

    Film selectByName(String name);

    List<Film> selectAll();
    List<Film> selectAllfilm();

    List<Film> selectByType(String type);

    List<Film> selectByArea(String area);

    List<Film> selectByShowTime();

    List<Film> selectByLessTime();

    List<Film> selectByOffice();

    List<Film> selectByOffice_100();

    List<Film> selectByExpect();

    List<Film> selectByScore();

    List<Film> selectByCondition(String type,String area,String time);
    //动态查询电影信息（电影名，电影类型，电影状态）
    List<Film> selectByCondition2(@Param("filmname") String filmname, @Param("filmtype") String filmtype, @Param("state") Integer state);
}