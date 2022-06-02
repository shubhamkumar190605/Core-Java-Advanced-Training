<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<!-- Head -->
<head>

	<title>Login|Register</title>

	<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="keywords" content="Library Member Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Meta-Tags -->

	<!-- Style -->
	    <link rel="stylesheet" href="css/common.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">

	<!-- Fonts -->
		<link href="//fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
	<!-- //Fonts -->

</head>
<!-- //Head -->

<!-- Body -->
<body>

	<a href="bookstore.jsp"><h1>Magic Book Castle</h1></a>
	<div style="color: red">
	
   </div>
	<div class="container w3layouts agileits">

		<div class="login w3layouts agileits">
			<h2>Log in</h2>
			
			<form method="post" action="/BookStore/loginServlet">
				<input type="text" name="email" value="${param['email']}" placeholder="register e-mail" required="">
				<input type="password" name="password" value="${param['password']}" placeholder="password" required="">
			
			<ul class="tick w3layouts agileits">
				<li>
					<input type="checkbox" id="brand1" value="">
					<label for="brand1"><span></span>remember password</label>
				</li>
			</ul>
			<div class="send-button w3layouts agileits">
				
					<input type="submit" value="Log in">
				</form>
			</div>
			<div class="clear"></div>
		</div>

		<div class="register w3layouts agileits">
			<h2>register</h2>
			<form method="post" action="/BookStore/registServlet">
				<input type="text" id="inputName" Name="Name" value="${param['Name'] }" placeholder="username" required="">
				<input type="text" id="inputEmail" Name="Email" value="${param['Email'] }" placeholder="Mail" required="">
				<input type="password" id="inputPassword" Name="Password" value="${param['Password'] }" placeholder="password" required="">
				<input type="text" id="inputTel" Name="Tel" value="${param['Tel'] }" placeholder="telephone number" required="">
			
			<div class="send-button w3layouts agileits">
				
					<input type="submit" value="register" onClick="return CheckForm()">
				</form>
			    <script type="text/javascript">
	         var msg="<%=request.getAttribute("msg") %>";
	        if(msg !="null"){
	         alert(msg);
	         request.removeAttribute("msg");
	          }
	            </script>
				<script>
			
				    	  
				    	  function CheckForm(){
				    	  
				    	  var name=document.getElementById("inputName").value;
				    	  if(name==null||name==""||name.length>10) {
				    	  alert("Please check that your username is correct");
				    	  return false;}
				    	  var password=document.getElementById("inputPassword").value;
				    	  if(password==null||password==""||password.length>50){
				    	   alert("Check your password, did you enter it, the password cannot exceed 50 characters");
				    	   return false;
				    	   }
				    	  
				    	  
				    	  
				    	  var email=document.getElementById("inputEmail").value;
				    	  var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
				    	  if(email.length>50){
				    	  alert("Is your email too long?");
				    	  return false;
				    	  }
				    	  else if(!reg.test(email)){
				    	  alert("Check your email, is it correct?");
				    	  return false;
				    	  }
				    	  var tel=document.getElementById("inputTel").value;
				    	  var regt = /^0?1[3|4|5|8][0-9]\d{8}$/;
				    	  if(!regt.test(tel)){
				    	  alert("Check your phone Oh, did you enter it correctly?");
				    	  return false;
				    	  }
				    	  
				    	  
				    	  }
			
				    	 </script>
			</div>
			<div class="clear"></div>
		</div>

		<div class="clear"></div>

	</div>

	<div class="footer w3layouts agileits">
		<p> &copy; 2016 ECNU BOOK STORE. All Rights Reserved | Design by </a></p>
	</div>

</body>
<!-- //Body -->

</html>