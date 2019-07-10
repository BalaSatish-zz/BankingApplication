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
import com.online.bank.application.model.service.EditProfileService;

public class ChangePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		RequestDispatcher rd = request.getRequestDispatcher("ChangePassword");
		String AccountNo = (String) session.getAttribute("ac");
		String Old = request.getParameter("old");
		String pass1 = request.getParameter("pass1");
		String pass2 = request.getParameter("pass2");
		if(pass1.contains(pass2) && pass1 !=null &&  Old!=null ){
				EditProfileService service =  new EditProfileService();
				String New =pass1;
				boolean isUpdated= service.ChangePassword(AccountNo, Old, New);
				
				if(isUpdated){
					request.setAttribute("msg", "Information Updated");
				}else{
					request.setAttribute("msg", "Information Update Failed");
				}
			}else{
				request.setAttribute("msg", "Innvalid info");
			}
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
