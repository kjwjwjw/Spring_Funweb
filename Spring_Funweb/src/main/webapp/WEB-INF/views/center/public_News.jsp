<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>center/public_News.jsp</title>
<link href="resources/css/default.css" rel="stylesheet" type="text/css">
<link href="resources/css/subpage.css" rel="stylesheet" type="text/css">
</head>
<body>
	
	<div id="wrap">
<%-- 	<h1><%=pageNum %></h1> --%>
		<!-- 헤더 들어가는곳 -->
		<jsp:include page="../inc/top.jsp" />
		<!-- 헤더 들어가는곳 -->

		<!-- 본문들어가는 곳 -->
		<!-- 본문 메인 이미지 -->
		<div id="sub_img_center"></div>
		<!-- 왼쪽 메뉴 -->
		<nav id="sub_menu">
			<ul>
				<li><a href="notice.jsp">Notice</a></li>
				<li><a href="public_News.jsp">Question</a></li>
				
				
			</ul>
		</nav>
		<!-- 본문 내용 -->
		<article>
		<H1>Question</H1>
			<h1></h1>
			<table id="notice">
				<tr>
					<th class="tno">No.</th>
					<th class="ttitle">Title</th>
					<th class="twrite">Write</th>
					<th class="tdate">Date</th>
					<th class="tread">Read</th>
				</tr>
				<!-- 반복문을 사용하여 ArrayList 객체만큼 반복하면서 -->
				<!-- ArrayList 객체 내의 BoardBean 객체를 꺼내서 저장한 후 -->
				<!-- 각 레코드를 tr 태그의 td 태그에 출력하기 -->
			
<%-- 				<% --%>
				
				
				
// 				for(publicNewsBean publicNews : publicnewslist) {
<%-- 					%> --%>
				
<%-- 				<tr onclick="location.href='public_News_content.jsp?num=<%=publicNews.getNum() %>&page=<%=pageNum %>'"> --%>
<%-- 				 	<td><%=publicNews.getNum() %></td> --%>
<%-- 					<td class="left"><%=publicNews.getSubject() %></td> --%>
<%-- 					<td><%=publicNews.getName() %></td> --%>
<%-- 					<td><%=publicNews.getDate() %></td> --%>
<%-- 					<td><%=publicNews.getReadcount() %></td> --%>
<!-- 				</tr> -->
				
<%-- 				<%  --%>
// 				}
				
<%-- 				%> --%>
				</table>
			
			<div id="table_search">
				<input type="button" value="글쓰기" class="btn" onclick="location.href='public_News_write.jsp'">
				</div>
				<div id="table_search">
				<form action="public_News_search.jsp" method="get">
				<select name="searchType">
					<option value="subject">제목</option>
					<option value="name">작성자</option>
				</select>
					<input type="text" name="search" class="input_box">
					<input type="submit" value="Search" class="btn">
				</form>
			</div>

				<div class="clear"></div>
				<div id="page_control">
				<!-- 현재 페이지 번호(pageNum)가 1보다 클 경우에만 Prev 링크 동작
				=> 클릭 시 현재 페이지 번호(pageNum) -1 값을 파라미터로 전달
				 -->
<%-- 				 <%if(pageNum>1) { %> --%>
<%-- 				 	<a href="public_News.jsp?page=<%=pageNum -1%>">Prev</a> --%>
<%-- 				 <%} else { %> --%>
<!-- 					Prev&nbsp; -->
<%-- 				 <%} %> --%>
				 
<%-- 				 <% for(int i=startPage;i<endPage;i++) {%>  --%>
<!-- 					단, 현재 페이지 번호는 링크 없이 표시 -->
<%-- 					<%if(pageNum == i) { %> --%>
<%-- 						&nbsp;&nbsp;<%=i %> &nbsp;&nbsp; --%>
<%-- 					<%} else { %> --%>
<%-- 						<a href="public_News.jsp?page=<%=i%>"><%=i %></a> --%>
<%-- 					<%} %> --%>

<%-- 				<%} %>  --%>
				
				
				
<%-- 				<%if(pageNum<maxPage) { %> --%>
<%-- 				 	<a href="public_News.jsp?page=<%=pageNum +1%> ">Next</a> --%>
<%-- 				 <%} else { %> --%>
<!-- 					&nbsp;Next -->
<%-- 				 <%} %> --%>
				</div>
		</article>

		<div class="clear"></div>
		<!-- 푸터 들어가는곳 -->
		<jsp:include page="../inc/bottom.jsp" />
		<!-- 푸터 들어가는곳 -->
	</div>
</body>
</html>