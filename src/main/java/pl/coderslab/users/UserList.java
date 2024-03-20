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

@WebServlet("/user/list")
public class UserList extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    UserDao userDao = new UserDao();
    User[] users;
    try {
      users = userDao.findAll();
      for (User user : users) {
      }
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }
    request.setAttribute("users", users);
    getServletContext().getRequestDispatcher("/users/list.jsp").forward(request, response);
  }
}
