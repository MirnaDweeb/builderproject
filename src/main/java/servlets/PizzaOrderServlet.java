package servlets;

import java.io.IOException;

import builderproject.ConcretePizzaBuilder;
import builderproject.Pizza;
import builderproject.PizzaBuilder;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/orderPizza")
public class PizzaOrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String size = request.getParameter("size");
        String crust = request.getParameter("crust");
        String[] toppings = request.getParameterValues("toppings");

        PizzaBuilder builder = new ConcretePizzaBuilder();
        builder.setSize(size).setCrust(crust);
        for (String topping : toppings) {
            builder.addTopping(topping);
        }
        Pizza pizza = builder.build();

        // Forward to a JSP page to display the pizza order summary
        request.setAttribute("pizza", pizza);
        RequestDispatcher dispatcher = request.getRequestDispatcher("pizzaSummary.jsp");
        dispatcher.forward(request, response);
    }
}