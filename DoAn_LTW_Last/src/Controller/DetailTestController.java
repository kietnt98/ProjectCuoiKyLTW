package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import BEAN.Question;
import BEAN.Test;
import DAO.DetailDAO;
import DAO.TestDAO;


/**
 * Servlet implementation class DetailTestController
 */
@WebServlet("/DetailTestController")
public class DetailTestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailTestController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer test_id = Integer.parseInt(request.getParameter("test_id")); 
		Test test= TestDAO.GetTest(test_id);
		Integer number = test.getNumber_question();
		List<Question> listquestion = DetailDAO.ListQuestion(test_id);
		if(listquestion.size() == 0 || listquestion.size()< number)
		{
			request.setAttribute("test_id", test_id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/View/InsertQuestion.jsp");
	        dispatcher.forward(request, response);
			System.out.println("ádfgh");
		}
		else {
		 request.setAttribute("listquestion", listquestion);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/View/ListQuestionOfTest.jsp");
        dispatcher.forward(request, response);}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
