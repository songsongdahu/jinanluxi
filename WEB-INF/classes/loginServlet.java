import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

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
        out.println("user_id:"+user_id+"password:"+password);
        out.println("</html>");

        Connection conn;
        Statement stat;
        ResultSet rs;
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost/jinanluxi?user=root&password=root");
            try {
                stat = conn.createStatement();
                rs = stat.executeQuery("select * from user where user_id='"+user_id+"' and password='"+password+"'");
            }
            finally {
                conn.close();
            }
        } catch (SQLException ex) {

        }
    }
}
