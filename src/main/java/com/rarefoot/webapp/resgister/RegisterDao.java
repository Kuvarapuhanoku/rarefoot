package com.rarefoot.webapp.resgister;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class RegisterDao {
	private SessionFactory sf;
	private Session session;
	private Transaction tx;
	{
		Configuration con = new Configuration().configure().addAnnotatedClass(RareDto.class);
		sf = con.buildSessionFactory();
		session = sf.openSession();
	}
	
	public String save(RareDto dto) {
		tx = session.beginTransaction();
		session.persist(dto);
		
		tx.commit();
		
		return dto.getUsername() + " is saved";
	}
}
