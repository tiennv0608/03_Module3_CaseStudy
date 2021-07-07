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
            action="";
        }
        switch (action){
            case "create":
                showCreateMovie(request,response);
                break;
            case "search":
                try {
                    searchCategoryFilm(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            default:
                display(request, response);
                break;
        }

    }
    private void display(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("movie/listmovie.jsp");
        try {
            List<Movie> movies = movieDAO.findAll();
            request.setAttribute("movies", movies);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        requestDispatcher.forward(request, response);
    }
    private void showCreateMovie(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("movie/create.jsp");
        dispatcher.forward(request,response);
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
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
        }
    }
    private void addMovie(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id =Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("nameMovie");
        int age =Integer.parseInt(request.getParameter("time"));
        String director = request.getParameter("director");
        String image = request.getParameter("image");
        String category = request.getParameter("category");
        String description = request.getParameter("description");
        Movie movie = new Movie(id, name, age, director, image, category, description);
        movieDAO.create(movie);
        display(request, response);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/create.jsp");
        dispatcher.forward(request, response);
    }
}
