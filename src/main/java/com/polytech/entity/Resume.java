package com.polytech.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString 
public class Resume {
    private Integer user_seq;
    private String user_name;
    private String user_gender;
    private String user_birthday;
    private String user_address;
    private String user_phone;
    private String user_email;
    private String user_picture;
    
    private Integer acdm_seq;
    private Integer acdm_user_seq;
    private String acdm_name;
    private String acdm_stdtsrvc;
    private String acdm_eddtsrvc;
    private String acdm_major;
    private Integer acdm_grades;
    private String acdm_state;
    
    private Integer career_seq;
    private Integer career_user_seq;
    private String career_company;
    private String career_dtepmt;
    private String career_dtrtmt;
    private String career_position;
    private String career_state;
    private String career_mainbsns;
    
    private Integer lic_seq;
    private Integer lic_user_seq;
    private String lic_name;
    private String lic_date;
    private String lic_organization;
}

