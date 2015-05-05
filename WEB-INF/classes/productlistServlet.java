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
        // product_genre_ids用于生成左侧导航栏,product_genre_id是选择的分类
        ArrayList<String> product_genre_ids = new ArrayList<String>();
        ArrayList<String> product_genre_names = new ArrayList<String>();
        ArrayList<String> product_id = new ArrayList<String>();
        ArrayList<String> product_name = new ArrayList<String>();
        ArrayList<String> image = new ArrayList<String>();

        String product_genre_id = request.getParameter("product_genre_id");
        String product_genre_name = null;

        try {
            dbh.connect();

            String sql;

            //用于生成左侧导航栏
            sql = "select * from product_genre";
            rs = dbh.sqlExecute(sql);
            while(rs.next() == true){
                product_genre_ids.add(rs.getString("product_genre_id"));
                product_genre_names.add(rs.getString("product_genre_name"));
            }
            
            if(product_genre_id==null){
                sql = "select * from product";
            } else {
                //获得当前分类名
                for(int i=0;i<product_genre_ids.size();i++){
                    if(product_genre_id.equals(product_genre_ids.get(i))){
                        product_genre_name = product_genre_names.get(i);
                        break;
                    }
                }

                sql = "select * from product where product_genre_id = '"+ product_genre_id +"'";
            }
            
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
        request.setAttribute("product_genre_ids", product_genre_ids);
        request.setAttribute("product_genre_names", product_genre_names);
        request.setAttribute("product_genre_id", product_genre_id);
        request.setAttribute("product_genre_name", product_genre_name);
        request.setAttribute("product_id", product_id);
        request.setAttribute("product_name", product_name);
        request.setAttribute("image", image);
        request.getRequestDispatcher("/jsp/productlist.jsp").forward(request, response);
    }
}
