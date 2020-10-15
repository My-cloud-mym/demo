package com.zhiyou.service;

import java.util.List;

import com.zhiyou.model.User;

public interface UserService {

	void add(User user);
	void delete(int id);
	List<User> selectAll();
	
	void update(User user);
	
	User selectByID(int id);
	
}
