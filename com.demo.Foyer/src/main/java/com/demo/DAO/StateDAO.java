package com.demo.DAO;

import java.util.List;

import com.demo.VO.StateVO;

public interface StateDAO {

	public void insertState(StateVO stateVO);
	
	public List search();
	
	public void delete(int id);
	
	public void deleteM(int id);
}
