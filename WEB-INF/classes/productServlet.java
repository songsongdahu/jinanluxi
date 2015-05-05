import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

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
        String description = "";
        String image = "";

        try {
            dbh.connect();
        
            String sql = "select * from product where product_id = '"+ request.getParameter("product_id") +"'";
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
        request.setAttribute("description", description);
        request.setAttribute("image", image);
        request.getRequestDispatcher("/jsp/product.jsp").forward(request, response);
    }
}
