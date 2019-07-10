package com.online.bank.application.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.online.bank.application.controller.utility.CustomException;
import com.online.bank.application.dto.ReciverDTO;
import com.online.bank.application.dto.SenderDTO;
import com.online.bank.application.model.service.MoneyTransferService;
import com.online.bank.application.model.service.OTPService;

public class OneTimePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = null;
		String Transactionid = null;
		HttpSession session = null;
		/*Fecth UI data from jsp  page  */
		String AccountNo = req.getParameter("rec");
		String Amount = req.getParameter("amt");
		double amount1 = Double.parseDouble(Amount);
//		System.out.println("account number : "+AccountNo);
//		System.out.println("amount "+amount1);
		String Description = req.getParameter("add");
		String OTP = req.getParameter("otp");
		
		SenderDTO senderdto = new SenderDTO();
		ReciverDTO reciverdto = new ReciverDTO();
		session = req.getSession(false);
		
		if(session!=null){
			resp.setHeader("cache-control", "no-cache,no-store,must-revalidate");
			resp.setHeader("pragma", "no-cache");
			resp.setDateHeader("expires", 0);
		/*Fetching UI data and populating into the senderdto  */
			String ACCNO = (String) session.getAttribute("ac");
			senderdto.setAcNo(ACCNO);
			senderdto.setDescription(Description);
			reciverdto.setAcNo(AccountNo);
			reciverdto.setBalance(amount1);
			reciverdto.setDescription(Description);
			OTPService otpservice = new OTPService();
					try {
//						System.out.println(ACCNO+AccountNo);
						boolean x =otpservice.SendOTP(ACCNO,AccountNo,amount1);
//						System.out.println("Finallyyy........."+x);
						if(x){
							req.setAttribute("rec", AccountNo);
							req.setAttribute("amt", amount1);
							req.setAttribute("add", Description);
							rd = req.getRequestDispatcher("PaymentGateway.jsp");
						}
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		
		rd.forward(req, resp);
		}
	}
	}
