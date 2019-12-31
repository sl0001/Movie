package cn.service.impl;

import cn.entity.Order;
import cn.entity.OrderItem;
import cn.entity.User;
import cn.mapper.OrderItemMapper;
import cn.mapper.OrderMapper;
import cn.mapper.UserMapper;
import cn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private OrderItemMapper orderItemMapper;

    @Override
    public List<User> getAllUsers() {
        return userMapper.selectAll();
    }

    @Override
    public Integer addUser(User user) {
        return userMapper.insertSelective(user);
    }

    @Override
    public User getByPhone(String phone) {
        return userMapper.selectByPhone(phone);
    }

    @Override
    public Integer addOrder(Order order) {
        return orderMapper.insertSelective(order);
    }

    @Override
    public Integer addOrderItem(OrderItem orderItem) {
        return orderItemMapper.insertSelective(orderItem);
    }

    @Override
    public Order getOrderByOrderId(Integer id) {
        return orderMapper.selectByPrimaryKey(id);
    }

}
