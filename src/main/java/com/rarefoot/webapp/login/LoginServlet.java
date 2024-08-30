package com.rarefoot.webapp.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login/rarelogin")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("pass");
		
		
		
		LoginDto dto = new LoginDto();
		dto.setEmail(email);
		dto.setPassword(password);
		LoginDao dao = new LoginDao();
		LoginDto dto1 = (LoginDto)dao.validateCredentials(dto);
		
//		System.out.println("credentials" + dto1);
		
		HttpSession session = req.getSession();
		session.setAttribute("credentials", dto1);
		
//		LoginDao dao = new LoginDao();
		PrintWriter out = resp.getWriter();
		try {
			dao.validateCredentials(dto);

			resp.sendRedirect("../rareApplication/rareHome.jsp");
		} catch (Exception e) {
			out.println("Enter Appropriate credentials");
		}
		
	}
	
}
