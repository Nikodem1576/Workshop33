package pl.coderslab.users;

import pl.coderslab.userDao.User;
import pl.coderslab.userDao.UserDao;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet (name = "UserList", urlPatterns = "/user/list")
public class UserList extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

UserDao userDao = new UserDao();

User[] listOfUsers = userDao.findAll();

//User userToRead = new User();

List<User> ofUsers = new ArrayList<>();

for (User x : listOfUsers) {

//    userToRead.setId(x.getId());
//    userToRead.setUserName(x.getUserName());
//    userToRead.setEmail(x.getEmail());

    ofUsers.add(x);



//    req.setAttribute("userId", userToRead.getId());
//    req.setAttribute("userName", userToRead.getUserName());
//    req.setAttribute("userEmail", userToRead.getEmail());

}

        System.out.println(ofUsers);

req.setAttribute("ofUsers", ofUsers);

        getServletContext().getRequestDispatcher("/users/list.jsp")
                .forward(req, resp);

    }


}

