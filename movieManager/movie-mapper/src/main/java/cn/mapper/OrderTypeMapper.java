package cn.mapper;

import cn.entity.OrderType;

public interface OrderTypeMapper {
    public int deleteByPrimaryKey(Integer otId);

    public int insert(OrderType record);

    public int insertSelective(OrderType record);

    public OrderType selectByPrimaryKey(Integer otId);

    public int updateByPrimaryKeySelective(OrderType record);

    public int updateByPrimaryKey(OrderType record);
}