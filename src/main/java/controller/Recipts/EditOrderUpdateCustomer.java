package controller.Recipts;

import bean.User;
import service.ReceiptService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "EditOrderUpdateCustomer", value = "/EditOrderUpdateCustomer")
public class EditOrderUpdateCustomer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String usernameRE = request.getParameter("usernameRE");
        String phoneRE = request.getParameter("phoneRE");
        String mailRE = request.getParameter("mailRE");
        String note = request.getParameter("note");
        String id = request.getParameter("id");



        ReceiptService.updateInfoCustomerInBill(id, usernameRE, phoneRE, mailRE);
        ReceiptService.updateNoteInBill(id, note);

        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("auth");


        request.setAttribute("id", id);
//        response.sendRedirect("./AdminEditOrder?id="+ request.getParameter("id"));
    }
}
