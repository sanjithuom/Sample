import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Get the parameters from the request
        String param1 = request.getParameter("param1");
        String param2 = request.getParameter("param2");

        int result = Integer.parseInt(param1) + Integer.parseInt(param2);
        String responseResult = "The result is " + result;

        response.setContentType("text/plain");
        response.getOutputStream().write(responseResult.getBytes());
    }

}
