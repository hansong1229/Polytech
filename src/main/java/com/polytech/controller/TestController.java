package com.polytech.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.polytech.entity.test1;
import com.polytech.entity.test2;
import com.polytech.mapper.Test1Mapper;
import com.polytech.mapper.Test2Mapper;


@Controller
public class TestController {
	
	@Autowired
	private Test1Mapper t1mapper;
	
	@Autowired
	private Test2Mapper t2mapper;
	
	@PostMapping("/testSubmit.do")
	public String testSubmit(test1 t1, test2 t2) {
		System.out.println(t1.getTest_name());
		System.out.println(t1.getTest_age());
		System.out.println(t2.getTest_state());
		
		String[] state = t2.getTest_state().split(",");
		
		for(int i = 0 ; i <state.length; i++) {
			System.out.println(state[i]);
		}
		
		
		t1mapper.insertTest1(t1);
		test1 t = t1mapper.selectTest1(t1);
		t2.setTest_seq(t.getTest_seq());
		for(int i = 0 ; i<state.length; i++) {
			
		
		t2.setTest_state(state[i]);
		t2mapper.insertTest2(t2);
		};
		
		
		
		return "redirect:/";
	}
	
}
