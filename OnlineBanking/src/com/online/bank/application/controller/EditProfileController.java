package com.online.bank.application.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.online.bank.application.model.dao.EditProfileDAO;
import com.online.bank.application.model.service.EditProfileService;


public class EditProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String AccountNo = (String) session.getAttribute("ac");
		if(AccountNo!=null){
			String colname = request.getParameter("colname");
			String data = request.getParameter("data");
			EditProfileService service =  new EditProfileService();
			boolean isUpdated= service.UpdateInformation(AccountNo, colname, data);
			RequestDispatcher rd = request.getRequestDispatcher("ProfileEditer");
			if(isUpdated){
				request.setAttribute("msg", "Information Updated");
			}else{
				request.setAttribute("msg", "Information Update Failed");
			}
			rd.forward(request, response);
		}
		else{
			RequestDispatcher rd = request.getRequestDispatcher("ProfileEditer");
			request.setAttribute("msg", "Please Login");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
