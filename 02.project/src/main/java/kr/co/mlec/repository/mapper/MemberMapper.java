package kr.co.mlec.repository.mapper;

import java.lang.reflect.Member;
import java.util.List;

import kr.co.mlec.repository.domain.Main;

public interface MemberMapper {
	List<Member> selectMember(String userid);
	void insertMember(Member member);
//	void deleteMember(int i);
	void updateMember(Member member);
}

