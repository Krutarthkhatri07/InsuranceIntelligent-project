package com.demo.DAO;

import java.util.List;

import com.demo.VO.CountryVO;

public interface CountryDAO {

	public void insertCountry(CountryVO countryVO);
	
	public List search();
	public List search(int id);
	public void delete(int id);

}

