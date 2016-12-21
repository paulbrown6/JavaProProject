package servlets;

import user.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;

/**
 * Created by Paul Brown on 20.12.2016.
 */
public class Authorise extends HttpServlet {

    private String userurl = "/files/text/users.txt";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        String login = req.getParameter("login");
        String pass = req.getParameter("pass");

        ArrayList<User> users = new ArrayList<User>();
        try {
            File file = new File(userurl);
            ObjectInputStream o = new ObjectInputStream(new FileInputStream(file));
            users = (ArrayList<User>) o.readObject();
        }
        catch (Exception e){
            System.out.println(e);
        }

        if (users.size() > 0){
            for (User u: users) {
                if (login.equals(u.getEmail())){
                    if (pass.equals(u.getPassword())){
                        resp.setContentType("text/html");
                        resp.setCharacterEncoding("UTF-8");
                        PrintWriter out = resp.getWriter();

                        out.print("<h1>У меня получилось сделать это!</h1>");
                        out.print("log " + login + "; pass " + pass);
                    }
                    else {
                        req.setAttribute("error", "Вы ввели не правильный пароль, пожалуйста введите правильный!");
                        req.getRequestDispatcher("index.jsp").forward(req, resp);
                    }
                }
                else {
                    req.setAttribute("error", "Вы не зарегистрированы, пожалуйста зарегистрируйтесь!");
                    req.getRequestDispatcher("index.jsp").forward(req, resp);
                }
            }
        }
        else {
            req.setAttribute("error", "Вы не зарегистрированы, пожалуйста зарегистрируйтесь!");
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
    }

}
