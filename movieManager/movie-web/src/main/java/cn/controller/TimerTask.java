package cn.controller;

import cn.entity.Film;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Component
public class TimerTask {

    //每隔5秒  0/5 * * * * ?
    //每隔一小时 0 0 */1 * * ?
    //@Scheduled(cron="0/5 * * * * ?")
    public void test1(HttpServletRequest request){

        //System.out.println("定时执行任务");

       HttpSession session=request.getSession();
        List<Film> allFilm=(List<Film>) session.getAttribute("allFilm");

        for (Film film:allFilm) {
            Date time =film.getShowtime();
            Date date=new Date();
            if(time.compareTo(date) <= 0){
            }
        }
    }
}
