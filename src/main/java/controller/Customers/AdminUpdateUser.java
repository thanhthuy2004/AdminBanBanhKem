package controller.Customers;

import bean.User;
import service.ReceiptService;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AdminUpdateUser", value = "/AdminUpdateUser")
public class AdminUpdateUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("auth");

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        String makh = request.getParameter("makh");
        String r = request.getParameter("role");

        int role = 0;
        if(r.equals("Thường")){
            role = 0;
        } else if (r.equals("Admin")){
            role = 1;
        } else if (r.equals("Quản Lí")){
            role = 2;
        }
        ReceiptService.updateRole(role, makh);

        UserService.updateProfile(username, phone, address, email, makh, user);


        response.sendRedirect("./EditUser?makh="+ request.getParameter("makh"));
    }
}
