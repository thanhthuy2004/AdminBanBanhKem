package controller.Customers;

import bean.User;
import service.ReceiptService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AdminLockCusInEditUser", value = "/admin/AdminLockCusInEditUser")
public class AdminLockCusInEditUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String makh = request.getParameter("makh");
        request.setAttribute("mkh", makh);
        ReceiptService.updateStatusUser(makh);
        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("auth");

        response.sendRedirect("./EditUser?makh="+ request.getParameter("makh"));
    }
}
