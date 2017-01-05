package logistic;

import database.DataBaseSQL;
import user.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

/**
 * Created by Paul Brown on 22.12.2016.
 */
public class Logistic {

    private HashSet<User> users = new HashSet<User>();

    public Logistic(){
        createdb();
    }

    private void createdb(){
        try {
            DataBaseSQL db = new DataBaseSQL();
            String query = "SELECT * FROM javaproproject.users";
            ResultSet rs = db.getStatement().executeQuery(query);
            while (rs.next()) {
                User u = new User(rs.getString("firstname"), rs.getString("lastname"), rs.getString("email"), rs.getString("password"));
                System.out.println(u.toString());
                users.add(u);
            }
            db.destroyConnect();
            System.out.println("Список Users считан!");
        }
        catch (Exception e){
            System.out.println(e);
        }
    }

    public void addUser(User user){
        try {
            DataBaseSQL db = new DataBaseSQL();
            String query = "insert users(firstname, lastname, email, password) values ('" + user.getLastname() + "','" + user.getFirstname() + "','" + user.getEmail() + "','"  + user.getPassword()+"')";
            System.out.println(query);
            int response = db.getStatement().executeUpdate(query);
            if (response == 1) {
                System.out.println("User успешно добавлен!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public HashSet<User> getUsers() {
        return users;
    }
}
