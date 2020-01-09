package cn.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class NumberUtil {

    /**
     * 生成随机数
     *
     * @param length 1-10之间
     * @return
     */
    public static int createVerifyCode(int length) {
        if (length == 0){
            return 0;
        }
        int c = (int) Math.pow(10, length - 1);
        int code = (int) ((Math.random() * 9 + 1) * c);
        return code;
    }

    /**
     * 生成订单号
     */
    public static synchronized String createCodeNum() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("YYYYMMddHHmmss");
        Integer num = (int)((Math.random()*9+1)*100000);
        String orderNum = dateFormat.format(new Date())+num;
        return orderNum;
    }
}
