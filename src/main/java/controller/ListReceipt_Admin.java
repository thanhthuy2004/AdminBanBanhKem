package controller;

import model.Receipt;
import service.ReceiptService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ListReceipt_Admin", value = "/ListReceipt_Admin")
public class ListReceipt_Admin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Receipt> lr = ReceiptService.getData();
        request.setAttribute("listreceipt", lr);

        String doanhthuthangnay = Receipt.formatNum(ReceiptService.getDoanhThuThisMonth());
        request.setAttribute("doanhthuthangnay", doanhthuthangnay);

        String doanhthuhomnay = Receipt.formatNum(ReceiptService.getDoanhThuToDay());
        request.setAttribute("doanhthuhomnay", doanhthuhomnay);

        int solgSPbandcthangnay = ReceiptService.getNumberProToDay();
        request.setAttribute("solgSPbandcthangnay", solgSPbandcthangnay);

        int soDHhomnay = ReceiptService.getAllReceiptToDay().size();
        request.setAttribute("soDHhomnay", soDHhomnay);

        Map<String, Integer> map = ReceiptService.getAllCakeThisMonth();
        request.setAttribute("map-hot", map);

        request.getRequestDispatcher("admin-web.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
