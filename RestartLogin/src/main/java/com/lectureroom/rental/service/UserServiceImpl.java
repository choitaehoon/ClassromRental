package com.lectureroom.rental.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl {

	//Reosurce로 인해 MemberMapper 자유롭게 이제 쓸수 있음
	@Resource(name="userUser")
	UserUser userUser;
	
	@Override
	public List<UserCommand> getUserList(Map<String, Object> map) {
		return userMapper.getUserList(map);
	}

	@Override
	public int getUserCount() {
		return userMapper.getUserCount();
	}

	@Override
	public void insertUser(UserCommand user) {
		userMapper.insertUser(user);
	}

	@Override
	public UserCommand getUser(String id) {
		return userMapper.getUser(id);
	}

	@Override
	public void updateUser(UserCommand user) {
		userMapper.updateUser(user);
	}

	@Override
	public void deleteUser(String id) {
		userMapper.deleteUser(id);
	}

}
