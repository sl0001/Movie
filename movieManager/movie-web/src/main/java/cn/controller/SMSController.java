package cn.controller;

import cn.utils.HttpClientUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
@Controller
@SessionAttributes(value = "num")
public class SMSController {

    @RequestMapping("/msgUP")
    @ResponseBody
    public String magUP(String phone,Model model){
        HttpClientUtil client = HttpClientUtil.getInstance();
        Integer num = (int)((Math.random()*9+1)*100000);
        model.addAttribute("num",num);
        String msg = "验证码："+num;
       /* Integer result = client.sendMsgUtf8(msg,phone);
        if(result>0){
            System.out.println("UTF8成功发送条数=="+result);
            return "验证码已发送！";
        }
        System.out.println(client.getErrorMsg(result));
        return client.getErrorMsg(result);*/
       return ""+num;
    }
}
