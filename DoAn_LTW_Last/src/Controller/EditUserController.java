package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Account;
import DAO.EditUserDAO;

/**
 * Servlet implementation class EditUserController
 */
@WebServlet("/EditUserController")
public class EditUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset =utf-8");
		request.setCharacterEncoding("utf-8");
		 Integer userid = Integer.parseInt(request.getParameter("userid"));
		 String username= request.getParameter("username");
		 String fullname= request.getParameter("fullname");
		 String birthday= request.getParameter("birthday");
		 String country= request.getParameter("country");
		 String phone= request.getParameter("phone");
		 String img= request.getParameter("img");
		 Integer classid = Integer.parseInt(request.getParameter("classid"));
	      Account acc = new Account(userid, username, fullname, birthday, country, phone, img, classid);
	        EditUserDAO.EditUser(acc);
	       // response.sendRedirect("list");
	        RequestDispatcher dispatcher = request.getRequestDispatcher("/HomeAdminController");
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
