package controller;

import dao.UserDAO;
import model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher;

        String action = request.getParameter("action");
        if (action==null){
            action= "";
        }
        switch (action){
            case "login":
                login(request, response);
                break;
            case "signup":
                signup(request,response);
                break;
            default:
               request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserDAO userDAO = new UserDAO();
        User user = userDAO.login(username, password);
        if (user == null) {
            request.setAttribute("message","Wrong user or password");
            request.getRequestDispatcher("login.jsp").forward(request, response);

        } else {
            response.sendRedirect("home");
        }


    }

    protected void signup(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        String email = request.getParameter("email");
        String fullname = request.getParameter("fullname");
        String year = request.getParameter("year");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        if(!(password.equals(repassword))){

            request.getRequestDispatcher("/signup.jsp").forward(request,response);
            request.setAttribute("mess1","Xac nhan mat khau khong dung!");
        }
        else {
            if (!(new UserDAO().checkUserExist(username))){
                request.setAttribute("mess2","Ten dang nhap da ton tai!");
                request.getRequestDispatcher("/signup.jsp").forward(request,response);
            } else {
                User user = new User(username, password, gender, fullname, Integer.parseInt(year), email, phone, address);
                new UserDAO().create(user);
                request.getRequestDispatcher("login.jsp").forward(request,response);
            }
        }

    }


}
