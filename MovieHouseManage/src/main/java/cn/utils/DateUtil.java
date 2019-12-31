package cn.utils;

import javax.xml.crypto.Data;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

    public static String getNowFormat(Date date){
        SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd hh:mm");
        String now = sdf.format(date);
        return now;
    }
}
