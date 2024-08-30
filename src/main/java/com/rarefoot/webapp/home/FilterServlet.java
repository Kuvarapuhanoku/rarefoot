package com.rarefoot.webapp.home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/rareApplication/rareFilter")
public class FilterServlet extends HttpServlet {
	@Override
	protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String brand = req.getParameter("brand");
		String page = req.getParameter("page");
		
		
		ProductDto dto = new ProductDto();
		dto.setBrand(brand);
		
		HttpSession s = req.getSession();
		s.setAttribute("brand", dto);
		
		
		RequestDispatcher d = req.getRequestDispatcher(page);
		d.include(req, resp);
	}
}
