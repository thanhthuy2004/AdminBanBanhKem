package controller.Customers;

import bean.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AdminUpdateProfile", value = "/AdminUpdateProfile")
public class AdminUpdateProfile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession(true);
        User auth = (User) session.getAttribute("auth");

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        PrintWriter out = response.getWriter();
//              7. Hệ thống kiếm tra
        if(!email.contains("@") || phone.length() > 10){
//            7.1. Nếu email thiếu kí tự @ hoặc số điện thoại lớn hơn 10 số thì PrintWriter in ra 1
            out.println(1);
            out.flush();
            out.close();
        }else{
//            7.2. Nếu email không thiếu kí tự @ hoặc số điện thoại không lớn hơn 10 số thì PrintWriter in ra 0
            out.println(0);
            out.flush();
            out.close();
//              7.3 Gọi đến hàm updateProfile(username, phone, address, email, auth)
            UserService.updateProfile(username, phone, address, email, auth);
        }

        request.getRequestDispatcher("edit-profile.jsp").forward(request, response);
    }
}
