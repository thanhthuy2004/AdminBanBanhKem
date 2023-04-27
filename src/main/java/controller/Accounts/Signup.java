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
import java.io.PrintWriter;

@WebServlet(name = "Signup", value = "/Signup")
public class Signup extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        if(request.getParameter("name")==null){
            PrintWriter out= response.getWriter();
            int code = UserService.randomCode();
            out.println(code);

        }
        else{
        String user = request.getParameter("name");
        String pass = request.getParameter("pass");

            if (!UserService.checkEmail(email)) {
            request.setAttribute("Error", "Email đã được sử dụng!!");
            request.getRequestDispatcher("signup.jsp").forward(request,response);
        }

        else {
            User newUser = new User(email, pass, user);
            Customer newCus = new Customer();
            UserService.register(newUser);
            CustomerService.registerKH(newCus,newUser);
                PrintWriter out= response.getWriter();
            String url = null;
            if (request.getParameter("saveLogin").equals("true")) {
                HttpSession session = request.getSession(true);
                session.setAttribute("auth", newUser);
                out.println("./ListReceipt_Admin");
            } else {
                out.println("signin.jsp");
            }

        }
        }
    }
}
