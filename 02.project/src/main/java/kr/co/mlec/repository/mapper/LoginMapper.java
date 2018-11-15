package kr.co.mlec.repository.mapper;

import kr.co.mlec.repository.domain.Member;

public interface LoginMapper {
	Member selectLogin(Member member);
}