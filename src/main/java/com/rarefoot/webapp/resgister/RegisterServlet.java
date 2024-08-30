package com.rarefoot.webapp.resgister;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register/rareregister")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("lname") + " " + req.getParameter("fname");
		String email = req.getParameter("email");
		String password = req.getParameter("pass");
		
		if(username == "" || email == "" || password == "") {
			PrintWriter out = resp.getWriter();
			out.println("Fill all the fields");
		}else {
			RareDto dto = new RareDto();
			dto.setUsername(username);
			dto.setEmail(email);
			dto.setPassword(password);
		
		RegisterDao dao = new RegisterDao();
		
			String save = dao.save(dto);
			PrintWriter out = resp.getWriter();
			out.println(save);
		
		}
	}

}
