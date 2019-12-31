package cn.entity;

public class FilmImg {
    private Integer id;

    private String filmimgurl;

    private Integer filmid;

    public FilmImg(Integer id, String filmimgurl, Integer filmid) {
        this.id = id;
        this.filmimgurl = filmimgurl;
        this.filmid = filmid;
    }

    public FilmImg() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFilmimgurl() {
        return filmimgurl;
    }

    public void setFilmimgurl(String filmimgurl) {
        this.filmimgurl = filmimgurl == null ? null : filmimgurl.trim();
    }

    public Integer getFilmid() {
        return filmid;
    }

    public void setFilmid(Integer filmid) {
        this.filmid = filmid;
    }
}