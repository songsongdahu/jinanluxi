import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.ArrayList;

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

        // 查询数据库得到标题
        ArrayList<String> title = new ArrayList<String>();
        ArrayList<String> creation_date = new ArrayList<String>();

        try {
            dbh.connect();
        
            String sql = "select * from article where article_genre_id = '11' or article_genre_id = '12'";
            rs = dbh.sqlExecute(sql);
            while(rs.next() == true){
                title.add(rs.getString("title"));
                creation_date.add(rs.getString("creation_date"));
            }

            dbh.close();
        } catch (SQLException e1) {
            out.println("loginServlet SQLException");
            out.println();
        } catch (ClassNotFoundException e2) {
            out.println("loginServlet ClassNotFoundException");
        }

        // 传递参数,跳转
        request.setAttribute("title", title);
        request.setAttribute("creation_date", creation_date);
        request.getRequestDispatcher("/jsp/about.jsp").forward(request, response);
    }
}
