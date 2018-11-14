package kr.co.mlec.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.repository.domain.Main;
import kr.co.mlec.repository.mapper.MainMapper;
@Service
public class MainServiceImpl implements MainService{

	@Autowired
	private MainMapper mapper;
	

	public List<Main> list(String userid){
	 return	mapper.selectMain(userid);
	
	}
//	public List<Main> commentList(int no){
//		return mapper.selectCommentByNo(no);
//	}


	@Override
	public void update(Main main) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public Main updateForm(int no) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void write(Main main) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public List<Main> list() {
		// TODO Auto-generated method stub
		return null;
	}
}

	
	
	

