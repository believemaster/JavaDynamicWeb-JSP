package com.yanik.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class SiteController
 */
public class SiteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SiteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		switch(action) {
		case "login":
				request.getRequestDispatcher("login.jsp").forward(request, response);
				break;
				
		default: 
				break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		switch (action) {
		case "loginSubmit":
			authenticate(request, response);
			break;
			
	default: 
			break;
		}
	}
	
	public void authenticate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(username.equals("yanikkumar") && password.equals("yanikkumar")) {
			//			invalidating any session if any
			request.getSession().invalidate();
			//			creating new session
			HttpSession newSession = request.getSession(true);
			newSession.setMaxInactiveInterval(300);
			newSession.setAttribute("username", username);
			
			// 			setting cookie (depending upon cookie for login logout feature is not a good practice and is not useful therefore session is a good practice)
			/*
			Cookie cUsername = new Cookie("username", username);
			response.addCookie(cUsername);
			*/

			String encode = response.encodeURL(request.getContextPath());  			// session id will be shown in url if cookies are off (by using thing method in encoding)
			response.sendRedirect(encode + "/MemberAreaController?action=memberArea");
		} else {
			response.sendRedirect(request.getContextPath() + "/SiteController?action=login");
		}
	}

}
