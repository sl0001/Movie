package cn.entity;

public class CinemaBand {
    private Integer id;

    private String name;

    private Integer addressid;

    public CinemaBand(Integer id, String name, Integer addressid) {
        this.id = id;
        this.name = name;
        this.addressid = addressid;
    }

    public CinemaBand() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getAddressid() {
        return addressid;
    }

    public void setAddressid(Integer addressid) {
        this.addressid = addressid;
    }
}