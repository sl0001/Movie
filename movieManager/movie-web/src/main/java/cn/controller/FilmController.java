package cn.controller;

import cn.entity.*;
import cn.service.ActorService;
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
import java.util.*;

@Controller
@RequestMapping(value = "/film")
@SessionAttributes(value = {"showTimes","lessTimes","offices","expects","scores","filmON","records","cinemaId"})
public class FilmController {

    @Autowired
    private FilmService filmService;
    @Autowired
    private CinemaService cinemaService;
    @Autowired
    private ActorService actorService;
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
    public String allFilms(Model model){
        List<Film> allFilm=filmService.getAllFilms();
        model.addAttribute("films",allFilm);
        return "FilmBackstage";
    }
    //后台查询
    @RequestMapping("/filmsByCondition2")
    public String getFilmsByCondition2(String filmname, String filmtype, Integer state, Model model){

        List<Film> films=filmService.queryByCondition2(filmname,filmtype,state);
        model.addAttribute("films",films);
        return "FilmBackstage";
    }

}
