package kr.co.mlec.main.service;

import java.util.List;

import kr.co.mlec.repository.domain.Main;

public interface MainService {

	 List<Main> list();

	void update(Main main);

	Main updateForm(int no);

	void write(Main main);
	
}
