package com.polytech.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/")
	public String index() {
		return "index"; // void로 정의해도 알아서 index를 반환한다. 하지만 그래도 그냥 적어주는게 좋다. 햇갈리니까
	}
	
	
}
