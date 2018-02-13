package com.lectureroom.rental.service;

import java.util.List;
import java.util.Map;

public class UserService {
	public List<UserCommand> getUserList(Map<String,Object> map);
	public int getUserCount();
	public void insertUser(UserCommand user);
	public UserCommand getUser(String id);
	public void updateUser(UserCommand user);
	public void deleteUser(String id);
}
