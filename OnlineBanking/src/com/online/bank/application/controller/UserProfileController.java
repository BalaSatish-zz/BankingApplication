package com.online.bank.application.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.management.relation.RelationServiceNotRegisteredException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.online.bank.application.dto.RegistrationDTO;
import com.online.bank.application.model.service.UserService;


public class UserProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService service = new UserService();
		HttpSession session = request.getSession();
		if(session!=null){
			String AccountNo = (String) session.getAttribute("ac");
			try {
				RegistrationDTO dto =  service.getUserDetails(AccountNo);
				System.out.println(dto);
				request.setAttribute("UserDetails", dto);
				RequestDispatcher rd = request.getRequestDispatcher("UserProfile");
				rd.forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	
}
