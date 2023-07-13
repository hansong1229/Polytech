package com.polytech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.polytech.mapper.ResumeMapper;


@Controller
public class ResumeController {

	@Autowired
	private ResumeMapper resumeMapper;
	
	
	
}
