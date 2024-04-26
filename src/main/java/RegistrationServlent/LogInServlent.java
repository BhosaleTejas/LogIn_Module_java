package RegistrationServlent;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import RegistrationDao.UserDao;
import RegistrationDao.UserDaoImp;

/**
 * Servlet implementation class LogInServlent
 */
@WebServlet("/LogInServlent")
public class LogInServlent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDao userDao = new UserDaoImp();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogInServlent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        System.out.print(username);
	        if (userDao.isValidUser(username, password)) {
	            HttpSession session = request.getSession();
	            session.setAttribute("username", username);
	            response.sendRedirect("Welcome.jsp");
	            //System.out.println("Hi - "+username);
	        }
	        else
	        {
	        	response.sendRedirect("LogIn.jsp?error=1");
	        	System.out.println("Error A gya");
	        }
	        
	}
	        
	}
		

