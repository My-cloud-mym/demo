package com.zhiyou.model;

import java.io.Serializable;
import java.sql.Date;

public class User implements Serializable{

	private Integer id;
	private String username;
	private String password;
	private Integer qian;
	private Date date;
	
	public User(Integer id, String username, String password, Integer qian, Date date) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.qian = qian;
		this.date = date;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public User() {
		
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getQian() {
		return qian;
	}
	public void setQian(Integer qian) {
		this.qian = qian;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", qian=" + qian + ", date="
				+ date + "]";
	}
	
	
}
