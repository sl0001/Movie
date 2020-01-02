package cn.entity;

public class Room {
    private Integer id;

    private String roomname;

    private String seatfound;

    private String roomtype;

    private Integer seatnum;

    private Integer cinemaid;

    public Room(Integer id, String roomname, String seatfound, String roomtype, Integer seatnum, Integer cinemaid) {
        this.id = id;
        this.roomname = roomname;
        this.seatfound = seatfound;
        this.roomtype = roomtype;
        this.seatnum = seatnum;
        this.cinemaid = cinemaid;
    }

    public Room() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRoomname() {
        return roomname;
    }

    public void setRoomname(String roomname) {
        this.roomname = roomname == null ? null : roomname.trim();
    }

    public String getSeatfound() {
        return seatfound;
    }

    public void setSeatfound(String seatfound) {
        this.seatfound = seatfound == null ? null : seatfound.trim();
    }

    public String getRoomtype() {
        return roomtype;
    }

    public void setRoomtype(String roomtype) {
        this.roomtype = roomtype == null ? null : roomtype.trim();
    }

    public Integer getSeatnum() {
        return seatnum;
    }

    public void setSeatnum(Integer seatnum) {
        this.seatnum = seatnum;
    }

    public Integer getCinemaid() {
        return cinemaid;
    }

    public void setCinemaid(Integer cinemaid) {
        this.cinemaid = cinemaid;
    }
}