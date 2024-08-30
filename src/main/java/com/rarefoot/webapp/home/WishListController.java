package com.rarefoot.webapp.home;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rarefoot.webapp.login.LoginDto;

@WebServlet("/rareApplication/rarewishlist")
public class WishListController extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int product_id = Integer.parseInt(req.getParameter("id"));
	List<LoginDto> user = (List<LoginDto>) req.getSession().getAttribute("credentials");
	System.out.println("users : " + user);
	
	ProductDao dao = new ProductDao();
	List<ProductDto> dto = (List<ProductDto>) dao.getProduct(product_id);
	System.out.println("products : " + dto);
	
	WishListDto wdto = new WishListDto();
	wdto.setProduct(dto);
	wdto.setUser(user);
	
	System.out.println(wdto);
//	dao.saveWishList(wdto);
}
}
