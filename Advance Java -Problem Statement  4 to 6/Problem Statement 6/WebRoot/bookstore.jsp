<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title>魔法书堡 | 主页</title>
<link href="css/carousel.css" rel="stylesheet" type="text/css">
<link href="css/common.css" rel="stylesheet" type="text/css">	
<link href="css/bookstore.css" rel="stylesheet" type="text/css">

<%@ include file="common.jsp" %>
<script src="js/jquery.js"></script>
<script src="js/bootstrap-carousel.js"></script>
<script type="text/javascript">
	var t = n = 0, count;
	$(document).ready(function(){
	    $("#myCarousel").carousel('cycle');	
    })
</script>

</head>
    <%@ include file="header.jsp" %>
    <div id="myCarousel" class="carousel slide"  data-ride="carousel">
	<div class="carousel-inner" >
		<div class="item active">
			<img src="images/home.png" class="quote" alt="First slide">
		</div>
		<div class="item">
			<img src="images/home1.png" class="quote" alt="Second slide">
		</div>
		<div class="item">
			<img src="images/home2.png" class="quote" alt="Third slide">
		</div>
		<div class="item">
			<img src="images/home3.png" class="quote" alt="Third slide">
		</div>
		<div class="item">
			<img src="images/home4.png" class="quote" alt="Third slide">
		</div>
		<div class="item">
			<img src="images/home.png" class="quote" alt="Third slide">
		</div>
	</div>
	    <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
	    <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
    </div> 
    
    <form method="post" action="/BookStore/bookServlet">
	<div class="search-line">
	    <input class="search" type="text" name="keyword" id="bookKey" placeholder="搜索一些图书"/><button type="submit" onClick="return checkForm()" value="搜索">搜索</button>
	</div>
	</form>
	<script>
	  function checkForm(){
	    var keyword=document.getElementById("bookKey").value;
	    if(keyword==""||keyword==null){
	    alert("请输入关键字");
	      return false;
	    }
	  }
	</script>
	<% String bookId="1"; %>
	<div class="line"></div>
	<div class="content"><a id="content">
	    <h1>热门推荐</h1>
		<div class="content-grid">
			<a href="<%=request.getContextPath()%>/singlePage.jsp?bookId=<%=bookId %>" class="b-link-stripe b-animate-go  thickbox">
				<img  src="images/pi_01.jpg" />
				<div class="b-wrapper">
					<h2 class="b-animate b-from-left    b-delay03 ">
						<span>书名|作者</span>
						<p>点击查看详情</p>
						<i> </i>
					</h2>
				</div>
			</a>
		</div>
		<%bookId="2"; %>
		<div class="content-grid">
			<a href="<%=request.getContextPath()%>/singlePage.jsp?bookId=<%=bookId %>" class="b-link-stripe b-animate-go  thickbox">
				<img  src="images/pi_02.jpg" />
					<div class="b-wrapper">
						<h2 class="b-animate b-from-left    b-delay03 ">
							<span>书名|作者</span>
							<p>点击查看详情</p>
							<i> </i>
						</h2>
					</div>
			</a>
		</div>
		<%bookId="3";%>
		<div class="content-grid">
			<a href="<%=request.getContextPath()%>/singlePage.jsp?bookId=<%=bookId %>" class="b-link-stripe b-animate-go  thickbox">
				<img  src="images/pi_03.jpg" />
					<div class="b-wrapper">
						<h2 class="b-animate b-from-left    b-delay03 ">
							<span>书名|作者</span>
							<p>点击查看详情</p>
							<i> </i>
						</h2>
					</div>
			</a>
		</div>
		<%bookId="4";%>
		<div class="content-grid">
			<a href="<%=request.getContextPath()%>/singlePage.jsp?bookId=<%=bookId %>" class="b-link-stripe b-animate-go  thickbox">
				<img  src="images/pi_04.jpg" />
					<div class="b-wrapper">
						<h2 class="b-animate b-from-left    b-delay03 ">
							<span>书名|作者</span>
							<p>点击查看详情</p>
							<i> </i>
						</h2>
					</div>
			</a>
		</div>
		<%bookId="5";%>
		<div class="content-grid">
			<a href="<%=request.getContextPath()%>/singlePage.jsp?bookId=<%=bookId %>" class="b-link-stripe b-animate-go  thickbox">
				<img  src="images/pi_05.jpg" />
					<div class="b-wrapper">
						<h2 class="b-animate b-from-left    b-delay03 ">
							<span>书名|作者</span>
							<p>点击查看详情</p>
							<i> </i>
						</h2>
					</div>
			</a>
		</div>
		<%bookId="6";%>
		<div class="content-grid">
			<a href="<%=request.getContextPath()%>/singlePage.jsp?bookId=<%=bookId %>" class="b-link-stripe b-animate-go  thickbox">
				<img  src="images/pi_06.jpg" />
					<div class="b-wrapper">
						<h2 class="b-animate b-from-left    b-delay03 ">
							<span>书名|作者</span>
							<p>点击查看详情</p>
							<i> </i>
						</h2>
					</div>
			</a>
		</div>
		<%bookId="7";%>
		<div class="content-grid">
			<a href="<%=request.getContextPath()%>/singlePage.jsp?bookId=<%=bookId %>" class="b-link-stripe b-animate-go  thickbox">
				<img  src="images/pi_07.jpg" />
					<div class="b-wrapper">
						<h2 class="b-animate b-from-left    b-delay03 ">
							<span>书名|作者</span>
							<p>点击查看详情</p>
							<i> </i>
						</h2>
					</div>
			</a>
		</div>
		<%bookId="8";%>
		<div class="content-grid">
			<a href="<%=request.getContextPath()%>/singlePage.jsp?bookId=<%=bookId %>" class="b-link-stripe b-animate-go  thickbox">
				<img  src="images/pi_08.jpg" />
					<div class="b-wrapper">
						<h2 class="b-animate b-from-left    b-delay03 ">
							<span>书名|作者</span>
							<p>点击查看详情</p>
							<i> </i>
						</h2>
					</div>
			</a>
		</div>
		<%bookId="9";%>
		<div class="content-grid grid9">
			<a href="<%=request.getContextPath()%>/singlePage.jsp?bookId=<%=bookId %>" class="b-link-stripe b-animate-go  thickbox">
				<img  src="images/pi_09.jpg" />
					<div class="b-wrapper">
						<h2 class="b-animate b-from-left    b-delay03 ">
							<span>书名|作者</span>
							<p>点击查看详情</p>
							<i> </i>
						</h2>
					</div>
			</a>
		</div>
		<%bookId="10";%>
		<div class="content-grid">
			<a href="<%=request.getContextPath()%>/singlePage.jsp?bookId=<%=bookId %>" class="b-link-stripe b-animate-go  thickbox">
				<img  src="images/pi_10.jpg" />
					<div class="b-wrapper">
						<h2 class="b-animate b-from-left    b-delay03 ">
							<span>书名|作者</span>
							<p>点击查看详情</p>
							<i> </i>
						</h2>
					</div>
			</a>
		</div>
		<%bookId="11";%>
		<div class="content-grid">
			<a href="<%=request.getContextPath()%>/singlePage.jsp?bookId=<%=bookId %>" class="b-link-stripe b-animate-go  thickbox">
				<img  src="images/pi_11.jpg" />
					<div class="b-wrapper">	
				    	<h2 class="b-animate b-from-left    b-delay03 ">
							<span>书名|作者</span>
							<p>点击查看详情</p>
							<i> </i>
						</h2>
					</div>
			</a>
		</div>
		<%bookId="12";%>
		<div class="content-grid">
			<a href="<%=request.getContextPath()%>/singlePage.jsp?bookId=<%=bookId %>" class="b-link-stripe b-animate-go  thickbox">
				<img  src="images/pi_12.jpg" />
					<div class="b-wrapper">
						<h2 class="b-animate b-from-left    b-delay03 ">
							<span>书名|作者</span>
							<p>点击查看详情</p>
							<i> </i>
						</h2>
					</div>
			</a>
		</div>
    </a></div>
    <%@ include file="footer.jsp" %>
    </body>
</html>