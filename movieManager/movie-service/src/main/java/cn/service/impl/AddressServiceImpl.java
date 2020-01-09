package cn.service.impl;

import cn.entity.Address;
import cn.mapper.AddressMapper;
import cn.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service()
public class AddressServiceImpl implements AddressService {

    @Autowired
    private AddressMapper addressMapper;
    @Override
    public List<Address> selelctByParansId(Integer id) {
        return  addressMapper.selelctByParansId(id);
    }

    @Override
    public List<Address> getAllParents() {
        return addressMapper.selectAllParents();
    }

    @Override
    public Address getAddressById(Integer id) {
        return addressMapper.selectByPrimaryKey(id);
    }
}
