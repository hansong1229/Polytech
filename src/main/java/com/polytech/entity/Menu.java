package com.polytech.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString 
// ToString이란? vo안에 있는 모든 요소를 나열시켜준다
public class Menu {

	private int idx; // 번호
	private String menu; // 메뉴명
	private String url;  // url값
	
	
}
