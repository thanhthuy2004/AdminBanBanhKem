package controller.Products;

import bean.User;
import service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "UnHideImage", value = "/UnHideImage")
public class UnHideImage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String img = request.getParameter("img");
        ProductService.UnHidenImg(img);

        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("auth");


        request.getRequestDispatcher("Edit_Product?idP="+request.getParameter("idP")).forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}