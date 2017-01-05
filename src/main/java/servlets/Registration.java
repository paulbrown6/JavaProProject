package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.sun.org.apache.xpath.internal.operations.Bool;
import logistic.Logistic;
import user.User;

/**
 * Created by Paul Brown on 21.12.2016.
 */

public class Registration extends HttpServlet {
    private Boolean fnbool = false;
    private Boolean lnbool = false;
    private Boolean embool = false;
    private Boolean psbool = false;


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String firstname = req.getParameter("firstname");
        String lastname = req.getParameter("lastname");
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
        String passresp = req.getParameter("passresp");

        HttpSession session = req.getSession(true);

        System.out.println("началась регистрация");
        System.out.println("Переданные параметры: " + firstname + " " + lastname + " " + email + " " + pass + " " + passresp);
        if (registrationBool(firstname, lastname, email, pass, passresp)){
            User newuser = new User(firstname, lastname, email, pass);
            Logistic log = new Logistic();
            log.addUser(newuser);
            session.setAttribute("user", newuser);
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        }
        else {
            if (!fnbool){
                req.setAttribute("errorfn", "Введите имя!");
            }
            if (!lnbool){
                req.setAttribute("errorln", "Введите фамилию!");
            }
            if (!embool){
                req.setAttribute("errorem", "Введите правильно email!");
            }
            if (!psbool){
                req.setAttribute("errorps", "Ваш пароль должен содержать не менее 8 символов!");
            }

            req.getRequestDispatcher("register.jsp").forward(req, resp);
        }


    }

    private boolean registrationBool(String fname, String lname, String em, String passone, String passtwo){
        if (!(fname.isEmpty())){
            fnbool = true;
            System.out.println("имя подошло");
        }
        if (!(lname.isEmpty())){
            lnbool = true;
            System.out.println("фамилия подошло");
        }
        if (!(em.isEmpty())){
            Pattern pt = Pattern.compile("([а-яa-z1-9._])+@([а-яa-z.])+.([a-zа-я]{2,6})");
            Matcher mt = pt.matcher(em);
            System.out.println(mt.matches());
            if (mt.matches()){
                embool = true;
                System.out.println("эмаил подошло");
            }
        }
        if (!(passone.isEmpty()) && (passone.equals(passtwo)) && (passone.length() > 8)){
            psbool = true;
            System.out.println("пароль подошло");
        }
        if (fnbool && lnbool && embool && psbool){
            return true;
        }
        else {
            return false;
        }
    }
}
