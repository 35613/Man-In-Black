<%@page import="com.eagle.men_in_black.model.ServiceDto"%>
<%@page import="com.eagle.men_in_black.model.UserMypageDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<ServiceDto> noticelist = (List<ServiceDto>) request.getAttribute("noticelist");
	


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
td, th {
	text-align: center;
}

.table {
	margin-left: 120px;
	width: 86%;
}
</style>
<title>::NOTICEBOARD::</title>
</head>
<body>
	<center>
		<div id="mypagehead">
			<h4 align="right" style="margin-right: 100px">
				<a href="meninblack.mib">홈</a> > <a href="servicenotice.mib">고객센터</a>
			</h4>
			<h3>고객센터</h3>
			<h4>MIB 공지사항입니다</h4>
		</div>
	</center>
	<h3>NOTICE</h3>
	
	<!--CEO기능  -->
	<p align="right">
			<a  class="btn btn-primary" href="ckeditorImageUpload.mib" role="button">공지사항 쓰기</a>
	</p>

	<!--공지제목 누르면 seq가지고 컨트롤러 이동  -->
	<table class="table">
		<col width="5%">
		<col width="60%">
		<col width="10%">
		<thead>
			<tr>
				<th>글번호</th>
				<th>글제목</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
			<%
				for (int i = 0; i < noticelist.size(); i++) {
			%>
			<tr>
				<td><%=noticelist.get(i).getNOTICE_SEQ()%></td>
				<td><a
					href="servicedetail.mib?seq=<%=noticelist.get(i).getNOTICE_SEQ()%>"><%=noticelist.get(i).getNOTICE_TITLE()%></a></td>
				<td><%=noticelist.get(i).getNOTICE_TIME()%></td>
			</tr>
			<%
				}
			%>
		</tbody>

	</table>


	<%
		// 페이징 및 날짜 선택 
		String PAGE_NUM = (request.getParameter("PAGE_NUM") == null || request.getParameter("PAGE_NUM") == "") ? "1"
				: request.getParameter("PAGE_NUM");
		String PAGE_SIZE = (request.getParameter("PAGE_SIZE") == null || request.getParameter("PAGE_SIZE") == "")
				? "10" : request.getParameter("PAGE_SIZE");

		int page_num = Integer.parseInt(PAGE_NUM);
		int page_size = Integer.parseInt(PAGE_SIZE);

		int pageCount = (noticelist.get(0).getTOT_CNT() % page_size) == 0
				? noticelist.get(0).getTOT_CNT() / page_size : (noticelist.get(0).getTOT_CNT() / page_size) + 1;
	%>

	<div class="row" align="center">
		<p>
			<%
				for (int i = 1; i <= pageCount; i++) {
			%>
			<a href="servicenotice.mib?PAGE_NUM=<%=i%>" class="btn btn-default"
				role="button"><%=i%></a>
			<%
				}
			%>
		</p>
	</div>



</body>



</html>