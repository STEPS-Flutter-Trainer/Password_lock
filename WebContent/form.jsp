<%@page import="com.ul.CheckLogin"%>
<%@page import="java.util.logging.Logger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title> Customer Data </title>
</head>
<body>
<h1>Customer Details</h1>

<form action="#" method="post">

NAME<input type="text" name="acct">
PASSWORD<input type="text" name="SSN">
<input type="submit" NAME="sub">

</form>




<% //Logger.getLogger("LoginModule").debug("Entering LoginProcess1.jsp"); %>
<%
//--Login Process---Get form parameters from CustomerLogin.jsp
if(request.getParameter("sub")!=null){
	int count =0;
	if(session.getAttribute("count")!=null){
	count = (Integer)session.getAttribute("count");
	}
	if(count<3){
	//rest stuff to authentiacte user
	// if wrong password then increment the count:
	count = count+1;
	session.setAttribute("count",count);
	String strUserId = request.getParameter("acct");
    String strPassword = request.getParameter("SSN");
    boolean isValidUser = false;
   
    isValidUser = CheckLogin.LoginValidate(strUserId, strPassword);
    if (isValidUser == true){
    out.println("Successfully Logged in");
    }
    else
    {
    out.println("Login Failed");
    }
	}else{
	    out.println("You are Blocked");
	} 
    }
   // Logger.getLogger("LoginModule").debug("Value returned from CheckLogin"+"      " +isValidUser);
%>