
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>center/notice_search.jsp</title>
<link href="resources/css/default.css" rel="stylesheet" type="text/css">
<link href="resources/css/subpage.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrap">
<%-- 	<h1>페이지번호 : <%=pageNum %></h1> --%>
<!-- 		<!-- 헤더 들어가는곳 --> -->
<%-- 		<jsp:include page="../inc/top.jsp" /> --%>
<!-- 		<!-- 헤더 들어가는곳 --> -->

<!-- 		<!-- 본문들어가는 곳 --> -->
<!-- 		<!-- 본문 메인 이미지 --> -->
<!-- 		<div id="sub_img_center"></div> -->
<!-- 		<!-- 왼쪽 메뉴 --> -->
<!-- 		<nav id="sub_menu"> -->
<!-- 			<ul> -->
<!-- 				<li><a href="notice.jsp">Notice</a></li> -->
<!-- 				<li><a href="public_News.jsp">Question</a></li> -->
				
				
			</ul>
		</nav>
		<!-- 본문 내용 -->
		<article>
			<h1>Notice</h1>
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
				
				
				
// 				for(BoardBean board : boardList) {
<%-- 					%> --%>
				
			
<%-- 				<tr onclick="location.href='notice_content.jsp?num=<%=board.getNum() %>&page=<%=pageNum %>'"> --%>
<%-- 				 	<td><%=board.getNum() %></td> --%>
<%-- 					<td class="left"><%=board.getSubject() %></td> --%>
<%-- 					<td><%=board.getName() %></td> --%>
<%-- 					<td><%=board.getDate() %></td> --%>
<%-- 					<td><%=board.getReadcount() %></td> --%>
<!-- 				</tr> -->
				
<%-- 				<%  --%>
// 				}
				
<%-- 				%> --%>
				
				
			</table>
			<div id="table_search">
				<input type="button" value="글쓰기" class="btn" onclick="location.href='notice_write.jsp'">
			</div>
			<div id="table_search">
<!-- 				<form action="notice_search.jsp" method="get"> -->
<!-- 				<select name="searchType"> -->
<!-- 					<option value="subject">제목</option> -->
<%-- 					<option value="name" <%if(searchType.equals("name")) { %> selected="selected" <%} %>>작성자</option> --%>
<!-- 				</select> -->
<%-- 					<input type="text" name="search" class="input_box" value="<%=search%>"> --%>
<!-- 					<input type="submit" value="Search" class="btn"> -->
<!-- 				</form> -->
			</div>
			
<!-- 			페이징 처리  -->
			<div class="clear"></div>
			<div id="page_control">
<!-- 				페이징 처리 시 링크에 notice.jsp 대신 notice_search.jsp  -->
				<!-- 현재 페이지 번호(pageNum)가 1보다 클 경우에만 Prev 링크 동작
				=> 클릭 시 현재 페이지 번호(pageNum) -1 값을 파라미터로 전달
<!-- 				 --> -->
<%-- 				 <%if(pageNum>1) { %> --%>
<%-- 				 	<a href="notice_search.jsp?page=<%=pageNum -1%>&search=<%=search %>&searchType=<%=searchType%> ">Prev</a> --%>
<%-- 				 <%} else { %> --%>
<!-- 					Prev&nbsp; -->
<%-- 				 <%} %> --%>
				 
<%-- 				 <% for(int i=startPage;i<endPage;i++) {%>  --%>
<!-- 					단, 현재 페이지 번호는 링크 없이 표시 -->
<%-- 					<%if(pageNum == i) { %> --%>
<%-- 						&nbsp;&nbsp;<%=i %> &nbsp;&nbsp; --%>
<%-- 					<%} else { %> --%>
<%-- 						<a href="notice_serach.jsp?page=<%=i%>&search=<%=search %>&searchType=<%=searchType%>"><%=i %></a> --%>
<%-- 					<%} %> --%>

<%-- 				<%} %>  --%>
				
				
				
<%-- 				<%if(pageNum<maxPage) { %> --%>
<%-- 				 	<a href="notice_search.jsp?page=<%=pageNum +1%>&search=<%=search %>&searchType=<%=searchType%> ">Next</a> --%>
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


