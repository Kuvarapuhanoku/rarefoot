package com.rarefoot.webapp.login;


import java.util.List;

import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class LoginDao {
	private SessionFactory sf;
	private Session session;
	private Transaction tx;
	{
		Configuration con = new Configuration().configure()
				.addAnnotatedClass(LoginDto.class);
		sf = con.buildSessionFactory();
		session = sf.openSession();
	}
	
	public LoginDto validateCredentials(LoginDto dto) {
		
		String email = dto.getEmail();
		String pass = dto.getPassword();
		
		Query q = session.createQuery("from LoginDto where email = :email and pass = :pass");
		q.setParameter("email", email);
		q.setParameter("pass", pass);
		
		LoginDto validate= (LoginDto)q.getSingleResult();
		
		return validate;
	}

	public List<LoginDto> getAllUsers() {
		return session.createQuery("from LoginDto" , LoginDto.class).list();
	}

	public LoginDto getUser() {
		
		LoginDto dto = new LoginDto();
		
		String username = dto.getUsername();
		Query q = session.createQuery("from LoginDto where username=:username");
		q.setParameter("name",username);
		
		return (LoginDto) q.getSingleResult();
	}
}
