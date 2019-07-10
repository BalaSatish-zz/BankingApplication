package com.online.bank.application.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class EditProfileDAO {
	
	public boolean UpdateInformation(String AccountNo,String ColName, String Data){
		String sql="update jjs6.bank set "+ColName+"='"+Data+"' where AccNo=?";
		Connection con = SingleTon.getSingleTon().getconnection();
		try{
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, AccountNo);
			int x =pstmt.executeUpdate();
			if(x>0){
				System.out.println("Update Successful");
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean ChangePassword(String AccountNo,String Old, String New){
		String sql="update jjs6.bank set password=? where AccNo=? and password=?";
		Connection con = SingleTon.getSingleTon().getconnection();
		try{
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, New);
			pstmt.setString(2, AccountNo);
			pstmt.setString(3, Old);
			int x =pstmt.executeUpdate();
			if(x>0){
				System.out.println("Password changed successfully");
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}
	
}
