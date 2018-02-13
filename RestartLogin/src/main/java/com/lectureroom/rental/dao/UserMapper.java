package com.lectureroom.rental.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("UserMapper")
public class UserMapper {
	public List<UserCommand> getUserList(Map<String,Object> map);
	@Select("SELECT count(*) FROM user1")
	public int getUserCount();
	@Insert("INSERT INTO user1 (id,passwd,name,reg_date) VALUES (#{id},#{passwd},#{name},sysdate)")
	public void insertUser(UserCommand user);
	@Select("SELECT * FROM user1 WHERE id = #{id}")
	public UserCommand getUser(String id);
	@Update("UPDATE user1 SET passwd=#{passwd},name=#{name} WHERE id = #{id}")
	public void updateUser(UserCommand user);
	@Delete("DELETE FROM user1 WHERE id=#{id}")
	public void deleteUser(String id);
}
