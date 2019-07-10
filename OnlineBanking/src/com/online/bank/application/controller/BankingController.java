package com.online.bank.application.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.online.bank.application.model.service.BankingService;


public class BankingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String BankOperation = (String) request.getParameter("submit");
		double Amount = Double.parseDouble(request.getParameter("amt")); 
		if(BankOperation.equalsIgnoreCase("Deposit")){
			HttpSession session = request.getSession();
			String AccountNo = (String) session.getAttribute("ac");
			BankingService service = new BankingService();
			boolean isSuccessful = service.Deposit(AccountNo, Amount);
			RequestDispatcher rd = request.getRequestDispatcher("Deposit");
			if(isSuccessful){
				request.setAttribute("msg", "Deposit Successful");
				rd.forward(request, response);
			}else{
				request.setAttribute("msg", "Deposit Failed");
				rd.forward(request, response);
			}
		}else if(BankOperation.equalsIgnoreCase("Withdraw")){
			HttpSession session = request.getSession();
			String AccountNo = (String) session.getAttribute("ac");
			BankingService service = new BankingService();
			boolean isSuccessful = service.Withdraw(AccountNo, Amount);
			RequestDispatcher rd = request.getRequestDispatcher("Withdraw");
			if(isSuccessful){
				request.setAttribute("msg", "Withdraw Successful");
				rd.forward(request, response);
			}else{
				request.setAttribute("msg", "Insufficient Balance");
				rd.forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
