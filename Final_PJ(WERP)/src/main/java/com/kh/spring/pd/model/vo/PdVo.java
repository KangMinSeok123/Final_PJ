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
	private String proname;
	private String category;
	private int inprice;
	private int outprice;
	private Date inputDate;
	private int stock;
	private int inNum;
	private int outNum;
	
	public PdVo(String procode, int inNum) {
		this.procode = procode;
		this.inNum = inNum;
	}
	public String getProcode() {
		return procode;
	}
	public void setProcode(String procode) {
		this.procode = procode;
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
	public Date getInputDate() {
		return inputDate;
	}
	public void setInputDate(Date inputDate) {
		this.inputDate = inputDate;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getInNum() {
		return inNum;
	}
	public void setInNum(int inNum) {
		this.inNum = inNum;
	}
	public int getOutNum() {
		return outNum;
	}
	public void setOutNum(int outNum) {
		this.outNum = outNum;
	}
	@Override
	public String toString() {
		return "PdVo [procode=" + procode + ", proname=" + proname + ", category=" + category + ", inprice=" + inprice
				+ ", outprice=" + outprice + ", inputDate=" + inputDate + ", stock=" + stock + ", inNum=" + inNum
				+ ", outNum=" + outNum + "]";
	}
	
}
