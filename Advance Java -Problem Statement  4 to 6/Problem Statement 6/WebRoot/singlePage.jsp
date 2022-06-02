<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<head>
<title>Bibliographic Information | Magic Book Castle</title>
<link href="css/common.css" rel="stylesheet" type="text/css">
<link href="css/bookdetails.css" rel="stylesheet" type="text/css">
<%@ include file="common.jsp" %>
</head>
   <%@ include file="header.jsp" %>
   <script type="text/javascript">
     var msg="<%=request.getAttribute("msg")%>";
     if(msg !="null"){
       alert(msg);
     }
     </script>
     <%
       String bookId = request.getParameter("bookId");
       UserDao b = new UserDao();
	   Book book = b.getBookDetails(bookId);
	   String picPath = book.getPicturepath();
	   if(picPath==null)
	      picPath = "images/wo.jpg";
	 %>   
    <div class="bookdetails">
      <img class="book" src="<%=picPath%>">
      <p>书名：<%=book.getName()%></p>
      <p>作者：<%=book.getAuthor()%></label></p>
      <p>价格：<%=book.getPrice()%></p>
      <p>类别：<%=book.getTag()%></p>
      <hr>
      <p>简介：<%=book.getSummary()%></p>
      <p>评论：<%=book.getComment()%></p>
      
      <div class="choice">
      <a href="bookstore.jsp">return to home page</a> 
      <a href="showcart.jsp">Return to shopping cart</a>
      <a href="catalog.jsp">continue shopping</a>
      </div>
   </div>
   <br>
    <%@ include file="footer.jsp" %>
    </body>
</html>