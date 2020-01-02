package cn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/seat")
@SessionAttributes(value = {"seats","num"})
public class SeatController {
    @RequestMapping("/addSeat")
    public void addSeat(String seatNum, Model model, HttpSession session){
        Map<String,String> seats = (Map<String,String>) session.getAttribute("seats");
        if (seats == null){
            seats = new HashMap<String,String>();
        }

        if(seats.size()>0){
            if(seatNum.equals(seats.get(seatNum))){
                seats.remove(seatNum);
            }else{
                seats.put(seatNum,seatNum);
            }
        }else{
            seats.put(seatNum,seatNum);
        }

        model.addAttribute("seats",seats);
        System.out.println(seats);
    }
    @RequestMapping("/num")
    public String getUser(Integer num,Model model){
        model.addAttribute("num",num);
        return "loginUser";
    }
}
