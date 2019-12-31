package cn.entity;

public class ActorImg {
    private Integer id;

    private String imgurl;

    private Integer aid;

    public ActorImg(Integer id, String imgurl, Integer aid) {
        this.id = id;
        this.imgurl = imgurl;
        this.aid = aid;
    }

    public ActorImg() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl == null ? null : imgurl.trim();
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }
}