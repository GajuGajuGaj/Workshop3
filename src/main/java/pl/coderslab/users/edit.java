package pl.coderslab.users;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pl.coderslab.utils.User;
import pl.coderslab.utils.UserDao;

@WebServlet("/user/edit")
public class edit extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    UserDao userDao = new UserDao();
    User user = new User();
    try {
      user = userDao.read(Integer.parseInt(request.getParameter("id")));
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }
    request.setAttribute("id", user.getId());
    request.setAttribute("user", user);
    getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    UserDao userDao = new UserDao();
    User user = new User();
    String id = req.getParameter("id");
    String username = req.getParameter("userName");
    String email = req.getParameter("email");
    String password = req.getParameter("password");
    user.setId(Integer.parseInt(id));
    user.setUserName(username);
    user.setEmail(email);
    user.setPassword(password);
    try {
      userDao.update(user);
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }
    resp.sendRedirect("/user/list");
  }
}
