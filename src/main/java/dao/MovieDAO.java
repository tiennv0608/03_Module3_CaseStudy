package dao;

import com.mysql.cj.xdevapi.Collection;
import model.Movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MovieDAO implements IDAO{
    SQLConnection sqlConnection = new SQLConnection();
    private final String FIND_ALL = "SELECT * FROM movie;";

    @Override
    public List<Movie> findAll() throws SQLException, ClassNotFoundException {
        List<Movie> movies = new ArrayList<>();
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL);
        ResultSet resultSet= preparedStatement.executeQuery();
        while (resultSet.next()){
            int id =resultSet.getInt("id");
            String nameMovie = resultSet.getString("nameMovie");
            int time = resultSet.getInt("time");
            String director = resultSet.getString("director");
            String image = resultSet.getString("image");
            String category = resultSet.getString("category");
            String description = resultSet.getString("description");
            movies.add(new Movie(id, nameMovie, time, director, image, category, description));
        }
        return movies;
    }

    @Override
    public void create(Object o) {

    }

    @Override
    public void update(Object o) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public Object findById(int id) {
        return null;
    }
}
