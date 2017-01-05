package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by Paul Brown on 04.11.2016.
 */
public class DataBaseSQL {

    private String url = "jdbc:mysql://localhost/javaproproject";
    private String name = "root";
    private String password = "root";
    private Statement statement;
    private Connection connection;

    public DataBaseSQL() throws SQLException, ClassNotFoundException {
        createConnect();
    }

    public Statement createConnect() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(url, name, password);
        statement = connection.createStatement();
        System.out.println("Connected sql.");
        return statement;
    }

    public Statement getStatement() {
        return statement;
    }

    public void destroyConnect() throws SQLException {
        connection.close();
        System.out.println("Disconnected.");
    }
}
