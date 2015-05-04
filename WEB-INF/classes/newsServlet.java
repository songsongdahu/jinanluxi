import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class newsServlet extends HttpServlet {
    public void doGet   (HttpServletRequest request,
                      HttpServletResponse response)
        throws IOException, ServletException
    {
        DBHelper dbh = new DBHelper();
        ResultSet rs;

        // 设定forward页面的字符集
        response.setCharacterEncoding("UTF-8"); 
        PrintWriter out = response.getWriter();

        // 查询数据库得到标题和内容
        String title = "";
        String content = "";

        try {
            dbh.connect();
        
            String sql = "select * from article where article_id = '"+ request.getParameter("article_id") +"'";
            out.println(sql);
            rs = dbh.sqlExecute(sql);
            rs.next();
            title = rs.getString("title");
            content = rs.getString("content");

            dbh.close();
        } catch (SQLException e1) {
            out.println(e1.toString());
            out.println("loginServlet SQLException");
            out.println();
        } catch (ClassNotFoundException e2) {
            out.println("loginServlet ClassNotFoundException");
        }

        // 传递参数,跳转
        request.setAttribute("title", title);
        request.setAttribute("content", content);
        request.getRequestDispatcher("/jsp/news.jsp").forward(request, response);
    }
}
