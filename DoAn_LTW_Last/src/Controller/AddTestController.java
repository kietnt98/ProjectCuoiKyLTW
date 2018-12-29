package Controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Test;
import DAO.AddTestDAO;



/**
 * Servlet implementation class AddTestController
 */
@WebServlet("/AddTestController")
public class AddTestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTestController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset =utf-8");
		request.setCharacterEncoding("utf-8");
		String datetimestart = request.getParameter("datetimestart");
		String datetimeend = request.getParameter("datetimeend");
	    Integer time = Integer.parseInt(request.getParameter("time"));
	    Integer number = Integer.parseInt(request.getParameter("number_question"));
	    Integer testtypeid = Integer.parseInt(request.getParameter("testtypeid"));
	    Integer subjectid = Integer.parseInt(request.getParameter("subjectid"));
	    Test test = new Test(datetimestart, datetimeend, time, number, testtypeid, subjectid);
	    AddTestDAO.AddTest(test);
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
