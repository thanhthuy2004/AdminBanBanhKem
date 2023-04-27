package controller.Recipts;

import bean.User;
import model.*;
import service.ReceiptService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminEditOrder", value = "/admin/AdminEditOrder")
public class AdminEditOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String madh = request.getParameter("id");
        request.setAttribute("listStatus", ReceiptService.getAllStatusNameOrder());

        String tenKH = request.getParameter("tenkh");
        Receipt receipt = ReceiptService.getReceiptByMahd(madh);
        List<Bill_Detail> listcthdOfKH = ReceiptService.getcthdUser(madh);
        request.setAttribute("listcthdOfKH", listcthdOfKH);
        request.setAttribute("receipt", receipt);
        request.setAttribute("tenkh", tenKH);


        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("auth");



        request.getRequestDispatcher("edit-order.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
