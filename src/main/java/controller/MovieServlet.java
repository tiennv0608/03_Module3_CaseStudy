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
        if (action == null){
            action = "";
        }
        switch (action){
            case "search":
                findByName(request, response);
                break;
            case "create":
                showCreateMovie(request, response);
                break;
            case "delete":
                try {
                    deleteMovie(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }
                break;
            case "search1":
                try {
                    searchCategoryFilm(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;

            default:
                try {
                    findAll(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }
                break;
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
        if (action == null){
            action="";
        }
        switch (action){
            case "create":
                try {
                    addMovie(request,response);
                } catch (SQLException | ClassNotFoundException e) {
                    e.printStackTrace();
                }
                break;


        }

    }
    public void findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ClassNotFoundException {
        List<Movie> movies = movieDAO.findAll();
        request.setAttribute("movies", movies);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Admin/listMovie.jsp");
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
        dispatcher.forward(request,response);
    }
    private void addMovie(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException, ClassNotFoundException {
        int id =Integer.parseInt(request.getParameter("movie_id"));
        String name = request.getParameter("movie_name");
        int time =Integer.parseInt(request.getParameter("movie_time"));
        String director = request.getParameter("movie_director");
        String image = request.getParameter("srcimg");
        String category = request.getParameter("movie_category");
        String description = request.getParameter("product_description");
        Movie movie = new Movie(id, name, time, director, image, category, description);
        movieDAO.create(movie);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Admin/create.jsp");
        dispatcher.forward(request, response);
        findAll(request, response);
    }


    private void deleteMovie(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        movieDAO.delete(id);
        findAll(request, response);
    }

    private void findByNameMovie(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String valueSearch = request.getParameter("searchbyname");
        List<Movie> movies=null;
        try {
           movies = movieDAO.findByNameMovie(valueSearch);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("movies",movies);
        request.getRequestDispatcher("movie/listmovie").forward(request,response);

    }

}
