package kr.co.mlec.repository.mapper;


import java.util.List;

import kr.co.mlec.repository.domain.Member;

public interface MemberMapper {
	List<Member> selectMember(Member member);
	void insertMember(Member member);
//	void deleteMember(int i);
	void updateMember(Member member);
}

