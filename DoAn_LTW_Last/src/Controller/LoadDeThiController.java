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
 * Servlet implementation class LoadDeThiController
 */
@WebServlet("/LoadDeThiController")
public class LoadDeThiController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadDeThiController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer test_id = Integer.parseInt(request.getParameter("test_id")); 
		Test test= TestDAO.GetTest(test_id);
		Integer time = test.getTime();
		System.out.println(time);
		List<Question> listquestion = DetailDAO.ListQuestion(test_id);
		request.setAttribute("testid", test_id);
		request.setAttribute("listquestion", listquestion);
		request.setAttribute("time", time);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/View/Thi.jsp");
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
