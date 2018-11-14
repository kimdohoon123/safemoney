package kr.co.mlec.repository.mapper;

import java.lang.reflect.Member;
import java.util.List;

import kr.co.mlec.repository.domain.Main;

public interface LoginMapper {
	List<Member> selectLogin(String userid);

	void updateLogin(String logOn);
	void updateLogOut();
}

