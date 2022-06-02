<%@ page contentType="text/html; charset=utf-8" %>
<body>
	<div class="header-top">
		<div class="logo">
		  <a href="bookstore.jsp"><img src="images/logo.jpg"></a>
		</div>
		<div class="cart">
		  <a href="showcart.jsp" title="购物车"><img src="images/cart.png"></a>
		</div>
        <div class="topbar">
          <a href="bookstore.jsp#content">热门推荐</a> 
		    <div class="dropdown">
		       <a href="<%=request.getContextPath()%>/catalogServlet?tag=all">本店书目</a>
               <div class="dropdown-content">
                  <a href="<%=request.getContextPath()%>/catalogServlet?tag=文学">文学</a>
                  <a href="<%=request.getContextPath()%>/catalogServlet?tag=理学">理学</a>
                  <a href="<%=request.getContextPath()%>/catalogServlet?tag=工学">工学</a>
                  <a href="<%=request.getContextPath()%>/catalogServlet?tag=教育">教育学</a>
				  <a href="<%=request.getContextPath()%>/catalogServlet?tag=经济">经济学</a>
				  <a href="<%=request.getContextPath()%>/catalogServlet?tag=管理">管理学</a>
				  <a href="<%=request.getContextPath()%>/catalogServlet?tag=其他">其他</a>
               </div>
		    </div>
		    <div class="dropdown">
	           <a href="<%=request.getContextPath()%>/orderServlet" >我的订单</a>
	           <div class="dropdown-content">
	               <a href="<%=request.getContextPath()%>/doneServlet">已支付</a>
	               <a href="<%=request.getContextPath()%>/undoneServlet">待支付</a>
	           </div>
	        </div>
	      <a href="login.jsp">登录|注册</a>
		</div>
		
	</div>