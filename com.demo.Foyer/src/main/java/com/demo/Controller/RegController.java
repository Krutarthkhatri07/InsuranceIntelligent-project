package com.demo.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.demo.Service.CountryService;
import com.demo.Service.StateService;
import com.demo.VO.CountryVO;
import com.demo.VO.StateVO;


@Controller
public class RegController {

	@Autowired
	CountryService countryService;
	
	@Autowired
	StateService stateservice;
	
	/*@RequestMapping(value="/")
	public ModelAndView index()
	{
		return new ModelAndView("home");
	}*/
	@RequestMapping(value="/insert_country.xx")
	public ModelAndView insert_country()
	{
		return new ModelAndView("insert_country","country",new CountryVO());
	}
	@RequestMapping(value="/insert_country_db.xx",method = RequestMethod.POST )
	public ModelAndView insert_country_db(@ModelAttribute CountryVO countryVO)
	{
		this.countryService.insert_country(countryVO);
		return new ModelAndView("redirect:insert_country.xx");
	}
	@RequestMapping(value="/insert_state.xx")
	public ModelAndView insert_state()
	{
		return new ModelAndView("insert_state","state",new StateVO()).addObject("country", this.countryService.search());
	}
	@RequestMapping(value="/insert_state_db.xx")
	public ModelAndView insert_state_db(@ModelAttribute StateVO stateVO,HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("country"));
		CountryVO countryVO = new CountryVO();
		countryVO.setId(id);
		System.out.println(id);
		stateVO.setCountryVO(countryVO);
		this.stateservice.insertState(stateVO);
		return new ModelAndView("redirect:insert_country.xx");
	}
	@RequestMapping(value="/search_country.xx")
	public ModelAndView search_country()
	{
		return new ModelAndView("view_country","country", this.countryService.search());
	}
	@RequestMapping(value="/search_state.xx")
	public ModelAndView search_state()
	{
		return new ModelAndView("view_state","state", this.stateservice.search());
	}
	@RequestMapping(value="/delete_state.xx")
	public ModelAndView delete_state(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		this.stateservice.delete(id);
		return new ModelAndView("redirect:search_state.xx");
	}
	@RequestMapping(value="/delete_country.xx")
	public ModelAndView delete_country(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		this.stateservice.deleteM(id);
		this.countryService.delete(id);
		return new ModelAndView("redirect:search_country.xx");
	}
	
}