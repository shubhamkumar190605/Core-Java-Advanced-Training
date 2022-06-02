<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<head>
<title>本店书目 | 魔法书堡</title>
<link href="css/common.css" rel="stylesheet" type="text/css">
<link href="css/bookdetails.css" rel="stylesheet" type="text/css">
<%@ include file="common.jsp" %>
<script type="text/javascript">
   var msg="<%=request.getAttribute("msg")%>";
   if(msg !="null"){
      alert(msg);
   }
</script>
   
</head>
   <%request.setCharacterEncoding("utf-8");%>
    <%@ include file="header.jsp" %>
   
    <%String uri = "/catalog.jsp";%>
    <div class="catButton">
    <button class="bt1"><a  href="<%=request.getContextPath()%>/catalogServlet?tag=文学">文学</a></button>
    <button class="bt2"><a  href="<%=request.getContextPath()%>/catalogServlet?tag=理学">理学</a></button>
    <button class="bt3"><a  href="<%=request.getContextPath()%>/catalogServlet?tag=工学">工学</a></button>
    <button class="bt4"><a  href="<%=request.getContextPath()%>/catalogServlet?tag=教育">教育</a></button>
    <button class="bt5"><a  href="<%=request.getContextPath()%>/catalogServlet?tag=经济">经济</a></button>
    <button class="bt6"><a  href="<%=request.getContextPath()%>/catalogServlet?tag=管理">管理</a></button>
    <button class="bt7"><a  href="<%=request.getContextPath()%>/catalogServlet?tag=其他">其他</a></button>
    </div>
    
     <div class="catable">
      <table>
        <tr><th>书名</th><th>作者</th><th>价格</th><th></th></tr><!--固定格式-->
    <%
      List<Book> books=new ArrayList();
      HttpSession session1=request.getSession();
      books=(List<Book>)session1.getAttribute("books");
      String tag=" ";
      String nexttag=" ";
      if(books!=null){//对获得的书籍以book的tag进行排序
        Collections.sort(books,new Comparator<Book>(){
          public int compare(Book b1,Book b2){
           if(b1.getTag()==null) return -1;
           if(b2.getTag()==null) return 1;
           else return b1.getTag().compareTo(b2.getTag());
        
        } 
        });
        
        for(int i=0;i<books.size();i++){
            tag=books.get(i).getTag();
            if(i !=books.size()-1) nexttag=books.get(i+1).getTag();
            else nexttag=" ";
            request.setAttribute("index", i);
            
      
     %>
    
        <tr><td><a href="/BookStore/singlePage.jsp?bookId=${ books.get(index).getId() }">${ books.get(index).getName() }</a></td><td>${ books.get(index).getAuthor() }</td><td>${ books.get(index).getPrice() }</td>
        <td><a href="/BookStore/addItem?keyword=${ books.get(index).getTag() }&uri=<%=uri%>&bookId=${ books.get(index).getId() }">加入购物车</</a></td></tr><!-- 从数据库中读取 -->
        <%
            if(!tag.equals(nexttag)){
        %>
         <tr><th></th></tr><!--固定格式-->
      </table>
      <table>
        
            <%
              }
           }
         }
         %>
        
       
    </div>
    
    <%@ include file="footer.jsp" %>
    </body>
</html>