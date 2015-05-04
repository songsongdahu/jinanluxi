import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class connectServlet extends HttpServlet {
    public void doGet   (HttpServletRequest request,
                      HttpServletResponse response)
        throws IOException, ServletException
    {
        DBHelper dbh = new DBHelper();
        ResultSet rs;

        // 设定forward页面的字符集
        response.setCharacterEncoding("UTF-8"); 
        PrintWriter out = response.getWriter();

        // 查询数据库得到text
        String text = null;

        try {
            dbh.connect();
        
            String sql = "select * from article where article_id = 10000002";
            rs = dbh.sqlExecute(sql);
            rs.next();
            text = rs.getString("content");

            dbh.close();
        } catch (SQLException e1) {
            out.println("loginServlet SQLException");
            out.println();
        } catch (ClassNotFoundException e2) {
            out.println("loginServlet ClassNotFoundException");
        }

        // 传递user_name,跳转
        request.setAttribute("text", text);
        request.getRequestDispatcher("/jsp/connect.jsp").forward(request, response);
    }
}
