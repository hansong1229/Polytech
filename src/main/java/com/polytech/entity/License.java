package com.polytech.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString 
public class License {

	  // 자격증 시퀀스 
    private Integer lic_seq;

    // 회원 시퀀스 
    private Integer user_seq;

    // 자격명 
    private String lic_name;

    // 취득일자 
    private String lic_date;

    // 발행기관 
    private String lic_organization;
	
	
}
