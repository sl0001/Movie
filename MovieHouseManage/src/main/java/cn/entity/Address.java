package cn.entity;

public class Address {
    private Integer id;

    private String address;

    private Integer parentid;

    public Address(Integer id, String address, Integer parentid) {
        this.id = id;
        this.address = address;
        this.parentid = parentid;
    }

    public Address() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Integer getParentid() {
        return parentid;
    }

    public void setParentid(Integer parentid) {
        this.parentid = parentid;
    }
}