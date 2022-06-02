<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<head>
<title>我的订单 | 魔法书堡</title>
<link href="css/common.css" rel="stylesheet" type="text/css">
<link href="css/bookdetails.css" rel="stylesheet" type="text/css">
<%@ include file="common.jsp" %>
</head>
    <%@ include file="header.jsp" %>
    <div class="catable"><table>
      <tr><th>书名</th><th>数量</th><th>单价</th><th>总金额</th><th>订单生成时间</th></tr>
       <%
        Object msg=request.getAttribute("msg");
        List<Book> books=(List<Book>)request.getAttribute("orderbooks");
        List<BookOrder> bookorders=(List<BookOrder>) request.getAttribute("bookorder");
        if(msg !=null){
       
        }
        else if(books !=null){
           String date=" ";
           String nextdate=" ";
           int count=0;
        for(int i=0;i<books.size();i++){
           date=bookorders.get(i).getDate();
           if(i!=books.size()-1){
               nextdate=bookorders.get(i+1).getDate();
           }
           else{
               nextdate=" ";
           }
           request.setAttribute("index", i);      
           %>
            <tr><td><label>${ orderbooks.get(index).getName() }</label></td>
            <td><label>${ bookorder.get(index).getSum() }</label></td>
            <td><label>${ orderbooks.get(index).getPrice() }</label></td>
            <td><label>${ orderbooks.get(index).getPrice() * bookorder.get(index).getSum() }</label></td>
            <td><label>${ bookorder.get(index).getDate()}</label></td></tr>
           <% count=count+bookorders.get(i).getSum()*books.get(i).getPrice(); %>
           <%if(date.equals(nextdate)) {}
             else{%>
               <%if(bookorders.get(i).getIfdone()==0){%>
                 <tr><th colspan="2">完成状态：待支付</th><%} 
                 else{%>
                 <tr><th colspan="2">完成状态：已支付</th><%} %>
             
                 <th colspan="2">总金额：<%=count %></th></tr>   
        
            </table>
            <table>
            <div class="choice"> 
            <%count=0;%>
            <a href="<%=request.getContextPath()%>/finOrderServlet?date=<%=date%>">确认付款</a>
            <a href="<%=request.getContextPath()%>/catalog.jsp">继续购物</a> 
            </div>
        <%
        }
      }
     }%>
    </div>
        
    <%@ include file="footer.jsp" %>
    </body>
</html>