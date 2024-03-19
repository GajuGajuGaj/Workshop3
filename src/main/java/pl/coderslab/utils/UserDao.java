package pl.coderslab.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;

public class UserDao {
  private static final String CREATE_USER_QUERY =
      "INSERT INTO users(username, email, password) VALUES (?, ?, ?)";
  public User create(User user) {
    try (Connection conn = DbUtil.getConnection()) {
      PreparedStatement statement =
          conn.prepareStatement(CREATE_USER_QUERY, Statement.RETURN_GENERATED_KEYS);
      statement.setString(1, user.getUserName());
      statement.setString(2, user.getEmail());
      statement.setString(3, hashPassword(user.getPassword()));
      statement.executeUpdate();
      //Pobieramy wstawiony do bazy identyfikator, a następnie ustawiamy id obiektu user.
      ResultSet resultSet = statement.getGeneratedKeys();
      if (resultSet.next()) {
        user.setId(resultSet.getInt(1));
      }
      return user;
    } catch (SQLException e) {
      e.printStackTrace();
      return null;
    }
  }
  public User read(int UserId) throws SQLException {
    User result = new User();
    try (Connection conn = DbUtil.getConnection();
    Statement statement = conn.createStatement();
    ResultSet resultSet = statement.executeQuery("select * from users where id=" + UserId)) {
      if (resultSet.next()) {
        result.setId(resultSet.getInt(1));
        result.setEmail(resultSet.getString(2));
        result.setUserName(resultSet.getString(3));
        result.setPassword(resultSet.getString(4));
      } else {
        result = null;
      }
    }
    return result;
  }
  public void update(User user) throws SQLException {
    int id = user.getId();
    String email = user.getEmail();
    String username = user.getUserName();
    String password = user.getPassword();
    PreparedStatement statement;
    try (Connection conn = DbUtil.getConnection()) {
      statement = conn.prepareStatement(
          "update users set email = ?, username = ?, password = ? where id = ?;");
      statement.setString(1, email);
      statement.setString(2, username);
      statement.setString(3, hashPassword(password));
      statement.setInt(4, id);
      statement.executeUpdate();
    }
  }
  public void delete(int userId) throws SQLException {
    Connection conn = DbUtil.getConnection();
    PreparedStatement statement = conn.prepareStatement("delete from users where id = ?;");
    statement.setInt(1, userId);
    statement.executeUpdate();
  }
  public User [] findAll() throws SQLException {
    User [] users = new User[0];
    try (Connection conn = DbUtil.getConnection();
        Statement statement = conn.createStatement();
        ResultSet resultSet = statement.executeQuery("select * from users")) {
      while (resultSet.next()) {
        User u = new User();
        u.setId(resultSet.getInt(1));
        u.setEmail(resultSet.getString(2));
        u.setUserName(resultSet.getString(3));
        u.setPassword(resultSet.getString(4));
        users = addToArray(u, users);
      }
    }
    return users;
  }
  private User[] addToArray(User u, User[] users) {
    User[] tmpUsers = Arrays.copyOf(users, users.length + 1); // Tworzymy kopię tablicy powiększoną o 1.
    tmpUsers[users.length] = u; // Dodajemy obiekt na ostatniej pozycji.
    return tmpUsers; // Zwracamy nową tablicę.
  }
  public String hashPassword(String password) {
    return BCrypt.hashpw(password, BCrypt.gensalt());
  }
}
