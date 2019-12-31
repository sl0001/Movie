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
import sun.plugin.util.UserProfile;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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


    @RequestMapping("/addFilm")
    public String addFilm(Film film) throws ParseException {
        String time= film.getTime();
        SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd" );
        Date showtime=sdf.parse(time);
         film.setShowtime(showtime);
        filmService.addFilm(film);
        return "FilmBackstage";
    }
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
    //所有电影列表
    @RequestMapping("/allFilm")
    public void allFilm(Model model){

        List<Film> allFilm=filmService.getAllFilm();
        model.addAttribute(allFilm);

        Map<String,Object> map=new HashMap<String, Object>();

        map.put("allFilm",allFilm);
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

    //正在上映电影列表
    @RequestMapping("/hitFilmList")
    public String hitFilmList(Model model){

        List<Film> hitFilmList = filmService.getFilmByShowTime();
        model.addAttribute("hitFilmList",hitFilmList);
        return "";
    }

    //即将上映电影列表
    @RequestMapping("/upcomingFilmList")
    public String upcomingFilmList(Model model){
        List<Film> upcomingFilmList = filmService.getFilmByLessTime();
        model.addAttribute("upcomingFilmList",upcomingFilmList);
        return "";
    }

    //查询票房榜（前10）
    @RequestMapping("/boxOffice")
    public String boxOffice(Model model){
        List<Film> upcomingFilmList = filmService.getByOffice();
        model.addAttribute("upcomingFilmList",upcomingFilmList);
        return "";
    }

    //查询期待榜（前50）
    @RequestMapping("/boxExpectation")
    public String boxExpectation(Model model){
        List<Film> upcomingFilmList = filmService.getByExpect();
        model.addAttribute("upcomingFilmList",upcomingFilmList);
        return "";
    }
    //查询 top100（所有电影票房前100）
    @RequestMapping("/top")
    public String top(Model model){
        List<Film> upcomingFilmList = filmService.getByOffice_100();
        model.addAttribute("upcomingFilmList",upcomingFilmList);
        return "";
    }
    //查询好评榜（前10）
    @RequestMapping("/boxScore")
    public String boxScore(Model model){
        List<Film> upcomingFilmList = filmService.getByScore();
        model.addAttribute("upcomingFilmList",upcomingFilmList);
        return "";
    }

    /*
     * 动态条件查询电影数据（分页查询）
    */
    @RequestMapping("/films")
    public String getFilms(@RequestParam(value="pn",defaultValue="1")Integer pn, Model model){

        //引入PageHelper分页插件
        //查询之前需要调用,,传入页码，以及每页的大小
        PageHelper.startPage(pn,5);
        //startPage后面紧跟的是这个查询就是一个分页查询
        List<Film> emps = filmService.getAllFilm();
        //使用pageInfo包装查询后的结果，只需要将Pageinfo交给页面就行了
        //封装了详细的分页信息，包括我们查出来的数据,传入连续显示的数据
        PageInfo page = new PageInfo(emps,5);
        model.addAttribute("pageInfo",page);
        return "";
    }
}
