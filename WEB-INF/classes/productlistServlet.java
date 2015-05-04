import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.ArrayList;

public class productlistServlet extends HttpServlet {
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
        ArrayList<String> product_id = new ArrayList<String>();
        ArrayList<String> product_name = new ArrayList<String>();

        String product_genre_id = request.getParameter("product_genre_id");

        try {
            dbh.connect();

            String sql;
            
            if(product_genre_id==null){
                sql = "select * from product";
            } else {
                sql = "select * from product where product_genre_id = '"+ product_genre_id +"'";
            }
            rs = dbh.sqlExecute(sql);
            while(rs.next() == true){
                product_id.add(rs.getString("product_id"));
                product_name.add(rs.getString("product_name"));
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
        request.setAttribute("product_genre_id", product_genre_id);
        request.setAttribute("product_id", product_id);
        request.setAttribute("product_name", product_name);
        request.getRequestDispatcher("/jsp/productlist.jsp").forward(request, response);
    }
}
