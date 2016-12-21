package servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import user.User;

/**
 * Created by Paul Brown on 21.12.2016.
 */
public class getUser extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String text = req.getParameter("user");

        String firstname = text.split("  ")[0];
        String lastname = text.split("  ")[1];
        String email = text.split("  ")[2];
        String password = text.split("  ")[3];
        User newuser = new User(firstname, lastname, email, password);
        File file = new File("files/text/users.txt");
        FileWriter fw = new FileWriter(file);
        fw.write(text);

    }
}
