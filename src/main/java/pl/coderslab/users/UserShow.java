package pl.coderslab.users;

import pl.coderslab.userDao.User;
import pl.coderslab.userDao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.UnknownServiceException;

@WebServlet (name = "UserShow", urlPatterns = "/user/show")
public class UserShow extends HttpServlet {


    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {


        int idShow = Integer.parseInt(req.getParameter("id"));
        UserDao userDao = new UserDao();
        User toShow = userDao.read(idShow);
        req.setAttribute("toShow", toShow);


        getServletContext().getRequestDispatcher("/users/show.jsp")
                .forward(req, resp);


    }

}
