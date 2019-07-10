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

<title>Registration</title>
<script type="text/javascript">
	function myvalid() {
		var fname = document.reg.fn.value;
		var lname = document.reg.ln.value;
		var phoneno = document.reg.mn.value;
		var add = document.reg.add.value;
		var dob = document.reg.db.value;
		var pass1 = document.reg.pwd.value;
		var pass2 = document.reg.pwd1.value;
		var amt = document.reg.en.value;
		if (fname == "") {
			alert("first name should not be empty");
			return false;
		} else if (lname == "") {
			alert("last name should not be empty");
			return false;
		} else if (phoneno == "") {
			alert("phone number should not be empty");
			return false;

		} else if (add == "") {
			alert("Address should not be empty");
			return false;
		} else if (dob == "") {
			alert("Date of Birth should not be empty");
			return false;
		} else if (pass1 == "") {
			alert("password should not be empty");
			return false;
		} else if (pass2 == "") {
			alert("retype password should not be empty");
			return false;
		} else if (pass1 != pass2) {
			alert("retype password should be matched with password");
			return false;
		} else
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
		   <FORM  name="reg" METHOD="POST" ACTION="reg.do" style="margin-top: 80px;">
		<TABLE class="table table-striped table-dark">
			<TR>
			<TD colspan="2" align="center"><h2>Registration Form</h2></TD>
			</TR>
			<TR>
			<TD>First Name:</TD>
				<TD><INPUT  class="form-control" TYPE="text" NAME="fn" required></TD>
			</TR>
			<TR>
				<TD>Last Name:</TD>
				<TD><INPUT class="form-control" TYPE="text" NAME="ln" required></TD>
			</TR>
			<TR>
				<TD>Email-Id:</TD>
				<TD><INPUT class="form-control" TYPE="email" NAME="email" required></TD>
			</TR>
			<TR>
				<TD>Mobile Number:</TD>
				<TD><INPUT class="form-control" TYPE="text" NAME="mn" required></TD>
			</TR>
			<TR>
				<TD>Address:</TD>
				<TD><TEXTAREA class="form-control" NAME="add" ROWS="" COLS="" required></TEXTAREA></TD>
			</TR>
			<TR>
				<TD>Date of Birth:</TD>
				<TD><INPUT class="form-control" TYPE="Date" NAME="db" required></TD>
			</TR>
			<TR>
				<TD>Gender:</TD>
				<TD>
				<INPUT TYPE="radio" NAME="m" value="male" required/>Male&nbsp;
				<INPUT TYPE="radio" NAME="m" value="female" required/>Female
				</TD>
			</TR>
			<TR>
				<TD>Type of Account:</TD>
				<TD>
				<INPUT TYPE="radio" NAME="acctype" value="sb" required/>SB&nbsp;
				<INPUT TYPE="radio" NAME="acctype" value="fd" required/>FD&nbsp;<BR> 
				<INPUT TYPE="radio" NAME="acctype" value="ca" required/>CA&nbsp;
				<INPUT TYPE="radio" NAME="acctype" value="rd" required/>RD&nbsp;<BR>
				</TD>
			</TR>
		
			<tr>
				<td>Enter the Amount (minimum &#8377 1000)</td>
				<td><input class="form-control" type="text" name="en" required></td>
			</tr>
			<TR>
				<TD>Enter Password:</TD>
				<TD><INPUT class="form-control" TYPE="password" name="pwd" required></TD>
		
			</TR>
			<TR>
				<TD>Confirm Password:</TD>
				<TD><INPUT class="form-control" TYPE="password" name="pwd1" required></TD>
		
			</TR>
			<TR>
			<TD colspan="2" align="center">
			<%
			String errormsg = (String) request.getAttribute("msg");
			if (errormsg != null) {
			%>
			<font class="text-light text-capitalize"><%=errormsg%></font>
		<%
			}
		%>
			</TD>
			</TR>
			<tr>
				<td align="center"><Button type="reset" class="btn btn-primary  btn-lg">Clear Form</Button></td>
				<td align="center">
					<Button type="submit" name="submit" onsubmit="return myvalid()" class="btn btn-primary  btn-lg">Create Account</Button>
				</td>
				</tr>
				<TR>
			<TD colspan="2" align="center"></TD>
			</TR>
			</TABLE>
		</FORM>
	
		</div>
</div>
</BODY>
</html>