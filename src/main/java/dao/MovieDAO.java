package dao;

import com.mysql.cj.xdevapi.Collection;
import model.Movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MovieDAO implements IDAO<Movie> {
    SQLConnection sqlConnection = new SQLConnection();
    private final String FIND_ALL = "SELECT * FROM movie;";
    private final String FIND_BY_NAME = "SELECT * FROM movie WHERE nameMovie LIKE ?";
    private final String ADD_FILM = "insert into movie(id,nameMovie,time,director,image,category, description) value(?,?,?,?,?,?,?);";
    private final String SEARCH_CATEGORY = "select * from movie where category like ?";
    private final String DELETE_BY_ID = "DELETE FROM movie WHERE id = ?";

    @Override
    public List<Movie> findAll() throws SQLException, ClassNotFoundException {
        List<Movie> movies = new ArrayList<>();
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
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
    public void create(Movie movie) throws SQLException {
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(ADD_FILM);
        preparedStatement.setInt(1, movie.getId());
        preparedStatement.setString(2, movie.getNameMovie());
        preparedStatement.setInt(3, movie.getTime());
        preparedStatement.setString(4, movie.getDirector());
        preparedStatement.setString(5, movie.getImage());
        preparedStatement.setString(6, movie.getCategory());
        preparedStatement.setString(7, movie.getDescription());
        preparedStatement.executeUpdate();
    }

    @Override
    public void update(Movie movie) {

    }

    @Override
    public void delete(int id) throws SQLException, ClassNotFoundException {
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(DELETE_BY_ID);
        preparedStatement.setInt(1, id);
        preparedStatement.executeUpdate();
    }

    @Override
    public Movie findById(int id) {
        return null;
    }

    @Override
    public List<Movie> findByName(String name) throws SQLException, ClassNotFoundException {
        List<Movie> movies = new ArrayList<>();
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_NAME);
        preparedStatement.setString(1, "%" + name + "%");
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
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

    public List<Movie> findByCategory(String category) throws SQLException {
        List<Movie> movieList = new ArrayList<>();
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_CATEGORY);
        preparedStatement.setString(1, category);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String nameMovie = resultSet.getString("nameMovie");
            int time = resultSet.getInt("time");
            String director = resultSet.getString("director");
            String image = resultSet.getString("image");
            String category1 = resultSet.getString("category");
            String description = resultSet.getString("description");
            movieList.add(new Movie(id, nameMovie, time, director, image, category1, description));
        }
        return movieList;
    }

    public List<Movie> findByNameMovie(String name) throws SQLException{
        List<Movie> movies = new ArrayList<>();
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_NAME);
        preparedStatement.setString(1,"%"+name+"%");
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String nameMovie = resultSet.getString("nameMovie");
            int time = resultSet.getInt("time");
            String director = resultSet.getString("director");
            String image = resultSet.getString("image");
            String category1 = resultSet.getString("category");
            String description = resultSet.getString("description");
            movies.add(new Movie(id, nameMovie, time, director, image, category1, description));
        }
        return movies;
    }
}
