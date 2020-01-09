package cn.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Record {
    private Integer id;

    private Integer filmid;

    private Integer cinemaid;

    private Integer roomid;

    private Date starttime;

    private Date endtime;

    private Integer totalseat;

    private Integer sellnum;

    private BigDecimal profit;

    private Room room;

    public Record(Integer id, Integer filmid, Integer cinemaid, Integer roomid, Date starttime, Date endtime, Integer totalseat, Integer sellnum, BigDecimal profit) {
        this.id = id;
        this.filmid = filmid;
        this.cinemaid = cinemaid;
        this.roomid = roomid;
        this.starttime = starttime;
        this.endtime = endtime;
        this.totalseat = totalseat;
        this.sellnum = sellnum;
        this.profit = profit;
    }

    public Record(Integer id, Integer filmid, Integer cinemaid, Integer roomid, Date starttime, Date endtime, Integer totalseat, Integer sellnum, BigDecimal profit, Room room) {
        this.id = id;
        this.filmid = filmid;
        this.cinemaid = cinemaid;
        this.roomid = roomid;
        this.starttime = starttime;
        this.endtime = endtime;
        this.totalseat = totalseat;
        this.sellnum = sellnum;
        this.profit = profit;
        this.room = room;
    }

    public Record() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getFilmid() {
        return filmid;
    }

    public void setFilmid(Integer filmid) {
        this.filmid = filmid;
    }

    public Integer getCinemaid() {
        return cinemaid;
    }

    public void setCinemaid(Integer cinemaid) {
        this.cinemaid = cinemaid;
    }

    public Integer getRoomid() {
        return roomid;
    }

    public void setRoomid(Integer roomid) {
        this.roomid = roomid;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public Integer getTotalseat() {
        return totalseat;
    }

    public void setTotalseat(Integer totalseat) {
        this.totalseat = totalseat;
    }

    public Integer getSellnum() {
        return sellnum;
    }

    public void setSellnum(Integer sellnum) {
        this.sellnum = sellnum;
    }

    public BigDecimal getProfit() {
        return profit;
    }

    public void setProfit(BigDecimal profit) {
        this.profit = profit;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }
}