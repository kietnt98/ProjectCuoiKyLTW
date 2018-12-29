package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Test;
import DAO.EditTestDAO;

/**
 * Servlet implementation class EditTestController
 */
@WebServlet("/EditTestController")
public class EditTestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditTestController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset =utf-8");
		request.setCharacterEncoding("utf-8");
		 Integer testid = Integer.parseInt(request.getParameter("testid"));
		 String datetimestart= request.getParameter("datetimestart");
		 String datetimeend= request.getParameter("datetimeend");
		 Integer time= Integer.parseInt(request.getParameter("time"));
		 Integer number= Integer.parseInt(request.getParameter("numberquestion"));
	     Test test = new Test(testid, datetimestart, datetimeend, time, number);
	        EditTestDAO.EditTest(test);
	       // response.sendRedirect("list");
	        RequestDispatcher dispatcher = request.getRequestDispatcher("/HomeManageExamController");
	        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
