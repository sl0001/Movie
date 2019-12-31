package cn.entity;

/**
 * 演员所参演电影Bean
 */
public class ActorFilm {
    private Integer id;//编号

    private Integer aId;//演员编号

    private Integer fId;//电影编号

    public ActorFilm(Integer id, Integer aId, Integer fId) {
        this.id = id;
        this.aId = aId;
        this.fId = fId;
    }

    public ActorFilm() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getaId() {
        return aId;
    }

    public void setaId(Integer aId) {
        this.aId = aId == null ? null : aId;
    }

    public Integer getfId() {
        return fId;
    }

    public void setfId(Integer fId) {
        this.fId = fId == null ? null : fId;
    }
}
