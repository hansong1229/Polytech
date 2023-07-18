package com.polytech.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString 
@Getter
@Setter
public class Acdm {

    // 학력 시퀀스 
    private Integer acdm_seq;
    // 회원 시퀀스 
    private Integer user_seq;
    // 학교명 
    private String acdm_name;
    // 입학일 
    private String acdm_stdtsrvc;
    // 졸업일 
    private String acdm_eddtsrvc;
    // 전공학과 
    private String acdm_major;
    // 학점 
    private Integer acdm_grades;
    // 상태 
    private String acdm_state;
	
	
}
