package com.online.bank.application.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.naming.spi.DirStateFactory.Result;

public class OTPDAO {
	
	public int generateOTP(){

		 int OTP = (int) (Math.random()*((999999-100000)+1))+100000;
		return OTP;
	}
	
	public boolean UpdateOTPInDatabase(int OTP, String email){
		String query = "update  jjs6.bank set otp=? where email=?";
		SingleTon s=SingleTon.getSingleTon();
		Connection con = s.getconnection();
		try{
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, ""+OTP);
			pstmt.setString(2, email);
			int val = pstmt.executeUpdate();
			if(val>0){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return false;
	}
	
	public String  getEmail(String AccNo){
		String query = "select email from jjs6.bank where AccNo= ? ";
//		System.out.println(query +AccNo);
		SingleTon s=SingleTon.getSingleTon();
		Connection con = s.getconnection();
		try{
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, AccNo);
			ResultSet rs =  pstmt.executeQuery();
			while(rs.next()){
				 String Email = rs.getString(1);
				 return Email;
			}
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		return null;
	}
	public boolean SendOTP(String Sender,String Receiver,double amount){
		String AccNo = Sender;
		String email = getEmail(AccNo);
//		System.out.println(AccNo+email);
		int OTP = generateOTP();
		if(UpdateOTPInDatabase(OTP, email)){
			System.out.println("Updated Database");
			if(sendMail(OTP, email,Sender,Receiver,amount)){	
			System.out.println("Mail Sent Successfully......! All are Perfect");
			return true;
			}
			
		}else{
			System.out.println("OTP Updation Failed...!");
		}
		return true;
	}
	
	public boolean sendMail(int OTP, String email, String fromAccount, String toAccount,double amount){
		final String username = "emailid@gmail.com";
		final String password = "passwordofemailid";
				Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
			
			message.setSubject("OTP  for SBI Transaction");
			BodyPart messageBodyPart = new MimeBodyPart();
			
			char r = 8337;
	         // Now set the actual message
	         messageBodyPart.setText(""+OTP+" is the  6 digit OTP for your transation.\nFrom A/c No: "+fromAccount+"\nTo A/c No: "+toAccount+"\nAmount  in INR :  "+amount);

	         // Create a multipar message
	         Multipart multipart = new MimeMultipart();

	         // Set text message part
	         multipart.addBodyPart(messageBodyPart);
	         
	         // Part two is attachment
//	         messageBodyPart = new MimeBodyPart();
//	         String filename = "D:/satish133515.pdf";
//	         DataSource source = new FileDataSource(filename);
//	         messageBodyPart.setDataHandler(new DataHandler(source));
//	         messageBodyPart.setFileName(filename);
//	         multipart.addBodyPart(messageBodyPart);

	         // Send the complete message parts
	         message.setContent(multipart);

	         // Send message
	         Transport.send(message);
	        
	         System.out.println("Sent message successfully....");
	         return true;
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
	
}

