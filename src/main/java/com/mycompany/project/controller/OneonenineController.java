package com.mycompany.project.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/oneonenine")
public class OneonenineController {
	private static final Logger LOGGER = LoggerFactory.getLogger(OneonenineController.class);

	@RequestMapping("/main.do")
	public String main() {
		LOGGER.info("HomeController의  main 메소드 실행");
		return "oneonenine/main";
	}

}
