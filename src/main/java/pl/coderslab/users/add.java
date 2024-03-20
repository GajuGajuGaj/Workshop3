package pl.coderslab.users;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pl.coderslab.utils.DbUtil;
import pl.coderslab.utils.User;
import pl.coderslab.utils.UserDao;

@WebServlet("/user/add")
public class add extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    getServletContext().getRequestDispatcher("/users/add.jsp").forward(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String username = req.getParameter("userName");
    String email = req.getParameter("email");
    String password = req.getParameter("password");
    User user = new User();
    user.setUserName(username);
    user.setEmail(email);
    user.setPassword(password);
    UserDao userDao = new UserDao();
    userDao.create(user);
    resp.sendRedirect("/user/list");
  }
}
