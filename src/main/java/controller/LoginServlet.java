package controller;

import dao.UserDAO;
import model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet", urlPatterns = "/home")
public class LoginServlet extends HttpServlet {
    private UserDAO userDAO = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher;

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "view":
                try {
                    showFormView(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "delete":
                showFormDelete(request, response);
                break;
            default:
                request.getRequestDispatcher("listmovie.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "login":
                login(request, response);
                break;
            case "signup":
                signup(request, response);
                break;
            case "edit":
                try {
                    updateUser(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "delete":
                try {
                    deleteUser(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
        }
    }

    private void showHomePageUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String username = request.getParameter("username");
        User user = userDAO.findByUsername(username);
        request.setAttribute("user", user);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/listmovie.jsp");
        dispatcher.forward(request, response);
    }

    protected void login(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserDAO userDAO = new UserDAO();
        User user = userDAO.login(username, password);
        if (user == null) {
            request.setAttribute("message", "Wrong user or password");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            request.setAttribute("user", user);
            request.getRequestDispatcher("user/listmovie.jsp").forward(request, response);
        }
    }

    protected void signup(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        String email = request.getParameter("email");
        String fullname = request.getParameter("fullname");
        String year = request.getParameter("year");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        if (!(password.equals(repassword))) {
            request.setAttribute("mess", "Xac nhan mat khau khong trung khop");
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
        } else {
            if ((userDAO.checkUserExist(username))) {
                request.setAttribute("mess", "Ten dang nhap da ton tai!");
                request.getRequestDispatcher("/signup.jsp").forward(request, response);
            } else {
                User user = new User(username, password, gender, fullname, Integer.parseInt(year), email, phone, address);
                userDAO.create(user);
                request.setAttribute("message", "Dang ky thanh cong");
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
        }
    }

    private void showFormView(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String key = request.getParameter("key");
        User user = userDAO.findByUsername(key);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("user/view.jsp");
        request.setAttribute("user", user);
        requestDispatcher.forward(request, response);
    }

    private void showFormDelete(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/delete.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String username = request.getParameter("username");
        User user = userDAO.findByUsername(username);
        user.setFullName(request.getParameter("fullname"));
        user.setGender(request.getParameter("gender"));
        user.setDob(Integer.parseInt(request.getParameter("year")));
        user.setPhone(request.getParameter("phone"));
        user.setEmail(request.getParameter("email"));
        user.setAddress(request.getParameter("address"));
        userDAO.update(user);
        showHomePageUser(request, response);
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String key = request.getParameter("key");
        userDAO.deleteByUsername(key);
        RequestDispatcher dispatcher = request.getRequestDispatcher("listmovie.jsp");
        dispatcher.forward(request, response);
    }
}
