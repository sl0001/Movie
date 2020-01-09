package cn.controller;

import cn.entity.*;
import cn.service.ActorService;
import cn.service.AddressService;
import cn.service.CinemaService;
import cn.service.FilmService;
import cn.utils.DateUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping(value = "/film")
@SessionAttributes(value =
            {"showTimes","lessTimes","offices","expects","scores","filmON","records","cinemaId","addressList"})
public class FilmController {

    @Autowired
    private FilmService filmService;
    @Autowired
    private CinemaService cinemaService;
    @Autowired
    private ActorService actorService;
    @Autowired
    private AddressService addressService;
    //查看一部电影的详细信息（图集，演员。。。）
    @RequestMapping("/filmInfo")
    public String filmInfo(Model model,String filmName){
        Film film=filmService.getFilmByName(filmName);
        model.addAttribute("filmON",film);
        String time = DateUtil.getNowFormat(film.getShowtime());
        model.addAttribute("showTime",time);
        List<Cinema> cinemas = cinemaService.getAllCinema();
        model.addAttribute("cinemas",cinemas);
        return "Filminfo";
    }
    //d
    @RequestMapping("/cinemaInfo")
    public String cinemaInfo(Model model){
        List<Cinema> cinemas = cinemaService.getAllCinema();
        model.addAttribute("cinemas",cinemas);
        List<Address> addressParents = addressService.getAllParents();
        model.addAttribute("addressList",addressParents);
        return "ChooseCinema";
    }
    @RequestMapping("/recordInfo")
    public String recordInfo(Integer cinemaId, Model model, HttpSession session){
        Film film = (Film) session.getAttribute("filmON");
        Integer filmId = film.getId();
        List<Record> records = cinemaService.getByInfo(filmId,cinemaId,null);
        Cinema cinema = cinemaService.getById(cinemaId);
        List<ActorByFilm> afs = actorService.getByFilmId(filmId);
        if(afs.size()>0){
            List<Integer> ids = new ArrayList<Integer>();
            for (ActorByFilm actorByFilm:afs) {
                ids.add(actorByFilm.getActorid());
            }
            List<Actor> actors = actorService.getByIds(ids);
            model.addAttribute("actors",actors);
        }
        model.addAttribute("records",records);
        model.addAttribute("cinemaId",cinemaId);
        model.addAttribute("cinema",cinema);
        return "CinemaInfo";
    }

    @RequestMapping("/main")
    public String getMain(Model model){
        List<Film> showTimes = filmService.getFilmByShowTime();
        model.addAttribute("showTimes",showTimes);
        List<Film> lessTimes = filmService.getFilmByLessTime();
        model.addAttribute("lessTimes",lessTimes);
        List<Film> offices = filmService.getByOffice();
        model.addAttribute("offices",offices);
        List<Film> expects = filmService.getByExpect();
        model.addAttribute("expects",expects);
        List<Film> scores = filmService.getByScore();
        model.addAttribute("scores",scores);
        return "FilmMain";
    }

    public void getFilmAll(String type,String area,String date){
        List<Film> films = filmService.getFilmByCondition(type, area, date);
    }

    //后台查询页面 查询所有
    @RequestMapping("/allFilms")
    @ResponseBody
    public List<Film> allFilms(){
        List<Film> allFilm=filmService.getAllFilms();
        List<Film> films =new ArrayList<Film>();
        for (Film film:allFilm){
            SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd" );
            String time=sdf.format(film.getShowtime());
            film.setTime(time);
            films.add(film);
        }
        return films;
    }
    //后台查询
    @RequestMapping("/filmsByCondition2")
    @ResponseBody
    public List<Film> getFilmsByCondition2(String filmname, String filmtype, Integer state){
        System.out.println(filmname);
        System.out.println(filmtype);
        System.out.println(state);
        List<Film> selectfilms=filmService.queryByCondition2(filmname,filmtype,state);
        List<Film> films =new ArrayList<Film>();
        for (Film film:selectfilms){
            SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd" );
            String time=sdf.format(film.getShowtime());
            film.setTime(time);
            films.add(film);
        }
        return films;
    }

    @RequestMapping("/addFilm")
    public String addFilm(Film film) throws ParseException {
        String time= film.getTime();
        SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd" );
        Date showtime=sdf.parse(time);
        film.setShowtime(showtime);
        filmService.addFilm(film);
        return "FilmBackstage";
    }







}
