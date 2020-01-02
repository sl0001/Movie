package cn.entity;

public class OrderItem {
    private Integer id;

    private Integer oid;

    private String roomname;

    private String ticketinfo;

    private String cinemaname;

    private String seatinfo;

    public OrderItem(Integer id, Integer oid, String roomname, String ticketinfo, String cinemaname, String seatinfo) {
        this.id = id;
        this.oid = oid;
        this.roomname = roomname;
        this.ticketinfo = ticketinfo;
        this.cinemaname = cinemaname;
        this.seatinfo = seatinfo;
    }

    public OrderItem(Integer id, Integer oid, String roomname, String ticketinfo, String cinemaname, String seatinfo, Order order) {
        this.id = id;
        this.oid = oid;
        this.roomname = roomname;
        this.ticketinfo = ticketinfo;
        this.cinemaname = cinemaname;
        this.seatinfo = seatinfo;
    }

    public OrderItem(Integer oid, String roomname, String ticketinfo, String cinemaname, String seatinfo) {
        this.oid = oid;
        this.roomname = roomname;
        this.ticketinfo = ticketinfo;
        this.cinemaname = cinemaname;
        this.seatinfo = seatinfo;
    }

    public OrderItem() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public String getRoomname() {
        return roomname;
    }

    public void setRoomname(String roomname) {
        this.roomname = roomname == null ? null : roomname.trim();
    }

    public String getTicketinfo() {
        return ticketinfo;
    }

    public void setTicketinfo(String ticketinfo) {
        this.ticketinfo = ticketinfo == null ? null : ticketinfo.trim();
    }

    public String getCinemaname() {
        return cinemaname;
    }

    public void setCinemaname(String cinemaname) {
        this.cinemaname = cinemaname == null ? null : cinemaname.trim();
    }

    public String getSeatinfo() {
        return seatinfo;
    }

    public void setSeatinfo(String seatinfo) {
        this.seatinfo = seatinfo == null ? null : seatinfo.trim();
    }


    @Override
    public String toString() {
        return "OrderItem{" +
                "id=" + id +
                ", oid=" + oid +
                ", roomname='" + roomname + '\'' +
                ", ticketinfo='" + ticketinfo + '\'' +
                ", cinemaname='" + cinemaname + '\'' +
                ", seatinfo='" + seatinfo + '\'' +
                '}';
    }
}