package com.demo.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.VO.StateVO;

@Repository
public class StateDAOImp implements StateDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	public void insertState(StateVO stateVO)
	{
		sessionFactory.getCurrentSession().save(stateVO);
	}
	public List search()
	{
		return sessionFactory.getCurrentSession().createQuery("from StateVO").list();
	}
	public void delete(int id)
	{
		StateVO stateVO = new StateVO();
		stateVO.setId(id);
		sessionFactory.getCurrentSession().delete(stateVO);
	}
	public void deleteM(int id)
	{
		Session session = sessionFactory.getCurrentSession();
		List list = session.createQuery("from StateVO where countryVO="+id).list();
		
		for(int i=0;i<list.size();i++)
		{
			session.delete((StateVO)list.get(i));
		}
		
	}
	
}
