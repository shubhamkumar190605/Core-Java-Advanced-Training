<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<head>
<title>购物车 | 魔法书堡</title>
<link href="css/common.css" rel="stylesheet" type="text/css">
<link href="css/bookdetails.css" rel="stylesheet" type="text/css">
<%@ include file="common.jsp"%>
</head>

    <%@ include file="header.jsp" %>
    <%
     String bookId = request.getParameter("Remove");
     if (bookId != null) {
     cart.remove(bookId);
     Book book = new UserDao().getBookDetails(bookId);
     }
    if (request.getParameter("Clear") != null) {
     cart.clear();
     }
    %>
    
    <div class="bookdetails">
      <%
       int num = cart.getNumberOfItems();
       List<BookOrder> bookorder=new ArrayList();
       
       if(num>0){
       %>
      <p>您的购物车内有<%=num %>本书</p>
      <div class="table">
         <table>
         <tr>
         <th>数量</th>
         <th>书名</th>
         <th>单价</th>
         <th></th>
         </tr>
         <% 
         Iterator i = cart.getItems().iterator();
         
         while (i.hasNext()) {
            ShoppingCartItem item = (ShoppingCartItem)i.next();
            Book book = (Book)item.getItem();
            BookOrder bo=new BookOrder();
            bo.setBookid(book.getId());
            bo.setSum(item.getQuantity());
            bookorder.add(bo);
            System.out.println("在jsp里面："+bo.toString());
         %>
         <tr><td><%=item.getQuantity()%></td>
         <td><strong><a href="<%=request.getContextPath()%>/singlePage.jsp?bookId=<%=book.getId()%>">
         <%=book.getName()%></a></strong></td>
         <td><%=book.getPrice()%></td>
         <td><strong>
         <a href="<%=request.getContextPath()%>/showcart.jsp?Remove=<%=book.getId()%>">删除</a></strong>
         </td>
         </tr>
         <%// End of while
         }
         %>
         
         <tr><th colspan="2" >总额(元)</th>
         <th><%=cart.getTotal()%></th>
         <th><br></th></tr>
         </table>
     </div>
     <div class="choice"><a href="<%=request.getContextPath()%>/catalogServlet?tag=all">继续购物</a>
     <a href="<%=request.getContextPath()%>/unfinOrderServlet">付款</a> 
     <a href="<%=request.getContextPath()%>/showcart.jsp?Clear=clear">清空购物车</a></div>
     
     <%} else{%>
     <p>您的购物车里什么都没有呢~</p>
     <div class="choice">
     <a href="bookstore.jsp">返回主页</a>
     <a href="<%=request.getContextPath()%>/catalogServlet?tag=all">继续购物</a>
     </div>
     <div class="choice">
     <%} %>
    <%HttpSession ordersession=request.getSession();
       ordersession.setAttribute("bookorder", bookorder); %>
     
     </div>
     </div>
     
    <%@ include file="footer.jsp" %>
   
    </body>
</html>