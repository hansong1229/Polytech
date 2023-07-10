package com.polytech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



// Handler Mapping이 Controller(POJO)를 찾기위해
// @(어노테이션)으로 Controller이라고 명시해야한다
@Controller
public class PageMovementController {
	
	
	@RequestMapping("/resume.do")
	public String main() {
		return "member/resume";
	}
	
	
	
	

}
