package com.kh.spring.in.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Component
public class InManagement implements Serializable  {
	
	private static final long serialVersionUID = 79337L;
	
	
	private String icode;
	private String pcode;
	private int inNum;
	private Date inputDate;
	
}
