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

    List<Cinema> selectByName(@Param("name") String name, @Param("addressId") Integer addressId);

    List<Cinema> selectByAddressId(Integer addressId);
}