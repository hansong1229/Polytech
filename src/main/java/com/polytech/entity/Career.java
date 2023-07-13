package com.polytech.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString 
public class Career {

	// 경력 시퀀스 
    private Integer career_seq;

    // 회원 시퀀스 
    private Integer user_seq;

    // 회사 및 기간명 
    private String career_company;

    // 취직일 
    private String career_dtepmt;

    // 퇴사일 
    private String career_dtrtmt;

    // 직책 
    private String career_position;

    // 상태 
    private String career_state;

    // 주요업무 
    private String career_mainbsns;
	
	
}
