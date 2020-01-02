package cn.entity;

import java.util.List;

public class Cinema {
    private Integer id;

    private String cinemaname;

    private String address;

    private String tel;

    private Integer addressid;

    private String intro;

    private String imgurl;

    private List<Room> rooms;


    public Cinema(Integer id, String cinemaname, String address, String tel, Integer addressid, String intro, String imgurl) {
        this.id = id;
        this.cinemaname = cinemaname;
        this.address = address;
        this.tel = tel;
        this.addressid = addressid;
        this.intro = intro;
        this.imgurl = imgurl;
    }

    public Cinema(Integer id, String cinemaname, String address, String tel, Integer addressid, String intro, String imgurl, List<Room> rooms) {
        this.id = id;
        this.cinemaname = cinemaname;
        this.address = address;
        this.tel = tel;
        this.addressid = addressid;
        this.intro = intro;
        this.imgurl = imgurl;
        this.rooms = rooms;
    }

    public Cinema() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCinemaname() {
        return cinemaname;
    }

    public void setCinemaname(String cinemaname) {
        this.cinemaname = cinemaname == null ? null : cinemaname.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public Integer getAddressid() {
        return addressid;
    }

    public void setAddressid(Integer addressid) {
        this.addressid = addressid;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro == null ? null : intro.trim();
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl == null ? null : imgurl.trim();
    }

    public List<Room> getRooms() {
        return rooms;
    }

    public void setRooms(List<Room> rooms) {
        this.rooms = rooms;
    }
}