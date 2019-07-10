package com.online.bank.application.model.service;

import com.online.bank.application.model.dao.EditProfileDAO;

public class EditProfileService {

public boolean UpdateInformation(String AccountNo,String ColName, String Data){
		EditProfileDAO dao = new EditProfileDAO();
		boolean x = dao.UpdateInformation(AccountNo, ColName, Data);
		return x;
	}
public boolean ChangePassword(String AccountNo,String Old, String New){
	EditProfileDAO dao = new EditProfileDAO();
	boolean x = dao.ChangePassword(AccountNo, Old, New);
	return x;
}

}
