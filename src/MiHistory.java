/**
 * Created by my on 2017/2/14.
 */

import sun.plugin2.message.Message;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;

public class MiHistory extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<String> hst=new ArrayList<>();
        try {
            PrintWriter out = response.getWriter();
            String encoding="GBK";

            File file=new File("D:\\mitrace.txt");
            if(file.isFile() && file.exists()){ //判断文件是否存在
                InputStreamReader read = new InputStreamReader(
                        new FileInputStream(file),encoding);//考虑到编码格式
                BufferedReader bufferedReader = new BufferedReader(read);
                String lineTxt = null;
                while((lineTxt = bufferedReader.readLine()) != null){
//                    System.out.println(lineTxt);
//                    out.println(lineTxt);
                    hst.add(lineTxt);
                }
                RequestDispatcher rd = request.getRequestDispatcher("history.jsp");
                request.setAttribute("hst",hst);//存值
                read.close();
                rd.forward(request,response);
            }else{
                System.out.println("找不到指定的文件");
            }

        } catch (Exception e) {
            System.out.println("读取文件内容出错");
            e.printStackTrace();
        }


    }

    @Override
    public void destroy() {
        super.destroy();
    }
}