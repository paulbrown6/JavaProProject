package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Paul Brown on 26.12.2016.
 */
@WebServlet("/calculator")
public class Calculator extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String x2 = req.getParameter("x2");
        String x = req.getParameter("x");
        String n = req.getParameter("n");

        if (x2 != null && x != null && n != null){
            Integer d = (Integer.parseInt(x)*Integer.parseInt(x))-(4*Integer.parseInt(x2)*Integer.parseInt(n));
            Double x1 = (Double.parseDouble(x) + Math.sqrt(d))/2*Double.parseDouble(n);
            Double xx = (Double.parseDouble(x) - Math.sqrt(d))/2*Double.parseDouble(n);
            System.out.println("x2 = " + x2 + "; x = " + x + "; n = " + n);
            System.out.println("x1 = " + x1 + "; x2 = " + xx);
            req.setAttribute("otvet", "x1=" + x1 + "; x2=" + xx);
            req.getRequestDispatcher("otvet.jsp").forward(req, resp);

        }
        else {
            req.setAttribute("otvet", "Вы ввели что-то не то! Попробуйте снова!");
            req.getRequestDispatcher("otvet.jsp").forward(req, resp);
        }
    }
}
