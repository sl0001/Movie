package cn.entity;

import java.util.Date;

public class Actor {
    private Integer id;

    private String actorname;

    private String actorsex;

    private String address;

    private Date born;

    public Actor(Integer id, String actorname, String actorsex, String address, Date born) {
        this.id = id;
        this.actorname = actorname;
        this.actorsex = actorsex;
        this.address = address;
        this.born = born;
    }

    public Actor() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getActorname() {
        return actorname;
    }

    public void setActorname(String actorname) {
        this.actorname = actorname == null ? null : actorname.trim();
    }

    public String getActorsex() {
        return actorsex;
    }

    public void setActorsex(String actorsex) {
        this.actorsex = actorsex == null ? null : actorsex.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Date getBorn() {
        return born;
    }

    public void setBorn(Date born) {
        this.born = born;
    }
}