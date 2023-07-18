package com.polytech.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString 
public class test2 {

    // 분류 시퀀스 
    private Integer test_cate;

    // 테스트시퀀스 
    private Integer test_seq;

    // 상태 
    private String test_state;

	
	
}
