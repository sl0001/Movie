package cn.mapper;

import cn.entity.Address;

import java.util.List;

public interface AddressMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Address record);

    int insertSelective(Address record);

    Address selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Address record);

    int updateByPrimaryKey(Address record);

    //根据父级id查询信息
    List<Address> selelctByParansId(Integer id);

    List<Address> selectAllParents();
}