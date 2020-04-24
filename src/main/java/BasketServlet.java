import DBconnection.BasketDataBase;
import DBconnection.ProductDataBase;
import Data.Basket;
import Data.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/basket")
public class BasketServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();
        String idProduct = request.getParameter("buyID");

        BasketDataBase.insert(ProductDataBase.selectOne(Integer.parseInt(idProduct)));
        String path = request.getContextPath() +"/user";
        response.sendRedirect(path);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Product> products = BasketDataBase.select();
        for (Object var:products) {
            System.out.println(var);
        }
        request.setAttribute("products", products);
        getServletContext().getRequestDispatcher("/basket.jsp").forward(request, response);
        System.out.println("BasketServletGo");
    }
}
