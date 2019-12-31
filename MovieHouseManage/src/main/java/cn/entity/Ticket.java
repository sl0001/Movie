package cn.entity;

public class Ticket {
    private Integer id;

    private String ordernum;

    private Integer rId;

    private String info;

    private Integer cId;

    private Order order;

    public Ticket(Integer id, String ordernum, Integer rId, String info, Integer cId) {
        this.id = id;
        this.ordernum = ordernum;
        this.rId = rId;
        this.info = info;
        this.cId = cId;
    }

    public Ticket(Integer id, String ordernum, Integer rId, String info, Integer cId, Order order) {
        this.id = id;
        this.ordernum = ordernum;
        this.rId = rId;
        this.info = info;
        this.cId = cId;
        this.order = order;
    }

    public Ticket() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrdernum() {
        return ordernum;
    }

    public void setOrdernum(String ordernum) {
        this.ordernum = ordernum == null ? null : ordernum.trim();
    }

    public Integer getrId() {
        return rId;
    }

    public void setrId(Integer rId) {
        this.rId = rId;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info == null ? null : info.trim();
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }
}