import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class loginServlet extends HttpServlet {
    public void doPost(HttpServletRequest request,
                      HttpServletResponse response)
        throws IOException, ServletException
    {
        //从form中得到数据
        String user_id = request.getParameter("user_id");
        String password = request.getParameter("password");
        PrintWriter out = response.getWriter();
        //test
        out.println("<html>");
        out.println("user_id:"+user_id+"<br>"+"password:"+password+"<br>");

        String user_name = "";

        try {
            // JDBCドライバの登録
            String driver   = "org.gjt.mm.mysql.Driver";
            // データベースの指定
            String server   = "localhost";      // MySQLサーバ ( IP または ホスト名 )
            String dbname   = "jinanluxi";         // データベース名
            String url = "jdbc:mysql://" + server + "/" + dbname + "?useUnicode=true&characterEncoding=EUC_JP";
            String user     = "root";         // データベース作成ユーザ名
            String pw = "root";     // データベース作成ユーザパスワード
            Class.forName (driver);
            // データベースとの接続
            Connection conn = DriverManager.getConnection(url, user, pw);
            Statement stat = conn.createStatement();
            String sql = "select * from user where user_id='"+user_id+"' and password='"+password+"'";
            out.println("sql:"+sql);
            ResultSet rs = stat.executeQuery(sql);
            rs.next();
            user_name = rs.getString("user_name");
            conn.close();
        } catch (SQLException e1) {

        } catch (ClassNotFoundException e2){

        }
        out.println("user_name:"+user_name+"<br>");
        out.println("</html>");

    }
}
