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
public class PdVo implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 79337L;

	private String procode;
	private int prono;
	private String proname;
	private String category;
	private int inprice;
	private int outprice;
	
	
	public String getProcode() {
		return procode;
	}
	public void setProcode(String procode) {
		this.procode = procode;
	}
	public int getProno() {
		return prono;
	}
	public void setProno(int prono) {
		this.prono = prono;
	}
	public String getProname() {
		return proname;
	}
	public void setProname(String proname) {
		this.proname = proname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getInprice() {
		return inprice;
	}
	public void setInprice(int inprice) {
		this.inprice = inprice;
	}
	public int getOutprice() {
		return outprice;
	}
	public void setOutprice(int outprice) {
		this.outprice = outprice;
	}
	@Override
	public String toString() {
		return "PdVo [procode=" + procode + ", prono=" + prono + ", proname=" + proname + ", category=" + category
				+ ", inprice=" + inprice + ", outprice=" + outprice + "]";
	}
	
	
	
}
