package cn.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Film {
    private Integer id;

    private String filmname;

    private String filmtype;

    private String filmarea;

    private Date showtime;

    private Integer duration;

    private String posterurl;

    private String filmintro;

    private String language;

    private BigDecimal boxoffice;

    private BigDecimal filmscore;

    private BigDecimal expect;

    private Integer state;

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    private String time;

    public Film(Integer id, String filmname, String filmtype, String filmarea, Date showtime, Integer duration, String posterurl, String filmintro, String language, BigDecimal boxoffice, BigDecimal filmscore, BigDecimal expect,Integer state ) {
        this.id = id;
        this.filmname = filmname;
        this.filmtype = filmtype;
        this.filmarea = filmarea;
        this.showtime = showtime;
        this.duration = duration;
        this.posterurl = posterurl;
        this.filmintro = filmintro;
        this.language = language;
        this.boxoffice = boxoffice;
        this.filmscore = filmscore;
        this.expect = expect;
        this.state = state;
    }

    public Film(String filmname, String filmtype, String filmarea, Date showtime, Integer duration, String posterurl, String filmintro, String language, BigDecimal boxoffice, BigDecimal filmscore, BigDecimal expect, Integer state, String time) {
        this.filmname = filmname;
        this.filmtype = filmtype;
        this.filmarea = filmarea;
        this.showtime = showtime;
        this.duration = duration;
        this.posterurl = posterurl;
        this.filmintro = filmintro;
        this.language = language;
        this.boxoffice = boxoffice;
        this.filmscore = filmscore;
        this.expect = expect;
        this.state = state;
        this.time = time;
    }

    public Film() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFilmname() {
        return filmname;
    }

    public void setFilmname(String filmname) {
        this.filmname = filmname == null ? null : filmname.trim();
    }

    public String getFilmtype() {
        return filmtype;
    }

    public void setFilmtype(String filmtype) {
        this.filmtype = filmtype == null ? null : filmtype.trim();
    }

    public String getFilmarea() {
        return filmarea;
    }

    public void setFilmarea(String filmarea) {
        this.filmarea = filmarea == null ? null : filmarea.trim();
    }

    public Date getShowtime() {
        return showtime;
    }

    public void setShowtime(Date showtime) {
        this.showtime = showtime;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public String getPosterurl() {
        return posterurl;
    }

    public void setPosterurl(String posterurl) {
        this.posterurl = posterurl == null ? null : posterurl.trim();
    }

    public String getFilmintro() {
        return filmintro;
    }

    public void setFilmintro(String filmintro) {
        this.filmintro = filmintro == null ? null : filmintro.trim();
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language == null ? null : language.trim();
    }

    public BigDecimal getBoxoffice() {
        return boxoffice;
    }

    public void setBoxoffice(BigDecimal boxoffice) {
        this.boxoffice = boxoffice;
    }

    public BigDecimal getFilmscore() {
        return filmscore;
    }

    public void setFilmscore(BigDecimal filmscore) {
        this.filmscore = filmscore;
    }

    public BigDecimal getExpect() {
        return expect;
    }

    public void setExpect(BigDecimal expect) {
        this.expect = expect;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}