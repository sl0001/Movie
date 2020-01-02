package cn.entity;

public class ActorByFilm {
    private Integer id;

    private Integer actorid;

    private Integer filmid;

    public ActorByFilm(Integer id, Integer actorid, Integer filmid) {
        this.id = id;
        this.actorid = actorid;
        this.filmid = filmid;
    }

    public ActorByFilm() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getActorid() {
        return actorid;
    }

    public void setActorid(Integer actorid) {
        this.actorid = actorid;
    }

    public Integer getFilmid() {
        return filmid;
    }

    public void setFilmid(Integer filmid) {
        this.filmid = filmid;
    }
}