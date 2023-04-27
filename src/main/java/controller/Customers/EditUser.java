package controller.Customers;

import bean.User;
import model.Comment;
import model.Receipt;
import service.ReceiptService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "EditUser", value = "/EditUser")
public class EditUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String makh = request.getParameter("makh");

        List<String> listRole = new ArrayList<>();
        listRole.add("Thường");
        listRole.add("Admin");
        listRole.add("Quản Lí");
        request.setAttribute("listRole", listRole);

        List<Receipt> listctkh = ReceiptService.getctkh(makh);
        List<Comment> listcmt = ReceiptService.getListComment(makh);

        request.setAttribute("listmakh", listctkh);
        request.setAttribute("listcmt", listcmt);
        request.setAttribute("mkh", makh);

        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("auth");


        request.getRequestDispatcher("edit-user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
