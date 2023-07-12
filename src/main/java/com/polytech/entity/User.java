package com.polytech.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString 
public class User {

    // 회원 시퀀스 
    private Integer user_seq;

    // 이름 
    private String user_name;

    // 성별 
    private String user_gender;

    // 생년월일 
    private String user_birthday;

    // 주소 
    private String user_address;

    // 전화번호 
    private String user_phone;

    // 이메일 
    private String user_email;

    // 사진경로 
    private String user_picture;

    // 병역구분 
    private String user_military;

    // 계급 
    private String user_class;

    // 복무시작일 
    private String user_stdtsrvc;

    // 복무종료일 
    private String user_eddtsrvc;

    // 미필사유 
    private String user_unfns_cause;

    // 보훈사항 
    private String user_va;

    // 생활보호사항 
    private String user_protection;

    // 컴퓨터 지식 
    private String user_comknowledge;

    // 외국어능력 
    private String user_foreignknowledge;

    // 첨부파일경로 
    private String user_atfp;

    // 성장과정 
    private String user_growth;

    // 과거경험 
    private String user_experience;

    // 지원동기 
    private String user_motive;

    // 입사후포부 
    private String user_ambition;

    // 지원일 
    private String user_apply_date;
	
}
