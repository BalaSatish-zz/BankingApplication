<%@page import="com.online.bank.application.dto.RegistrationDTO"%>
<%@page import="javax.imageio.spi.RegisterableService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import=" java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"  integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>User Profile</title>
</head>
<body style="background-image: url('HomeBackground.jpg'); background-size:cover;margin-top: 50px;">
<form method="post" action="view.do">
	<INPUT TYPE="submit" value="ViewBalance" hidden>
	</form>
<% RegistrationDTO dto =(RegistrationDTO)  request .getAttribute("UserDetails");%>
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="Welcome.jsp">State Bank of India</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="DisplayName.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Banking
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
           <a class="dropdown-item" href="Deposit">Deposit</a>
          <a class="dropdown-item" href="Withdraw">Withdraw</a>
          <a class="dropdown-item" href="Transaction.jsp">Transfer</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#" onclick="document.forms[0].submit();">View Balance</form></a>
          <a class="dropdown-item" href="Transhistory.jsp">View Transactions</a>
      </li>
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Account
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
          <a class="dropdown-item" href="viewprofile">View Profile</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="ProfileEditer">Edit Profile</a>
          <a class="dropdown-item" href="ChangePassword">Change Password</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="log">Logout</a>
        </div>
</nav>
<div class="container">
	<div class="row justify-content-md-center" >
		   <FORM  style="margin-top: 80px;">
		<TABLE class="table table-striped table-dark">
			<TR>
			<TD colspan="2" align="center"><h2>Account Details</h2></TD>
			</TR>
			<TR>
			<TD>Account Number:</TD>
				<TD><INPUT  class="form-control" TYPE="text" NAME="fn" value="<%=(String)dto.getAccno() %>" disabled></TD>
			</TR>
			<TR>
			<TD>First Name:</TD>
				<TD><INPUT  class="form-control" TYPE="text" NAME="fn" value="<%=dto.getFirstName() %>" disabled></TD>
			</TR>
			<TR>
				<TD>Last Name:</TD>
				<TD><INPUT class="form-control" TYPE="text" NAME="ln" value="<%=dto.getLastName() %>"disabled></TD>
			</TR>
			<TR>
				<TD>Email-Id:</TD>
				<TD><INPUT class="form-control" TYPE="email" NAME="email" value="<%=dto.getEmail() %>" disabled></TD>
			</TR>
			<TR>
				<TD>Mobile Number:</TD>
				<TD><INPUT class="form-control" TYPE="text" NAME="mn" value="<%=dto.getMobileNo() %>" disabled></TD>
			</TR>
			<TR>
				<TD>Address:</TD>
				<TD><TEXTAREA class="form-control" NAME="add" value="" disabled><%=dto.getAddress() %></TEXTAREA></TD>
			</TR>
			<TR>
				<TD>Date of Birth:</TD>
				<TD>
				<INPUT class="form-control" TYPE="Date" NAME="db" value="<%=dto.getDob() %>" disabled>
				</TD>
			</TR>
			<TR>
				<TD>Gender:</TD>
				<TD>
				<INPUT class="form-control" TYPE="text" NAME="db" value="<%=dto.getGender() %>" disabled>
				</TD>
			</TR>
			<TR>
				<TD>Type of Account:</TD>
				<TD>
				<INPUT class="form-control" TYPE="text" NAME="db" value="<%=dto.getTypeofAccount() %>" disabled>
				</TD>
			</TR>
		
			<tr>
				<td>Balance in INR (&#8377) :</td>
				<td><input class="form-control" type="text" name="en" value="<%=dto.getAmount() %>" disabled></td>
			</tr>
			<TR>
			<TD colspan="2" align="center">
			</TD>
			</TR>
		</TABLE>
		</FORM>
	
		</div>
</div>
</BODY>
</html>