package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Login;

public interface LoginMapper {
	List<Login> selectLogin(String userid, String password);
	void updateLogin(String logOn);
	void updateLogOut();
}

