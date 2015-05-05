import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.ArrayList;

public class indexServlet extends HttpServlet {
    public void doGet   (HttpServletRequest request,
                      HttpServletResponse response)
        throws IOException, ServletException
    {
        DBHelper dbh = new DBHelper();
        ResultSet rs;

        // 设定forward页面的字符集
        response.setCharacterEncoding("UTF-8"); 
        PrintWriter out = response.getWriter();

        // 查询数据库
        ArrayList<String> article_id = new ArrayList<String>();
        ArrayList<String> title = new ArrayList<String>();
        ArrayList<String> product_id = new ArrayList<String>();
        ArrayList<String> product_name = new ArrayList<String>();
        ArrayList<String> image = new ArrayList<String>();

        try {
            dbh.connect();

            String sql;

            sql = "select * from article order by creation_date desc limit 2,9";
            rs = dbh.sqlExecute(sql);
            while(rs.next() == true){
                article_id.add(rs.getString("article_id"));
                title.add(rs.getString("title"));
            }
            
            sql = "select * from product order by creation_date desc limit 8";
            rs = dbh.sqlExecute(sql);
            while(rs.next() == true){
                product_id.add(rs.getString("product_id"));
                product_name.add(rs.getString("product_name"));
                image.add(rs.getString("image"));
            }

            dbh.close();
        } catch (SQLException e1) {
            out.println(e1.toString());
            out.println("loginServlet SQLException");
            out.println();
        } catch (ClassNotFoundException e2) {
            out.println("loginServlet ClassNotFoundException");
        }
      
        // 传递参数,跳转
        request.setAttribute("article_id", article_id);
        request.setAttribute("title", title);
        request.setAttribute("product_id", product_id);
        request.setAttribute("product_name", product_name);
        request.setAttribute("image", image);
        request.getRequestDispatcher("/jsp/index.jsp").forward(request, response);
    }
}
