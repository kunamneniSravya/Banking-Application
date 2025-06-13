package register;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register/WithdrawsuccessServlet")
public class WithdrawsuccessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CustomerDao customerDao;

    public void init() {
        customerDao = new CustomerDao();
    }
    public WithdrawsuccessServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getSession().getAttribute("loggedIn") != null && (boolean) request.getSession().getAttribute("loggedIn")) {
        	String accountNumber = (String) request.getSession().getAttribute("accountNumber");
            AccountDetails accountDetails = customerDao.getAccountDetails(accountNumber);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/withdrawsuccess.jsp");
            request.setAttribute("accountDetails", accountDetails);
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect("LoginServlet");
        }
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
