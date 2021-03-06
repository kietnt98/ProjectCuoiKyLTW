package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Account;
import DAO.AddUserDAO;

/**
 * Servlet implementation class AddUserController
 */
@WebServlet("/AddUserController")
public class AddUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset =utf-8");
		request.setCharacterEncoding("utf-8");
		 String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        String fullname = request.getParameter("fullname");
	        String birthday = request.getParameter("birthday");
	        String country = request.getParameter("country");
	        String phone = request.getParameter("phone");
	        String img = request.getParameter("img");
	        //Integer roleid = Integer.parseInt(request.getParameter("roleid"));
	        //Integer classid = Integer.parseInt(request.getParameter("classtid"));
	        Integer roleid = 3;
	        Integer classid = 0;
	        Account acc = new Account(username, password, fullname, birthday, country, phone, img, roleid, classid);
	        AddUserDAO.AddUser(acc);
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
