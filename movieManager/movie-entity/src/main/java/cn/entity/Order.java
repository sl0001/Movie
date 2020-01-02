package cn.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public class Order {
    private Integer id;

    private Integer userid;

    private Integer recordid;

    private Integer seatnum;

    private String seatinfo;

    private BigDecimal money;

    private Integer status;

    private Date buytime;

    private String phone;

    private String orderNum;

    private List<OrderItem> itemList;

    public Order(Integer id, Integer userid, Integer recordid, Integer seatnum, String seatinfo, BigDecimal money, Integer status, Date buytime, String phone, String orderNum) {
        this.id = id;
        this.userid = userid;
        this.recordid = recordid;
        this.seatnum = seatnum;
        this.seatinfo = seatinfo;
        this.money = money;
        this.status = status;
        this.buytime = buytime;
        this.phone = phone;
        this.orderNum = orderNum;
    }



    public Order(Integer id, Integer userid, Integer recordid, Integer seatnum, String seatinfo, BigDecimal money, Integer status, Date buytime, String phone , String orderNum, List<OrderItem> itemList) {
        this.id = id;
        this.userid = userid;
        this.recordid = recordid;
        this.seatnum = seatnum;
        this.seatinfo = seatinfo;
        this.money = money;
        this.status = status;
        this.buytime = buytime;
        this.phone = phone;
        this.orderNum = orderNum;
        this.itemList = itemList;
    }

    public Order(Integer userid, Integer recordid, Integer seatnum, String seatinfo, BigDecimal money, Integer status, Date buytime, String phone, String orderNum) {
        this.userid = userid;
        this.recordid = recordid;
        this.seatnum = seatnum;
        this.seatinfo = seatinfo;
        this.money = money;
        this.status = status;
        this.buytime = buytime;
        this.phone = phone;
        this.orderNum = orderNum;
    }

    public Order() {
        super();
    }



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getRecordid() {
        return recordid;
    }

    public void setRecordid(Integer recordid) {
        this.recordid = recordid;
    }

    public Integer getSeatnum() {
        return seatnum;
    }

    public void setSeatnum(Integer seatnum) {
        this.seatnum = seatnum;
    }

    public String getSeatinfo() {
        return seatinfo;
    }

    public void setSeatinfo(String seatinfo) {
        this.seatinfo = seatinfo == null ? null : seatinfo.trim();
    }

    public BigDecimal getMoney() {
        return money;
    }

    public void setMoney(BigDecimal money) {
        this.money = money;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getBuytime() {
        return buytime;
    }

    public void setBuytime(Date buytime) {
        this.buytime = buytime;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    public List<OrderItem> getItemList() {
        return itemList;
    }

    public void setItemList(List<OrderItem> itemList) {
        this.itemList = itemList;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", userid=" + userid +
                ", recordid=" + recordid +
                ", seatnum=" + seatnum +
                ", seatinfo='" + seatinfo + '\'' +
                ", money=" + money +
                ", status=" + status +
                ", buytime=" + buytime +
                ", phone='" + phone + '\'' +
                ", orderNum='" + orderNum + '\'' +
                ", itemList=" + itemList +
                '}';
    }
}