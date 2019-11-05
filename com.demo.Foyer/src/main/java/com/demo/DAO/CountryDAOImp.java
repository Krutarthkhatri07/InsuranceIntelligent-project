package com.demo.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.VO.CountryVO;
import com.demo.VO.StateVO;

@Repository
public class CountryDAOImp implements CountryDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public void insertCountry(CountryVO countryVO)
	{
		Session session = sessionFactory.getCurrentSession();
		session.save(countryVO);
	}
	public List search()
	{
		return sessionFactory.getCurrentSession().createQuery("from CountryVO").list();
	}
	public List search(int id)
	{
		return sessionFactory.getCurrentSession().createQuery("from CountryVO where id="+id ).list();
	}
	public void delete(int id)
	{
		CountryVO countryVO = new CountryVO();
		countryVO.setId(id);
		sessionFactory.getCurrentSession().delete(countryVO);
	}
}
