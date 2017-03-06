/**
 * Created by my on 2017/2/14.
 */

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Store extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置响应内容类型
        response.setContentType("text/html;charset=utf-8");

        String lng = new String(request.getParameter("lo").getBytes("ISO-8859-1"),"UTF-8");
        String lat = new String(request.getParameter("la").getBytes("ISO-8859-1"),"UTF-8");

        BigDecimal bglng = new BigDecimal(Double.valueOf(lng)+0.005513);
        BigDecimal bglat = new BigDecimal(Double.valueOf(lat)-0.001932);

        String longitude = String.valueOf(bglng.setScale(6, BigDecimal.ROUND_HALF_UP).doubleValue());
        String latitude = String.valueOf(bglat.setScale(6, BigDecimal.ROUND_HALF_UP).doubleValue());


        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式
        String curTime = dateFormat.format(new Date());
//        String altitude = new String(request.getParameter("al").getBytes("ISO-8859-1"),"UTF-8");
//        String curTime = new String(request.getParameter("ct").getBytes("ISO-8859-1"),"UTF-8");

        BufferedWriter out = null;
        out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream("D:\\trace.txt", true)));
        out.write(longitude+"   "+latitude+"   "+curTime+"\r\n");
        out.close();
    }

    @Override
    public void destroy() {
        super.destroy();
    }
}