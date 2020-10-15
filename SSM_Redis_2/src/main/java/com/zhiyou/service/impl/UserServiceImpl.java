package com.zhiyou.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.zhiyou.dao.UserDao;
import com.zhiyou.model.User;
import com.zhiyou.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao dao;
	// @Autowired
	// RedisTemplate<String,String> redis;
	
	public void add(User user) {
		dao.add(user);
	}

	// 用来标记需要清除缓存的方法，以及指定需要清除的缓存 allEntries：代表是否清除缓存中的所有元素
	@CacheEvict(value = "userSelect", allEntries = true)
	public void delete(int id) {
		dao.delete(id);
	}

	// 指定下面这个方法需要使用缓存，使用缓存的名字叫userSelect
	@Cacheable(value = "userSelect")
	public List<User> selectAll() {
		return dao.selectAll();
	}
	
	@CacheEvict(value = "userSelect", allEntries = true)
	public void update(User user) {
		dao.update(user);
	}

	@Cacheable(value = "userSelect", key = "#id")
	public User selectByID(int id) {
		return dao.selectByID(id);
	}

}
