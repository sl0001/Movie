package cn.mapper;

import cn.entity.Cinema;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CinemaMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cinema record);

    int insertSelective(Cinema record);

    Cinema selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Cinema record);

    int updateByPrimaryKey(Cinema record);

    List<Cinema> selectAll();

    List<Cinema> selectByNameAddressId(@Param("name") String name, @Param("addressId") Integer addressId);
    //后台根据影院名称模糊查询信息
    List<Cinema> selectByName(String name);


    List<Cinema> selectByAddressId(Integer addressId);
}