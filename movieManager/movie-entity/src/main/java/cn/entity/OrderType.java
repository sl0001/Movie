package cn.entity;

/**
 * 订单状态类型
 */
public class OrderType {
    private Integer otId;//订单状态编号

    private String typename;//状态信息

    public OrderType(Integer otId, String typename) {
        this.otId = otId;
        this.typename = typename;
    }

    public OrderType() {
        super();
    }

    public Integer getOtId() {
        return otId;
    }

    public void setOtId(Integer otId) {
        this.otId = otId;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename == null ? null : typename.trim();
    }
}