import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class loginServlet extends HttpServlet {
    public void doPost(HttpServletRequest request,
                      HttpServletResponse response)
        throws IOException, ServletException
    {
        DBHelper dbh = new DBHelper();
        ResultSet rs;

        // 设定forward页面的字符集
        response.setCharacterEncoding("UTF-8"); 
        PrintWriter out = response.getWriter();

        // 从form中得到数据
        String user_id = request.getParameter("user_id");
        String password = request.getParameter("password");

        // 查询数据库得到user_name
        String user_name = "";

        try {
            dbh.connect();
        
            String sql = "select * from user where user_id='"+user_id+"' and password='"+password+"'";
            rs = dbh.sqlExecute(sql);
            rs.next();
            user_name = rs.getString("user_name");

            dbh.close();
        } catch (SQLException e1) {
            out.println("loginServlet SQLException");
            out.println();
        } catch (ClassNotFoundException e2) {
            out.println("loginServlet ClassNotFoundException");
        }

        // 传递user_name,跳转
        request.setAttribute("user_name", user_name);
        request.getRequestDispatcher("/jsp/manager/welcome.jsp").forward(request, response);
    }
}
