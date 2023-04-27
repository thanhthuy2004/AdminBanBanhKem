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
import java.util.List;

@WebServlet(name = "EditOrderUpdateDelivery", value = "/admin/EditOrderUpdateDelivery")
public class EditOrderUpdateDelivery extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String dayD = request.getParameter("dayD");
        String address = request.getParameter("address");
        String id = request.getParameter("id");
        String stName = request.getParameter("state");

        List<String> statusName = ReceiptService.getAllStatusNameOrder();
        int st = 0;
        if(stName.equals(statusName.get(0))){
            st = 0;
        } else if (stName.equals(statusName.get(1))){
            st = 1;
        } else if (stName.equals(statusName.get(2))){
            st = 2;
        }else if (stName.equals(statusName.get(3))){
            st = 3;
        }else if (stName.equals(statusName.get(4))){
            st = 4;
        }
        ReceiptService.updateDeliveryInBill(id, dayD, address);

        ReceiptService.updateState(id, st);


        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("auth");

        request.setAttribute("id", id);
//        response.sendRedirect("./AdminEditOrder?id="+ id);
    }
}
