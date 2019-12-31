package cn.test;

import cn.entity.Order;
import cn.entity.OrderItem;
import cn.service.UserService;
import cn.utils.NumberUtil;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MovieTest {
    @Autowired
    private UserService us;
    @Test
    public void testUserSelect() throws Exception{

        ApplicationContext ac = new ClassPathXmlApplicationContext("beans.xml");
        us = ac.getBean(UserService.class);
        Integer uid = 1;
        Integer rid = 2;
        Integer seatNum = 2;
        String seatInfo = "三排一号，三排二号";
        BigDecimal price = BigDecimal.valueOf(58.5);
        Integer status = 2;
        Date buyTime = new Date();
        String phone = "18878944578";
        String orderNum = NumberUtil.createCodeNum();
        Order order = new Order(uid,rid,seatNum,seatInfo,price,status,buyTime,phone,orderNum);
        us.addOrder(order);
        List<OrderItem> itemList = new ArrayList<OrderItem>();
        OrderItem orderItem1 = new OrderItem(order.getId(),"一号厅","三排四座","光合影城","3-4");
        OrderItem orderItem2 = new OrderItem(order.getId(),"一号厅","三排五座","光合影城","3-5");
        itemList.add(orderItem1);
        itemList.add(orderItem2);
        for (OrderItem o:itemList) {
            us.addOrderItem(o);
        }

    }
    @Test
    public void testGetOrder() throws Exception{
        ApplicationContext ac = new ClassPathXmlApplicationContext("beans.xml");
        us = ac.getBean(UserService.class);
        Order order = us.getOrderByOrderId(1);
        System.out.println(order);
    }
}
