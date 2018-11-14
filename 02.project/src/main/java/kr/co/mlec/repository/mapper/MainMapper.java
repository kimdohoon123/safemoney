package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Main;

public interface MainMapper {
	List<Main> selectMain(String userid);
	void insertMain(Main main);
	Main selectMainByNo(int no);
	void deleteMain(int i);
	void updateMain(Main main);
}

