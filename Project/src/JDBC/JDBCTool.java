package JDBC;

import com.mysql.jdbc.Driver;

import java.sql.*;

public class JDBCTool {
    //数据库连接
    public static Connection GetConnection() throws SQLException{
        DriverManager.registerDriver(new Driver());     //加载驱动

        //建立连接
        String url = "jdbc:mysql://localhost:3306/vocabulary";
        String username = "KeShe";
        String password = "123456";

        Connection connection = DriverManager.getConnection(url, username, password);

        return connection;
    }

    //获取数据表的数据总数
    public static int GetTotalNumOfDB() throws SQLException {
        Connection connection = GetConnection();
        Statement statement = connection.createStatement();
        String sql = "select count(*) from vocabulary";

        ResultSet resultSet = statement.executeQuery(sql);

        resultSet.next();

        return resultSet.getInt(1);

    }

}
