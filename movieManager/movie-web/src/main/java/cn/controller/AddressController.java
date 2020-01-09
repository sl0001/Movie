package cn.controller;

import cn.entity.Address;
import cn.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/address/")
public class AddressController {
    @Autowired
    private AddressService addressService;

    //显示市区信息
    @RequestMapping("/showcity")
    @ResponseBody
    public List<Address> Showcity(HttpServletResponse response) throws IOException {
        Integer parentid=0;
        response.setContentType("application/json;charset=utf-8");
        List<Address> citys=addressService.selelctByParansId(parentid);
       // String city = JSONObject.toJSONString(citys);
        return citys;
    }
    @RequestMapping("/showadministrative")
    @ResponseBody
    //显示行政区信息
    public List<Address> Showadministrative(HttpServletResponse response, Integer parentid) throws IOException {
        response.setContentType("application/json;charset=utf-8");
        List<Address> administratives = addressService.selelctByParansId(parentid);
      //  String administrative = JSONObject.toJSONString(administratives);
       return administratives;
    }
}
