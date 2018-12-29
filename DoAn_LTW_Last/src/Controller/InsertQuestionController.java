package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Question;
import DAO.InsertQuestionDAO;

/**
 * Servlet implementation class InsertQuestionController
 */
@WebServlet("/InsertQuestionController")
public class InsertQuestionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertQuestionController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset =utf-8");
		request.setCharacterEncoding("utf-8");
		Integer testid = Integer.parseInt(request.getParameter("test_id"));
		System.out.println(testid);
		Integer number = Integer.parseInt(request.getParameter("number"));
        String contentquestion = request.getParameter("contentquestion");
        String optionA = request.getParameter("optionA");
        String optionB = request.getParameter("optionB");
        String optionC = request.getParameter("optionC");
        String optionD = request.getParameter("optionD");
        String correctoption = request.getParameter("correctoption");
        Question q= new Question(number, contentquestion,optionA,optionB,optionC,optionD,correctoption);
        InsertQuestionDAO.InsertQuestion(q);
        q.setQuestionid(InsertQuestionDAO.GetQuestionid(q.getContentquestion()));
        InsertQuestionDAO.InsertOption(q);
        InsertQuestionDAO.InsertQuesttionOfTest(testid,q.getQuestionid());
        RequestDispatcher dispatcher = request.getRequestDispatcher("/DetailTestController?test_id="+testid);
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
