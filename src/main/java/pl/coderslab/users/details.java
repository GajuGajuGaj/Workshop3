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

@WebServlet("/user/show")
public class details extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    UserDao userDao = new UserDao();
    User user;
    try {
      user = userDao.read(Integer.parseInt(request.getParameter("id")));
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }
    request.setAttribute("user", user);
    getServletContext().getRequestDispatcher("/users/details.jsp").forward(request, response);
  }
}
