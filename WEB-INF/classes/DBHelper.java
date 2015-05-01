import java.sql.*;

public class DBHelper{
    private String driver = "org.gjt.mm.mysql.Driver";
    // 数据库地址，数据库名
    String server = "localhost";
    String dbname = "jinanluxi";
    String url = "jdbc:mysql://" + server + "/" + dbname + "?useUnicode=true&characterEncoding=EUC_JP";
    // 数据库用户名
    String user = "root";
    // 数据库密码
    String pw = "root";
    Connection conn;
    Statement stat;

    // 数据库连接
	public void connect() throws ClassNotFoundException, SQLException {
        //这句有什么用？？？
        Class.forName(driver);
        conn = DriverManager.getConnection(url, user, pw);
	}

    // 关闭数据库连接
    public void close() throws SQLException {
        conn.close();
    }

    public ResultSet sqlExecute(String sql) throws SQLException{
        stat = conn.createStatement();
        return stat.executeQuery(sql);
    }
}