<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<head>
<title>书目信息 | 魔法书堡</title>
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
       String uri = "/bookdetails.jsp";
       
       String booksName = (String) request.getAttribute("booksName");//搜寻的书的名称
       List<Book> books=(List<Book>)request.getAttribute("books"); //从bookServlet里获取到的书的列表
       if(books!=null){
       int num=books.size();
       for(int i=0;i<num;i++)
       {
       request.setAttribute("index", i);
       String bookId = books.get(i).getId();
       if(books.get(i).getPicturepath()!=null)
         request.setAttribute("picPath", books.get(i).getPicturepath());
       else
         request.setAttribute("picPath", "images/wo.jpg");      
       %>
    
     <div class="bookdetails"> 
      <img class="book" src="${ picPath }">
      <p>书名：<label>${ books.get(index).getName() }</label></p>
      <p>作者：<label>${ books.get(index).getAuthor() }</label></p>
      <p>价格：<label>${ books.get(index).getPrice() }</p>
      <p>类别：<label>${ books.get(index).getTag() }</label></p>
      <hr>
      <p>简介：<label>${ books.get(index).getSummary() }</p>
      <p>评论：<label>${ books.get(index).getComment() }</p>
      
      <div class="choice"> 
        <a href="/BookStore/addItem?uri=<%=uri%>&keyword=<%=booksName%>&bookId=<%=bookId%>">加入购物车</a>
        <a href="<%=request.getContextPath()%>/catalogServlet?tag=all">继续购物</a>
      </div>
     </div>
     <%
        }
       }
       else{
      %>
      <h1>很抱歉，我们找不到您要需要的图书，请随意看看下面的图书吧</h1>
      <div class="bookdetails">
      <img src="images/b2.jpg">
      <p>书名：平凡的世界（全集）</p>
      <p>作者：路遥</p>
      <p>价格：90</p>
      <p>类别：文学</label></p>
      <hr>
      <p>简介：</p>
      <p>评论：经典好书，品味生活</p>
      <div class="choice">
        <a href="bookstore.jsp">返回主页</a>
      </div>
      </div>
      <%} %>
    <%@ include file="footer.jsp" %>
    </body>
</html>