package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.FilmDAO;

@Controller
public class FilmController {

	@Autowired
	private FilmDAO filmDao;

	@RequestMapping(path = { "home.do", "/" })
	public String goToHome() {
		return "WEB-INF/home.jsp";
	}

	@RequestMapping(path = "GetFilmDataById.do", params = "id", method = RequestMethod.GET)
	public ModelAndView getById(@RequestParam("id") int n) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/singleFilm.jsp");
		mv.addObject("film", filmDao.findById(n));
		return mv;
	}
	
	@RequestMapping(path = "GetFilmDataByKeyword.do", params = "keyword", method = RequestMethod.GET)
	public ModelAndView getByKeyword(@RequestParam("keyword") String n) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/films.jsp");
		mv.addObject("films", filmDao.searchByKeyword(n));
		return mv;
	}
}
