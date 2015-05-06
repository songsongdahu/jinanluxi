import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.ArrayList;

public class productServlet extends HttpServlet {
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
        ArrayList<String> product_genre_ids = new ArrayList<String>();
        ArrayList<String> product_genre_names = new ArrayList<String>();

        String description = "";
        String image = "";

        try {
            dbh.connect();

            //用于生成左侧导航栏
            String sql = "select * from product_genre";
            rs = dbh.sqlExecute(sql);
            while(rs.next() == true){
                product_genre_ids.add(rs.getString("product_genre_id"));
                product_genre_names.add(rs.getString("product_genre_name"));
            }
        
            sql = "select * from product where product_id = '"+ request.getParameter("product_id") +"'";
            out.println(sql);
            rs = dbh.sqlExecute(sql);
            rs.next();
            description = rs.getString("description");
            image = rs.getString("image");

            dbh.close();
        } catch (SQLException e1) {
            out.println(e1.toString());
            out.println("loginServlet SQLException");
            out.println();
        } catch (ClassNotFoundException e2) {
            out.println("loginServlet ClassNotFoundException");
        }

        // 传递参数,跳转
        request.setAttribute("product_genre_ids", product_genre_ids);
        request.setAttribute("product_genre_names", product_genre_names);
        request.setAttribute("description", description);
        request.setAttribute("image", image);
        request.getRequestDispatcher("/jsp/product.jsp").forward(request, response);
    }
}
