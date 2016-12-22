package servlets;

import logistic.Logistic;
import user.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.HashSet;

/**
 * Created by Paul Brown on 20.12.2016.
 */
public class Authorise extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        req.setCharacterEncoding("UTF-8");
        String login = req.getParameter("login");
        String pass = req.getParameter("pass");

        if(!login.equals("") && !pass.equals("")) {
            HashSet<User> users = new Logistic().getUsers();
            System.out.println("Users in HashSet: " + users);
            System.out.println("Auth user: " + login + ":" + pass);
            for (User u : users) {
                System.out.println(u);
                System.out.println("login:" + login.hashCode());
                System.out.println("u.email:" + u.getEmail().hashCode());
                System.out.println("pass:" + pass.hashCode());
                System.out.println("u.pass:" + u.hashCode());
                if (login.hashCode() == u.getEmail().hashCode()) {
                    if (pass.hashCode() == u.getPassword().hashCode()) {
                        resp.setContentType("text/html");
                        resp.setCharacterEncoding("UTF-8");
                        PrintWriter out = resp.getWriter();
                        out.print("<h1>Здравствуйте " + u.getFirstname() + "!</h1>");
                    } else {
                        req.setAttribute("error", "Вы не правильно ввели логин или пароль!");
                        req.getRequestDispatcher("index.jsp").forward(req, resp);
                    }
                }
            }
        }
        else {
            req.setAttribute("error", "Вы не правильно ввели логин или пароль!");
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
    }

}
