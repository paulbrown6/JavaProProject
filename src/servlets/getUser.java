package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

import user.User;

/**
 * Created by Paul Brown on 21.12.2016.
 */
@WebServlet("/getUser")
public class getUser extends HttpServlet {

    private String userurl = "/files/text/users.txt";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String text = req.getParameter("user");

        System.out.println("text = " + text);

        String firstname = text.split("  ")[0];
        String lastname = text.split("  ")[1];
        String email = text.split("  ")[2];
        String password = text.split("  ")[3];
        User newuser = new User(firstname, lastname, email, password);
        try {
            File file = new File(userurl);
            if (!file.exists()){
                file.createNewFile();
            }
            System.out.println(file.getPath());
            BufferedWriter write = new BufferedWriter(new FileWriter(file.getAbsoluteFile(), true));
            write.write("\n" + text);
        }
        catch (Exception e){
            System.err.println(e);
        }

        resp.setContentType("application/xml");
        resp.setHeader("Cache-Control", "no-cache");
        resp.getWriter().write("ok");
        System.out.println("Все гуд!");

//        resp.setCharacterEncoding("UTF-8");
//        PrintWriter out = resp.getWriter();
//        out.print("ok");
    }
}
