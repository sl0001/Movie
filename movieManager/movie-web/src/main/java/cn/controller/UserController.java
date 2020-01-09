package cn.controller;

import cn.entity.Cinema;
import cn.entity.Film;
import cn.entity.User;
import cn.service.CinemaService;
import cn.service.FilmService;
import cn.service.UserService;
import cn.utils.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;
@Controller
@RequestMapping("/user")
@SessionAttributes(value = {"userUP","filmList"})
public class UserController {
    @Autowired
    private UserService us;
    @Autowired
    private FilmService fs;

    @RequestMapping("/login")
    @ResponseBody
    public Integer login(String phone, String pwd,Model model,HttpSession session){
        Integer num = (Integer) session.getAttribute("num");
        if (phone.trim() != ""&&pwd.trim() != ""){//判断传入数据是否为空
            User userON = us.getByPhone(phone);//根据电话查询信息
            if(userON == null){//判断查询信息是否为空
                return 1;//回调信息
            }else{
                if(MD5Util.toMd5(pwd).equals(userON.getPwd())){//判断密密码是否正确
                    model.addAttribute("userUP",userON);
                    if (num!=null){
                        return num;
                    }
                    return 2;
                }else{
                    return 3;
                }
            }
        }
        return null;
    }

    @RequestMapping("/rePhone")
    @ResponseBody
    public Boolean rePhone(String phone){
        List<User> list = us.getAllUsers();
        for (User u:list) {
            if(u.getPhone().trim().equals(phone.trim())){
                return true;
            }
        }
        return false;
    }
    @RequestMapping("/tellMsgCode")
    @ResponseBody
    public boolean tellMsgCode(String msg){
        RequestAttributes ra = RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = ((ServletRequestAttributes)ra).getRequest();
        Integer num = (Integer) request.getSession(true).getAttribute("num");
        if(num.toString().equals(msg.trim())){
            return true;
        }
        return false;
    }

    @RequestMapping("/register")
    @ResponseBody
    public boolean register(User user){
        if(user.getPhone()!=null){
            String pwd = user.getPwd();
            user.setPwd(MD5Util.toMd5(pwd));
            Integer result = us.addUser(user);
            if(result == 1){
                return true;
            }
        }
        return false;
    }

    @RequestMapping("/allUser")
    @ResponseBody
    public List<User> getAllUser(){
        List<User> users = us.getAllUsers();
        List<User> users1= new ArrayList<User>();

        for (User user:users){
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String bir =  sdf.format(user.getBirthday());
            user.setBir(bir);
            users1.add(user);
        }
        return users1;
    }

    @RequestMapping("/selectByName")
    @ResponseBody
    public List<User> selectByName(String name){
        List<User> users = us.getByName(name);
        List<User> users2= new ArrayList<User>();

        for (User user:users){
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
            String bir =  sdf.format(user.getBirthday());
            user.setBir(bir);
            users2.add(user);
        }
        return users2;
    }
}
