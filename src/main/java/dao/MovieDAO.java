package dao;

import model.Movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MovieDAO {
    SQLConnection sqlConnection = new SQLConnection();
    Connection connection = sqlConnection.getConnection();
    public static String FIND_ALL = "SELECT * FROM movie;";

    public MovieDAO() throws SQLException, ClassNotFoundException {
    }

    public List<Movie> findAll() throws SQLException {
        List<Movie> movies = new ArrayList<>();
        PreparedStatement preparedStatement =connection.prepareStatement(FIND_ALL);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            int id = resultSet.getInt("id");
            String name = resultSet.getString("namemovie");
            int time = resultSet.getInt("time");
            String director = resultSet.getString("director");
            String image = resultSet.getString("image");
            String category = resultSet.getString("category");
            movies.add(new Movie(id, name, time, director, image, category));
        }
        return movies;
    }
}
