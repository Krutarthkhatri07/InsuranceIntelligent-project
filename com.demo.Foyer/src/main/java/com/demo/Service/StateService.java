package com.demo.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.DAO.StateDAO;
import com.demo.VO.StateVO;

@Service
public class StateService {

	@Autowired
	StateDAO stateDAO;
	
	@Transactional
	public void insertState(StateVO stateVO)
	{
		this.stateDAO.insertState(stateVO);
	}
	
	@Transactional
	public List search()
	{
		return this.stateDAO.search();
	}
	@Transactional
	public void delete(int id)
	{
		this.stateDAO.delete(id);
	}
	
	@Transactional
	public void deleteM(int id)
	{
		this.stateDAO.deleteM(id);
	}
}
