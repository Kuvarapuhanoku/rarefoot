package com.rarefoot.webapp.home;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig(
	    fileSizeThreshold = 1024 * 1024 * 1,  // 1 MB
	    maxFileSize = 1024 * 1024 * 10,       // 10 MB
	    maxRequestSize = 1024 * 1024 * 50      // 50 MB
	)
@WebServlet("/Admin/addProduct")
public class AddProductServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Part file = req.getPart("shoeImg");
		
		String name = req.getParameter("shoeName");
		String shoeimg = file.getSubmittedFileName();
		String uploadPath = "C:/Users/kuvar/eclipse-workspace/advance java/rarefoot/src/main/webapp/rareApplication/AppImages/Shoes/"+shoeimg;
		int rating = Integer.parseInt(req.getParameter("rating"));
		double prize = Integer.parseInt(req.getParameter("prize"));
		int stock = Integer.parseInt(req.getParameter("stock"));
		String category = req.getParameter("category");
		String brand = req.getParameter("brand");
		
		try {
			FileOutputStream fileUpload = new FileOutputStream(uploadPath);
			InputStream fileInput = file.getInputStream();
			
			byte[] data = new byte[fileInput.available()];
			fileInput.read(data);
			fileUpload.write(data);
			fileUpload.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		ProductDto dto = new ProductDto();
		dto.setShoeName(name);
		dto.setShoeImage(shoeimg);
		dto.setRating(rating);
		dto.setPrize(prize);
		dto.setStock(stock);
		dto.setCategory(category);
		dto.setBrand(brand);
		
		ProductDao dao = new ProductDao();
		String msg = dao.saveProduct(dto);
		
		resp.setContentType("text/html");
		
		PrintWriter out = resp.getWriter();
		out.println(msg);
		
		RequestDispatcher d = req.getRequestDispatcher("productform.jsp");
		d.include(req, resp);
	}
}
