package com.demo.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.DAO.CountryDAO;
import com.demo.VO.CountryVO;

@Service
public class CountryService {

	@Autowired
	CountryDAO countryDAO;
	
	@Transactional
	public void insert_country(CountryVO countryVO)
	{
		this.countryDAO.insertCountry(countryVO);
	}
	@Transactional
	public List search()
	{
		return this.countryDAO.search();
	}
	@Transactional
	public List search(int id)
	{
		return this.countryDAO.search(id);
	}
	@Transactional
	public void delete(int id)
	{
		this.countryDAO.delete(id);
	}
}
