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


@WebServlet("/Admin/raredelete")
public class DeleteProductServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("sid"));
		
		
		ProductDto dto = new ProductDto();
		dto.setSid(id);
		
		HttpSession session = req.getSession();
		session.setAttribute("raredelete", dto);
		
		ProductDao dao = new ProductDao();
		dao.removeProduct(dto);
		
		
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		out.println("id: " + id);
		
		RequestDispatcher d =  req.getRequestDispatcher("edit.jsp");
		d.include(req, resp);
	}
}
