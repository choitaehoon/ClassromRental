package classroomRental.mapper;

import classroomRental.dto.User;

public interface UserInfo {
	User selectById(int id);
	User selectByLoginId(String loginId);
	void insert(User user);
	void update(User user);
	void delete(int id);
	int selectByLoginIdCheck(String loginId);
	User selectByPassword(User user);
}
