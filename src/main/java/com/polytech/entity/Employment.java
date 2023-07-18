package com.polytech.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString 
public class Employment {

	private int epl_seq;
	private String epl_title;
	private String epl_cate;
	private String epl_stdt;
	private String epl_eddt;
	private String epl_content;
	private String epl_filepath;
}
