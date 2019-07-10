package com.online.bank.application.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class BankingDAO {

	public BankingDAO() {
		// TODO Auto-generated constructor stub
	}
	public boolean Deposit(String AccountNo, double Amount){
		String SQL = "update jjs6.bank set Balance=Balance+? where AccNo=? ";
		Connection con = SingleTon.getSingleTon().getconnection();
		
		try{
			con.setAutoCommit(false);
			PreparedStatement pstmt = con.prepareStatement(SQL);
			pstmt.setDouble(1,Amount);
			pstmt.setString(2, AccountNo);
			int x = pstmt.executeUpdate();
			if(x>0){
				con.commit();
				System.out.println("Deposit Successful");
				return true;
			}
			con.rollback();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean Withdraw(String AccountNo, double Amount){
		String SQL = "update jjs6.bank set Balance=Balance-? where AccNo=? and Balance>=? ";
		Connection con = SingleTon.getSingleTon().getconnection();
		try{
			con.setAutoCommit(false);
			PreparedStatement pstmt = con.prepareStatement(SQL);
			pstmt.setDouble(1,Amount);
			pstmt.setString(2, AccountNo);
			pstmt.setDouble(3,Amount);
			int x = pstmt.executeUpdate();
			if(x>0){
				con.commit();
				System.out.println("Withdraw Successful");
				return true;
			}
			con.rollback();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}
}
