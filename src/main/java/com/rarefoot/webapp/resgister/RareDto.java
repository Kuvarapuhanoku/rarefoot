package com.rarefoot.webapp.resgister;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "userdata")
public class RareDto {
@Id
private String username;
private String email;
private String pass;
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return pass;
}
public void setPassword(String password) {
	this.pass = password;
}


}
