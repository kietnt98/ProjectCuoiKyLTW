package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Account;
import DAO.LoadListManageQuestionDAO;
import DAO.LoadListManageExamDAO;
import DAO.LoadListStudentDAO;

/**
 * Servlet implementation class HomeAdminController
 */
@WebServlet("/HomeAdminController")
public class HomeAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeAdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 List<Account> liststudent = LoadListStudentDAO.ListStudent();
		 List<Account> listmanagequestion= LoadListManageQuestionDAO.ListManageQuestion();
		 List<Account> listmanageexam= LoadListManageExamDAO.ListManageExam();
	        request.setAttribute("liststudent", liststudent);
	        request.setAttribute("listmanagequestion", listmanagequestion);
	        request.setAttribute("listmanageexam", listmanageexam);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("View/HomeAdmin.jsp");
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
