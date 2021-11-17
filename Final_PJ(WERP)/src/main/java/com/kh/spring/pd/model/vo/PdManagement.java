package com.kh.spring.pd.model.vo;

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
public class PdManagement implements Serializable{

	private static final long serialVersionUID = 89337L;
	
	
	private String pcode;
	private String pname;
	private String category;
	private int inprice;
	private int outprice;
	private String pdivision;
	
}
