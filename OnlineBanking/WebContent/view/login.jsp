<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"  integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>Login</title>
<script type="text/javascript">
function myvalidate(){
	var accountno=document.myform.acno.value;
	var password=document.myform.pw.value;
	if(accountno=="" || password==""){
		alert("AccountNo  and password are should not be empty");
		return false;
	}
	return true;
}
</script>
</head>
<body style="background-image: url('HomeBackground.jpg'); background-size:cover;margin-top: 50px;">
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
          <a class="dropdown-item" href="#">Deposit</a>
          <a class="dropdown-item" href="#">Withdraw</a>
          <a class="dropdown-item" href="#">Transfer</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">View Balance</a>
          <a class="dropdown-item" href="#">View Transactions</a>
      </li>
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Account
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
          <a class="dropdown-item" href="login.jsp">Login</a>
          <a class="dropdown-item" href="Registration.jsp">Register</a>
        </div>
      </li>
    </ul>
  </div>
</nav>

<div class="container">
	<div class="row justify-content-md-center" >
		   <FORM  name="myform" method="POST" ACTION="login.do" style="margin-top: 80px;">
		<TABLE class="table table-striped table-dark">
			<TR>
			<TD colspan="2" align="center"><h2>Login</h2></TD>
			</TR>
			<TR>
			<TD>Account Number:</TD>
				<TD><INPUT  class="form-control" placeholder="SBI-123456789" TYPE="text" NAME="acno" required></TD>
			</TR>
			<TR>
				<TD>Password:</TD>
				<TD><INPUT class="form-control" placeholder="************" TYPE="password" NAME="pw" required></TD>
			</TR>
			<TR>
			<TD colspan="2" align="center">
			<%
			String errormsg = (String) request.getAttribute("msg");
			if (errormsg != null) {
			%>
			<font class="text-light text-capitalize"><%=errormsg%> </font>
		<%
			}
		%>
			</TD>
			</TR>
			<tr>
				<td colspan="2" align="center">
					<Button type="submit" name="submit"  onsubmit="return myvalidate()" class="btn btn-primary btn-lg">Login</Button>
				</td>
				</tr>
				<TR>
			<TD colspan="2" align="center"><font color="Red">
<% String ref= (String)request.getAttribute("msg");%>
<% if(ref!=null){
%>
<%=ref %>
<%} %>

</font></TD>
			</TR>
			</TABLE>
		</FORM>
	
		</div>
</div>
</BODY>
</HTML>