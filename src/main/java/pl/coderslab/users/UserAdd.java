package pl.coderslab.users;

import pl.coderslab.userDao.User;
import pl.coderslab.userDao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserAdd" , urlPatterns = "/user/add")
public class UserAdd extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/users/add.jsp")
                .forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("userName");
        String email = req.getParameter("userEmail");
        String password = req.getParameter("userPassword");


        User user = new User();
        user.setUserName(name);
        user.setEmail(email);
        user.setPassword(password);


        UserDao userDao = new UserDao();

        userDao.create(user);

        resp.sendRedirect(req.getContextPath() + "/user/list");

    }


}
