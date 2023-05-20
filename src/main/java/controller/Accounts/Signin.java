package controller.Accounts;

import bean.User;
import model.Customer;
import service.CustomerService;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Signin", value = "/doSignin")
public class Signin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("username");
        String pass = request.getParameter("pass");
        if( request.getParameter("pass").isEmpty()){
            request.setAttribute("Error", "Mật khẩu không được để trống!!!");
            request.getRequestDispatcher("/signin.jsp").forward(request, response);
        }else {
            User user = UserService.getInstance().checkLogin(uname, pass);
            if (user == null) {
                request.setAttribute("Error", "Tên đăng nhập hoặc mật khẩu không đúng!!!");
                request.getRequestDispatcher("/signin.jsp").forward(request, response);
            } else {
                if (user.checkStatus()) {
                    request.setAttribute("Error", "Tài Khoản Của Bạn Đã Bị Khóa! Không Thể Đăng Nhập!!");
                    request.getRequestDispatcher("/signin.jsp").forward(request, response);
                }
                HttpSession session = request.getSession(true);
                session.setAttribute("auth", user);
                Customer customer = CustomerService.getCusByIdAcc(user.getId());
                session.setAttribute("cust", customer);

                String previousPageUrl = (String) session.getAttribute("previousPageUrl");
                if (previousPageUrl != null && !previousPageUrl.contains("/doSignin") && !previousPageUrl.contains("signin.jsp")) {

                    response.sendRedirect(previousPageUrl);
                } else {
                    response.sendRedirect("/ListReceipt_Admin");
                }


            }
        }

    }
}
