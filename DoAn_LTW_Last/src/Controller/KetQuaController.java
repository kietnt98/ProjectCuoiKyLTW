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
 * Servlet implementation class KetQuaController
 */
@WebServlet("/KetQuaController")
public class KetQuaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KetQuaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer test_id = Integer.parseInt(request.getParameter("testid"));
		Test test= TestDAO.GetTest(test_id);
		List<Question> listquestion = DetailDAO.ListQuestion(test_id);
		int tongCau= test.getNumber_question();
		float diem1cau = 10/tongCau;
		for (Question question : listquestion) {
			String x;
			x= request.getParameter(""+question.getNumber());
			String kq= question.getCorrectoption();
			if(x == null)
			{
				x="null";
			}
			if(!x.equals(kq))
			{
				tongCau--;
			}
		}
		float diem= diem1cau* tongCau;
		System.out.println(diem);
		request.setAttribute("tongCau", tongCau);
		request.setAttribute("numberquestion", test.getNumber_question());
		request.setAttribute("diem", diem);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/View/KetQua.jsp");
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
