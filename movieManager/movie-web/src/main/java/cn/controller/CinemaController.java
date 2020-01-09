package cn.controller;

import cn.entity.Address;
import cn.entity.Cinema;
import cn.entity.CinemaBand;
import cn.service.AddressService;
import cn.service.CinemaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@Controller
@RequestMapping("/cinema")
@SessionAttributes(value = {"address","addresses","cinemaBands","cinemas"})
public class CinemaController {
    @Autowired
    AddressService addressService;
    @Autowired
    CinemaService cinemaService;
    @RequestMapping("/getCinemaInfo")
    public String getCinemaInfo(Integer addressId, Model model){
        Address address = addressService.getAddressById(addressId);
        List<CinemaBand> cinemaBands = cinemaService.getByAddressId(addressId);
        List<Address> addresses = addressService.selelctByParansId(addressId);
        List<Cinema> cinemas = cinemaService.getAllCinema();
        model.addAttribute("cinemaBands",cinemaBands);
        model.addAttribute("addresses",addresses);
        model.addAttribute("address",address);
        model.addAttribute("cinemas",cinemas);
        return "ChooseCinema";
    }

    //    查询所有电影院
    @RequestMapping("/allCinema")
    @ResponseBody
    public List<Cinema> getAllCinema(){
        List<Cinema> allCinema=cinemaService.getAllCinema();
        return allCinema;
    }

    //根据电影院名查询
    @RequestMapping("/cinemaByName")
    @ResponseBody
    public List<Cinema> cinemaByName(String name){
        List<Cinema> cinemaByName=cinemaService.getCinemaByName(name);
        System.out.println(cinemaByName);
        return cinemaByName;
    }

    @RequestMapping(value = "addCinema")
    public String addCinema(Cinema cinema){
        cinemaService.addCinema(cinema);
        return "FilmBackstage";
    }
}
