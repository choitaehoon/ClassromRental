package com.classroomrental.login;

public interface LoginDAO {
	//사용자가 입력한 Id,Pw값과 비교하여 참과 거짓을 판별
	//LoginInfo는 loginCheck함수를 통해서 입력한 id,pw을 체크하기위한 사용자가 입력한 DB를 비교할 수 있는게 만듬
	public boolean loginCheck(LoginInfo loginInfo);
}
