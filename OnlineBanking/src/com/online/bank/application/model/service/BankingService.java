package com.online.bank.application.model.service;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.online.bank.application.model.dao.BankingDAO;
import com.online.bank.application.model.dao.SingleTon;

public class BankingService {

	public BankingService() {
		// TODO Auto-generated constructor stub
	}
	public boolean Deposit(String AccountNo, double Amount){
		BankingDAO dao = new BankingDAO();
		boolean x= dao.Deposit(AccountNo, Amount);
		return x;
	}
	public boolean Withdraw(String AccountNo, double Amount){
		BankingDAO dao = new BankingDAO();
		boolean x= dao.Withdraw(AccountNo, Amount);
		return x;
	}
}
