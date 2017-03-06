/**
 * Created by my on 2017/2/14.
 */

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ReceiveInfo extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置响应内容类型
        response.setContentType("text/html;charset=utf-8");

        String GPSLocation = new String(request.getParameter("GPSLocation").getBytes("ISO-8859-1"),"UTF-8");
        String [] GPSInfo = GPSLocation.split(" ");

        String longitude = GPSInfo[0];
        String latitude = GPSInfo[3];
//        String altitude = new String(request.getParameter("al").getBytes("ISO-8859-1"),"UTF-8");
//        String curTime = new String(request.getParameter("ct").getBytes("ISO-8859-1"),"UTF-8");

        PrintWriter out = response.getWriter();

//        out.print(longitude+"   ");
//        out.print(latitude+"   ");

        System.out.print(longitude+"   ");
        System.out.print(latitude+"   ");
        System.out.println();

        RequestDispatcher rd = request.getRequestDispatcher("location.jsp");
        request.setAttribute("longitude",longitude);//存值
        request.setAttribute("latitude",latitude);//存值
        rd.forward(request,response);
    }

    @Override
    public void destroy() {
        super.destroy();
    }
}