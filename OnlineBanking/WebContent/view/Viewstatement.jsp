<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.online.bank.application.dto.SenderDTO"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"  integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>View Statements</title>
</head>
<body style="background-image: url('HomeBackground.jpg'); background-size:cover;margin-top: 50px;">
<form method="post" action="view.do">
	<INPUT TYPE="submit" value="ViewBalance" hidden>
	</form>
<%String ref = (String) session.getAttribute("un");%>
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
      </li>
    </ul>
    <h5 class="text-light text-capitalize"><%=ref%></h5>
  </div>
</nav>


<h1 class="display-4" style="background-color:rgba(255,255,255,0.8); ">Your Transaction History Between  <font class="text-success"><%=request.getAttribute("startDate") %></font> and <font class="text-success"><%=request.getAttribute("endDate")%></font></h1>

 <%  ArrayList<SenderDTO> list=(ArrayList<SenderDTO>)request.getAttribute("list"); 
 %>
 <center>
 <div class="col-md-6">
 <table class="table table-striped table-light">
		<tr>
			<th>Transaction ID</th>
			<th>Description</th>
			<th>Balance</th>
			<th>Date</th>
		</tr><%if(list!=null){ 
			for (SenderDTO senderdto : list) {
				
		%>	<tr>
		<td><%=senderdto.getTid()%></td>
			<td><%=senderdto.getDescription()%></td>
			<td><%=senderdto.getBalance()%></td>
			<td><%=senderdto.getDate()%></td>
		</tr>
		<%
			}
		}
		%>
		</table>
		</div>
		</center>
</body>
<form method="post" action="view.do">
	<INPUT TYPE="submit" value="ViewBalance" hidden>
	</form>
</html>