package dao;

import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class UserDAO implements IDAO<User> {
    private static final String LOG_IN = "select * from  user where username = ? and password = ?";
    private static final String SIGNUP = "insert into user values(?,?,?,?,?,?,?,?);";
    private static final String CHECK_EXIST_USER = "select * from user where username = ?";
    private static final String UPDATE = "update user set fullname = ?, gender = ?, yearofbirth = ?, email = ?, phone = ?, address = ? where username = ?;";

    SQLConnection sqlConnection = new SQLConnection();

    @Override
    public List<User> findAll() {
        return null;
    }

    @Override
    public void create(User user) {
        try (Connection connection = sqlConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SIGNUP);) {
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getFullName());
            preparedStatement.setString(4, user.getGender());
            preparedStatement.setInt(5, user.getDob());
            preparedStatement.setString(6, user.getEmail());
            preparedStatement.setString(7, user.getPhone());
            preparedStatement.setString(8, user.getAddress());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(User user) {
        Connection connection = sqlConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
            preparedStatement.setString(1, user.getFullName());
            preparedStatement.setString(2, user.getGender());
            preparedStatement.setInt(3, user.getDob());
            preparedStatement.setString(4, user.getEmail());
            preparedStatement.setString(5, user.getPhone());
            preparedStatement.setString(6, user.getAddress());
            preparedStatement.setString(7, user.getUsername());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean checkUserExist(String username) {
        Connection connection = sqlConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(CHECK_EXIST_USER);
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public void delete(int id) {

    }

    @Override
    public User findById(int id) {
        return null;
    }

    @Override
    public List<User> findByName(String name) throws SQLException, ClassNotFoundException {
        return null;
    }

    public User login(String username, String password) {
        Connection connection = sqlConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(LOG_IN);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                return new User(username, password, resultSet.getString(3), resultSet.getString(4), resultSet.getInt(5),
                        resultSet.getString(6), resultSet.getString(7), resultSet.getString(8));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public User findByUsername(String username) throws SQLException {
        try (Connection connection = sqlConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(CHECK_EXIST_USER)) {
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String password = resultSet.getString("password");
                String fullname = resultSet.getString("fullname");
                String gender = resultSet.getString("gender");
                int year = Integer.parseInt(resultSet.getString("yearofbirth"));
                String email = resultSet.getString("email");
                String phone = resultSet.getString("phone");
                String address = resultSet.getString("address");
                return new User(username, password, gender, fullname, year, email, phone, address);
            }
        }
        return null;
    }
}
