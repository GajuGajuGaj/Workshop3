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

@WebServlet("/user/delete")
public class delete extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    UserDao userDao = new UserDao();
    User user;
    try {
      userDao.delete(Integer.parseInt(req.getParameter("id")));
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }
    resp.sendRedirect("/user/list");
  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    UserDao userDao = new UserDao();
    User user;
    try {
      userDao.delete(Integer.parseInt(request.getParameter("id")));
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }
    response.sendRedirect("/user/list");
  }
}
