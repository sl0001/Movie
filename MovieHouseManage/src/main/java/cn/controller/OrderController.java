package cn.controller;

import cn.entity.Cinema;
import cn.entity.Film;
import cn.entity.Record;
import cn.entity.Room;
import cn.mapper.RoomMapper;
import cn.service.CinemaService;
import cn.service.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/order")
@SessionAttributes(value = {"filmON","cinemas","rooms","cinemaId","records","roomId","film","cinema","room","record","time"})
public class OrderController {

    @Autowired
    private CinemaService cinemaService;
    @Autowired
    private FilmService filmService;

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

        model.addAttribute("film",film);
        model.addAttribute("cinema",cinema);
        model.addAttribute("room",room);
        model.addAttribute("record",record);
        model.addAttribute("time",time);
        return "SeatNumber";
    }
}
