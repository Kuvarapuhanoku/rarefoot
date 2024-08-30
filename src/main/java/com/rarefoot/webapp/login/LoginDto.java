package com.rarefoot.webapp.login;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "userdata")
@Entity
public class LoginDto {

@Id
private int id;
private String username;
private String email;
private String pass;

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
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
	this.pass= password;
}
@Override
public String toString() {
	return "LoginDto [username=" + username + ", email=" + email + ", pass=" + pass + ", id=" + id + "]";
}


}
