package com.rarefoot.webapp.home;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.rarefoot.webapp.login.LoginDto;

public class ProductDao {
	private SessionFactory sf;
	private Session session;
	private Transaction tx;
	{
		Configuration con = new Configuration().configure()
				.addAnnotatedClass(ProductDto.class)
				.addAnnotatedClass(WishListDto.class)
				.addAnnotatedClass(LoginDto.class); 
		sf = con.buildSessionFactory();
		session = sf.openSession();
	}
	
	public List<ProductDto> getProducts() {
		session = sf.openSession();
		tx = session.beginTransaction();
		List<ProductDto> list = session.createQuery("from ProductDto", ProductDto.class).list();
		session.close();
		return list;
	}
	
	public ProductDto getProduct(int id) {
		return session.get(ProductDto.class, id);
	}

	public String saveProduct(ProductDto dto) {
		session = sf.openSession();
		tx = session.beginTransaction();
		session.persist(dto);
		tx.commit();
		session.close();
		
		return dto.getShoeName() + " is saved successfully";
	}

	public void removeProduct(ProductDto dto) {
		session = sf.openSession();
		tx = session.beginTransaction();
		session.remove(dto);
		tx.commit();
		session.close();
	}
	
	public String getFilter(ProductDto dto) {
		if(dto.getBrand()==null) {
			return "";
		}
			return dto.getBrand();
	}

	public void saveWishList(WishListDto dto) {
		session = sf.openSession();
		tx = session.beginTransaction();
		session.persist(dto);
		tx.commit();
		session.close();
	}
	
	public List<WishListDto> getWishList() {
		session = sf.openSession();
		List<WishListDto> all = session.createQuery("from WishListDto",WishListDto.class).list();
		return all;
	}
}
