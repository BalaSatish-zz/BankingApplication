package com.online.bank.application.dto;

public class SenderDTO {
	
	private String tid;
	private String acNo;
	private String description;
	private double balance;
	private String dateCol;
	public SenderDTO(){
		
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getAcNo() {
		return acNo;
	}
	public void setAcNo(String acNo) {
		this.acNo = acNo;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public String getDate() {
		return dateCol;
	}
	public void setDate(String date) {
		this.dateCol = date;
	}
	@Override
	public String toString() {
		return "SenderDTO [Tid=" + tid + ", AcNo=" + acNo + ", Description=" + description + ", balance=" + balance
				+ ", Date=" + dateCol + "]";
	}
}
