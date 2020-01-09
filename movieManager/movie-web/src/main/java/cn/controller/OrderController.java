package cn.controller;

import cn.entity.*;
import cn.mapper.RoomMapper;
import cn.service.CinemaService;
import cn.service.FilmService;
import cn.service.UserService;
import cn.utils.NumberUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.*;

@Controller
@RequestMapping("/order")
@SessionAttributes(value = {"filmON","cinemas","rooms","cinemaId","records","roomId","film","cinema","room","record","time","order","userUP"})
public class OrderController {

    @Autowired
    private CinemaService cinemaService;
    @Autowired
    private FilmService filmService;
    @Autowired
    private UserService us;

    //查看一部电影的详细信息（图集，演员。。。）
    @RequestMapping("/filmInfo")
    @ResponseBody
    public boolean filmInfo(Model model,String filmName){
        Film film=filmService.getFilmByName(filmName);
        model.addAttribute("filmON",film);
        List<Cinema> cinemas = cinemaService.getAllCinema();
        model.addAttribute("cinemas",cinemas);
        return true;
    }
    @RequestMapping("/getAllCinema")
    @ResponseBody
    public Boolean getAllCinema(Model model){
        List<Cinema> cinemas = cinemaService.getAllCinema();
        model.addAttribute("cinemas",cinemas);
        return true;
    }
    @RequestMapping("/getRoom")
    @ResponseBody
    public boolean getRoom(Integer cinemaId,Model model){
        List<Room> rooms = cinemaService.getAllRoomByCinemaId(cinemaId);
        model.addAttribute("rooms",rooms);
        model.addAttribute("cinemaId",cinemaId);
        return true;
    }

    @RequestMapping("/getRecord")
    @ResponseBody
    public boolean getRecord(Integer roomId, Model model, HttpSession session){
        Film film = (Film)session.getAttribute("filmON");
        Integer cinemaId = (Integer)session.getAttribute("cinemaId");
        Integer filmId = film.getId();
        List<Record> records = cinemaService.getByInfo(filmId,cinemaId,roomId);
        model.addAttribute("records",records);
        model.addAttribute("roomId",roomId);
        return true;
    }
    @RequestMapping("/buySeat")
    public String buySeat(Integer recordId,Integer roomId, Model model, HttpSession session) throws ServletException, IOException {
        Film film = (Film)session.getAttribute("FilmON");
        Integer cinemaId = (Integer)session.getAttribute("cinemaId");
        Cinema cinema = cinemaService.getById(cinemaId);
        Room room = cinemaService.getRoomById(roomId);
        Record record = cinemaService.getRecordById(recordId);
        Date date = record.getStarttime();
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        int month=cal.get(Calendar.MONTH);//获取月份
        int day=cal.get(Calendar.DATE);//获取日
        int hour=cal.get(Calendar.HOUR)+12;//小时
        int minute=cal.get(Calendar.MINUTE);//分
        String time = month+"月"+day+"日"+"  "+hour+":"+minute;
        session.removeAttribute("num");

        List<Order> list = us.getOIdsByRecordId(recordId);
        List<Integer> oIds = new ArrayList<Integer>();
        for (Order o:list) {
            oIds.add(o.getId());
        }
        if(oIds.size()>0){
        List<OrderItem> orderItems = us.getByOrderIds(oIds);
        List<String> seats = new ArrayList<String>();

        for (OrderItem oi:orderItems) {
            seats.add('"'+oi.getSeatinfo()+'"');
        }
        model.addAttribute("seats",seats);}
        model.addAttribute("film",film);
        model.addAttribute("cinema",cinema);
        model.addAttribute("room",room);
        model.addAttribute("record",record);
        model.addAttribute("time",time);
        return "SeatNumber";
    }

    @RequestMapping("/addOrder")
    @ResponseBody
    public boolean addOrder(String infos, String total, Model model, HttpSession session,
                            HttpServletResponse httpServletResponse) {
        User user = (User) session.getAttribute("userUP");
        Record record = (Record) session.getAttribute("record");
        Room room = (Room) session.getAttribute("room");
        Cinema cinema =(Cinema) session.getAttribute("cinema");
        Map<String,String> seats = (Map<String, String>) session.getAttribute("seats");
        Integer uid = user.getId();
        Integer rid = record.getId();
        Integer seatNum = seats.size();
        String seatInfo = infos;
        Double p = Double.parseDouble(total);
        BigDecimal price = BigDecimal.valueOf(p);
        Integer status = 2;
        Date buyTime = new Date();
        String phone = user.getPhone();
        String orderNum = NumberUtil.createCodeNum();
        Order order = new Order(uid,rid,seatNum,seatInfo,price,status,buyTime,phone,orderNum);
        us.addOrder(order);

        for (String key:seats.keySet()){
            String fistStr = seats.get(key).substring(0,1);
            String lastStr = seats.get(key).substring(seats.get(key).length()-1);
            String ticketInfo = fistStr+"排"+lastStr+"座";
            OrderItem orderItem = new OrderItem(order.getId(),room.getRoomname(),ticketInfo,cinema.getCinemaname(),seats.get(key));
            us.addOrderItem(orderItem);
        }
        Cookie cookie = new Cookie("orderId",order.getId().toString());
        Cookie cookie1 = new Cookie("userPhone",user.getPhone());
        cookie.setMaxAge(60*7);
        cookie1.setMaxAge(60*7);
        httpServletResponse.addCookie(cookie);
        httpServletResponse.addCookie(cookie1);
        model.addAttribute("order",order);
        return true;
    }
    @RequestMapping("/updateOrder")
    public void updateStatus(Model model, HttpServletRequest req){
        Cookie[] cookies = req.getCookies();
        String orderId = "";
        String userPhone = "";
        for (Cookie c:cookies) {
            if (c.getName().equals("orderId")){
                orderId = c.getValue();
            }
            if (c.getName().equals("userPhone")){
                userPhone = c.getValue();
            }
        }
        Order order = us.getOrderByOrderId(Integer.getInteger(orderId));
        User user = us.getByPhone(userPhone);
        order.setStatus(1);
        us.editOrderStatus(order);
        model.addAttribute("userUP",user);
    }
}
