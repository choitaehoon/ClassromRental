package com.classroomrental.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginImpl implements LoginDAO{

	@Autowired
	private SqlSession sql;

	@Override
	public boolean loginChek(LoginInfo loginInfo) {
		int count = Integer.parseInt(sql.selectOne("loginCheck", loginInfo).toString()),
				totalCount = sql.selectOne("totalAccount");
		if(totalCount > 0) {
			if(count > 0) {
				return true;
			}else
				return false;
		}
		return false;
	}
}
