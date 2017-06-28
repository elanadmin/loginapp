package com.loginapp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.loginapp.dao.UserDAO;

@Controller
public class LoginController {

	private UserDAO userDAO;

	public UserDAO getUserDAO() {
		return userDAO;
	}
	@Autowired
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@RequestMapping(path = { "/login", "/" })
	public String login() {

		return "login";
	}

	@RequestMapping(path = "/authenticate")
	public ModelAndView authenticate(@RequestParam String username,
			@RequestParam String password) {
		ModelAndView mav = new ModelAndView();
		if (userDAO.isValidUser(username, password)) {
			mav.setViewName("success");

		} else {
			mav.setViewName("fail");
			//mav.addObject("failed", true);
			

		}

		return mav;
	}

}
