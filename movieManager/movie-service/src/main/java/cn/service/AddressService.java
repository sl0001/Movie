package cn.service;

import cn.entity.Address;

import java.util.List;

public interface AddressService {
    //查询父级id查询地区
    public List<Address> selelctByParansId(Integer id);
    //查询所有父级地区
    List<Address> getAllParents();

    Address getAddressById(Integer id);
}
