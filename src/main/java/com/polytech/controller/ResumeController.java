package com.polytech.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.polytech.entity.Acdm;
import com.polytech.entity.Career;
import com.polytech.entity.License;
import com.polytech.entity.User;
import com.polytech.mapper.ResumeMapper;


@Controller
public class ResumeController {

	@Autowired
	private ResumeMapper resumeMapper;
	
	@PostMapping("@createResume.do")
	public String createResume(User u, License l, Career c, Acdm a, HttpSession session) {
		
		return "redirect:/";
	};
	
}
