package classroomRental.mapper;

import java.util.List;

import classroomRental.dto.User;

public interface UserInfo {
	User selectById(int id);
	User selectByLoginId(String loginId);
	void insert(User user);
	void update(User user);
	void delete(int id);
	int selectByLoginIdCheck(String loginId);
	User selectByPassword(User user);
	List<User> findByDateId(int id);
	void updateGrade(String loginId);
	void updateGrade2(String loginId);
}
