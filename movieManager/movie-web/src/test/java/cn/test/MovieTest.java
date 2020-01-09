package cn.test;

import cn.entity.Cinema;
import cn.service.CinemaService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class MovieTest {

    @Autowired
    private CinemaService cinemaService;
    @Test
    public void testCinema() throws Exception{
        ApplicationContext ac = new ClassPathXmlApplicationContext("beans.xml");
        cinemaService = ac.getBean(CinemaService.class);

        List<Cinema> cinemas = cinemaService.getCinemaByName("奥斯卡国际影城",13);
        System.out.println(cinemas);
    }
}
