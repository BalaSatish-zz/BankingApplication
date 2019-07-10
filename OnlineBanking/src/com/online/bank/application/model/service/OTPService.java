package com.online.bank.application.model.service;

import com.online.bank.application.model.dao.OTPDAO;

public class OTPService {

	public OTPService() {
		// TODO Auto-generated constructor stub
	}
	
	public boolean SendOTP(String Sender,String Reciever,double amount ) throws Exception{
		OTPDAO o = new OTPDAO();
		boolean x =o.SendOTP(Sender,Reciever,amount);
		return x;
	}


}
