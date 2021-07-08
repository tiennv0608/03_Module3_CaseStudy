package controller;

import dao.MovieDAO;
import model.Movie;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "MovieServlet", urlPatterns = "/movies")
public class MovieServlet extends HttpServlet {
    MovieDAO movieDAO = new MovieDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "searchname":
                    findByName(request, response);
                    break;
                case "create":
                    showCreateMovie(request, response);
                    break;
                case "edit":
                    showFormEdit(request, response);
                    break;
                case "delete":
                    deleteMovie(request, response);
                    break;
                case "searchfilm":
                    searchCategoryFilm(request, response);
                    break;
                default:
                    findAll(request, response);
                    break;
            }
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }

    }

    private void searchCategoryFilm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String category = request.getParameter("name");
        List<Movie> movies = movieDAO.findByCategory(category);
        request.setAttribute("movies", movies);
        RequestDispatcher dispatcher = request.getRequestDispatcher("movie/listmovie.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    addMovie(request, response);
                    break;
                case "edit":
                    updateMovie(request, response);
                    break;
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ClassNotFoundException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Admin/listMovie.jsp");
        List<Movie> movies = movieDAO.findAll();
        request.setAttribute("movies", movies);
        requestDispatcher.forward(request, response);
    }

    public void findByName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String key = request.getParameter("key");
        try {
            List<Movie> movies = movieDAO.findByName(key);
            request.setAttribute("movies", movies);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Admin/listMovie.jsp");
        requestDispatcher.forward(request, response);
    }

    private void showCreateMovie(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("Admin/create.jsp");
        dispatcher.forward(request, response);
    }

    private void showFormEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String key = request.getParameter("id");
        Movie movie = movieDAO.findById(Integer.parseInt(key));
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Admin/edit.jsp");
        request.setAttribute("movie", movie);
        requestDispatcher.forward(request, response);
    }

    private void addMovie(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException, ClassNotFoundException {
        int id = Integer.parseInt(request.getParameter("movie_id"));
        String name = request.getParameter("movie_name");
        int age = Integer.parseInt(request.getParameter("movie_time"));
        String director = request.getParameter("movie_director");
        String image = request.getParameter("movie_image");
        String category = request.getParameter("movie_category");
        String description = request.getParameter("product_description");
        Movie movie = new Movie(id, name, age, director, image, category, description);
        movieDAO.create(movie);
        findAll(request, response);
    }

    private void deleteMovie(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        movieDAO.delete(id);
        findAll(request, response);
    }

    private void updateMovie(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException, ClassNotFoundException {
        int key = Integer.parseInt(request.getParameter("id"));
        Movie movie = movieDAO.findById(key);
        movie.setNameMovie(request.getParameter("movie_name"));
        movie.setTime(Integer.parseInt(request.getParameter("movie_time")));
        movie.setDirector(request.getParameter("movie_director"));
        movie.setDescription(request.getParameter("movie_description"));
        movie.setCategory(request.getParameter("movie_category"));
        movie.setImage(request.getParameter("movie_image"));
        movieDAO.update(movie);
        findAll(request, response);
    }
}