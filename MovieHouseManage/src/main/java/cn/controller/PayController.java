package cn.controller;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@Controller
public class PayController {

    private final String APP_ID = "2016101400686441";
    private final String APP_PRIVATE_KEY = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC+d0u9ROh5zoXijjYuGtuIU/ZctBVDFSbbmz6QWmIwMkmAW7/VzMB/kX6ax7Nw/Jn8jcWy4yKZe4doEbgieXg16RvXffGoH8IEYprg1KFhDKQVsKRXNNzczVzxMvYsWXkA8kQqLKlIpOqBbnBlBZQuq+Aw/80DcOaNwSb4ftAhlg/UGfB0f+jJvnIPXGIZR4YWSlhWKTfbPNWTURSxiwYpRC5OejcEKzoNAXanSRI8sueu2oyHB6Oztv2xii6pHY5sjaRJXPkan3L67l9XYJHn2JKKhN1sW3u6z3bYM1tSrSFmPmKtAySEiQ1afVVIhT89hiaUdFx2c0zG8knQwmA9AgMBAAECggEACOhZYXOsj63J8yuFeyiEZd7PYcyGRgniNFkRVvzzJJ/lchxYX25g/lZWnnSCfuFBbl9PBKu8vYLadVKG0w3tQlAxniVkvOEnWL8n0SYAmiJWNjF5rh5pyeXM1/bzLmXM0++AopxOGnikAwOgPAlDwd8F8CS2eNe54J1M7kg4AaoHUasQWMHWzxKywTrB1/fmVRL2CJp9K2QdWqJuoDfZF5pIhBUj+kjWCuIdQefYwCI2LeM76l5oS8dmXfLvOfGVzB1F0kI+sn8rZKRGsC8ZQcEhWIDKyrofv6FWQjpqaxZOFMf9jjIyOVZeVkxW77jjE4PUWPei3v+9Q5QzYqOffQKBgQDfSJd/PBc69/09Ieev2v8H6xaGX/gnFRV9V3mR9K5a1j0htu/koUJ85Bmas+Jn3rhcDIH4+o6/2VEhtQeyyYf6E/QAlH5aFZoR0to98neACqIpK6Uipx3hIHgAeBk831Tvb5vAp93H/mtnHv1p3cocm1M66LOvHGnhucFJUbWqCwKBgQDaX7YPAvAwyrJFOIA3ZyXOL8WPWJ9V8Q+lLhQLKTxx5+s51Mq2qatSW0HizE2jGikgIYScGe8wAtlG3hT4QBHiYd2MsXCKaS1QIi0TkwiFeR5ulGat3U1vBineJenJzJIlgt2SjXovtezmEoQ+RGiMFyPQdYwSHJiORZ1VyY1T1wKBgQC/8jSiYXMK83MU4Ze9uoKxOOyVOd0nI93kcZWF3pUga7oDyLLzlZmFqcVFE8zXRESyhOIaurKKxHQViP2EOfGWDx8cfIseQCHBnsSUqmMGhJ2gzO9aGdX62aGvrY7soITwjL6VYPmsWs/Tx3VMVCjSbMihBLirGb8AGGLL9902vwKBgDL5WIQUiYC6L/bcg4FrQHXqzNDzPO5QwPgr013vmD52hoAPXepZnLYyuyR30D+cYbEwYcYWf7DTWWijen2gZwxTD+ZBnSWR+5PTBnalQb32UdY6KeW33NVnuOo0K2iBqjO7YoFNKRJuAwiJlfj6+vSIikGkzreDmVDMizd1PtotAoGBALB/h1BYHjCre/P8rHGD7ZFCPfS/PxMFzXkyDxPh5m86FnDtI0kUh2R0YB2ijfQ7oIiFpMNsJQnFoCSMThCedrjc3RriXgJZoFPj9fgX3YRAXX59GE6hwU9V6GEAccZwbhu84iKCO3QfBGpqxBQ2GiFWacDab+vpd/2Fy8vORw/M";
    private final String CHARSET = "UTF-8";
    private final String ALIPAY_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmd/pvmYOFULUaEbLyM0pMXTf/KF5ANwvySav9kB+X5EwY/c4plP1+cyjrmHuyOCAGBk/u8HWZu4Q67jriU0Idwq9mxzuHSuwVlvZhwfzMP5Wj9u26fTw4Jag6DJiSqrQvgEYFlqyXr7qy00ruff1fTNpXyK3enMKVDsxuHX4foolEZX1+AgjBtWrlY4u+HWvqhbrM+oJqpfj0ybHmrKAlo4Am7Bzf2at5zgRcKOis2+S4debashq2PAFrXJH/qowcOQh5QOIpOCAvhGYDwrQZbFT7bnUBs2fHHJzQGdegQiyVFWOkkV1PNXcvQyK8XA2owVlUHrYS6l/95xgGgWMDwIDAQAB";
    //这是沙箱接口路径,正式路径为https://openapi.alipay.com/gateway.do
    private final String GATEWAY_URL ="https://openapi.alipaydev.com/gateway.do";
    private final String FORMAT = "JSON";
    //签名方式
    private final String SIGN_TYPE = "RSA2";

    @RequestMapping("/alipay")
    public void alipay(HttpServletResponse httpResponse, HttpServletRequest req) throws IOException {
        //实例化客户端,填入所需参数
        AlipayClient alipayClient = new DefaultAlipayClient(GATEWAY_URL, APP_ID, APP_PRIVATE_KEY, FORMAT, CHARSET, ALIPAY_PUBLIC_KEY, SIGN_TYPE);
        AlipayTradePagePayRequest request = new AlipayTradePagePayRequest();
        //在公共参数中设置回跳和通知地址
        request.setReturnUrl("http://localhost:8080/"+req.getContextPath()+"/get");
        request.setNotifyUrl("http://localhost:8080/"+req.getContextPath()+"/get");
        //根据订单编号,查询订单相关信息
        //商户订单号，商户网站订单系统中唯一订单号，必填
        String out_trade_no = "asdasd5135653155151";
        //付款金额，必填
        String total_amount = "50.6";
        //订单名称，必填
        String subject = "订单";
        //商品描述，可空
        String body = "";
        request.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\","
                + "\"total_amount\":\""+ total_amount +"\","
                + "\"subject\":\""+ subject +"\","
                + "\"body\":\""+ body +"\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
        String form = "";
        try {
            form = alipayClient.pageExecute(request).getBody(); // 调用SDK生成表单
        } catch (AlipayApiException e) {
            e.printStackTrace();
        }
        httpResponse.setContentType("text/html;charset=" + CHARSET);
        httpResponse.getWriter().write(form);// 直接将完整的表单html输出到页面
        httpResponse.getWriter().flush();
        httpResponse.getWriter().close();
    }

    @RequestMapping("/get")
    public String get(){
        return "get";
    }
}
