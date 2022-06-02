<%@ page import="myPackage.*" %>
<%@ page import="myBeans.*"%>
<%@ page import="myDao.*"%>
<%@ page import="myService.*" %>
<%@ page import="myServlet.*" %>
<%@ page import="java.util.*" %>


<jsp:useBean id="cart" scope="session" class="myPackage.ShoppingCart"/>
<jsp:useBean id="bookDB" scope="application" class="myDao.UserDao"/>

<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900' rel='stylesheet' type='text/css'>
<!--//fonts-->
