package com.polytech.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString 
public class test1 {

    // 테스트시퀀스 
    private Integer test_seq;

    // 이름 
    private String test_name;

    // 나이 
    private Integer test_age;
    
    // 사진
    private String test_picture;
	
}
