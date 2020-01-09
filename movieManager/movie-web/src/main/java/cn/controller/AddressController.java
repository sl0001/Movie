package cn.controller;

import cn.entity.Address;
import cn.entity.CinemaBand;
import cn.service.AddressService;
import cn.service.CinemaService;
import com.alibaba.druid.support.json.JSONUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.PrivateKey;
import java.util.List;

@Controller
@RequestMapping("/address/")
public class AddressController {
    @Autowired
    private AddressService  addressService;

    @Autowired
    private CinemaService cinemaService;
    private JSONUtils JSONObject;

    //显示市区信息
    @RequestMapping("/showcity")
    @ResponseBody
    public void Showcity(HttpServletResponse response) throws IOException {
        Integer parentid=0;
        response.setContentType("application/json;charset=utf-8");
        List<Address> citys=addressService.selelctByParansId(parentid);
        String city = JSONObject.toJSONString(citys);
        response.getWriter().write(city);
    }
    @RequestMapping("/showadministrative")
    @ResponseBody
    //显示行政区信息
    public void Showadministrative( HttpServletResponse response, Integer parentid) throws IOException {
        response.setContentType("application/json;charset=utf-8");
        List<Address> administratives=addressService.selelctByParansId(parentid);
        String administrative = JSONObject.toJSONString(administratives);
        response.getWriter().write(administrative);
    }

}
