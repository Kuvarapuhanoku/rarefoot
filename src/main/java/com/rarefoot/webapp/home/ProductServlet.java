package com.rarefoot.webapp.home;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/rareApplication/rareproduct")
public class ProductServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("sid"));
		
		ProductDto dto = new ProductDto();
		dto.setSid(id);
		
//		PrintWriter out = resp.getWriter();
//		out.println(id);
		
		HttpSession session = req.getSession();
		session.setAttribute("mdto", dto);
		
		
		
		RequestDispatcher d = req.getRequestDispatcher("rareProduct.jsp");
		d.forward(req, resp);
	}
	
}
