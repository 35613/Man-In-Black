<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style type="text/css">
.ch {
	width: 20px;
	height: 20px
}

td, th {
	text-align: center;
}
</style>
<title>::구매내역::</title>
</head>
<body>
	<center>
		<div id="mypagehead">
			<h4 align="right" style="margin-right: 100px">
				<a href="MenInBlack.jsp">홈</a> > <a href="mymain.mib">MY PAGE</a> >
				<a href="buylist.mib">구매내역</a>
			</h4>
			<h3>MY Order</h3>
			<h4>회원님이 M.I.B에서 구매하신 내역입니다.</h4>
		</div>
	</center>

	<div  align="right">
		<p> <input type="date">~<input type="date" value="2017-03-27">
			<a href="#" class="btn btn-primary" role="button">1주</a> 
			<a href="#"class="btn btn-primary" role="button">1개월</a> 
			<a href="#"class="btn btn-primary" role="button">3개월</a> 
		</p>
	</div>



	<div>



		<div id="total" style="margin-top: 100px">
			<div id="table" style="width: 90%">
				<form name="f1">
					<table class="table">
						<col width="5%">
						<col width="9%">
						<col width="50%">
						<col width="10%">
						<tr>

							<th>번호</th>
							<th>이미지</th>
							<th>상품정보</th>
							<th>가격</th>
						</tr>

						<tr>

							<td rowspan="2">1번</td>
							<td rowspan="2"><img alt="not found"
								src="../images/LOVE.jpg" style="width: 100px; height: 100px"></td>
							<td>창거니가 어제 입던 소매티</td>
							<td rowspan="2">10000 Won</td>
						</tr>
						<tr>
							<td>SIZE:L, COLOR: green</td>
						</tr>
						<tr>

							<td rowspan="2">2번</td>
							<td rowspan="2"><img alt="not found"
								src="../images/LOVE.jpg" style="width: 100px; height: 100px"></td>
							<td>창거니가 어제 입던 소매티</td>
							<td rowspan="2">20000 Won</td>
						</tr>
						<tr>
							<td>SIZE:L, COLOR: green</td>
						</tr>
						<tr>

							<td rowspan="2">2번</td>
							<td rowspan="2"><img alt="not found"
								src="../images/LOVE.jpg" style="width: 100px; height: 100px"></td>
							<td>창거니가 어제 입던 소매티</td>
							<td rowspan="2">30000 Won</td>
						</tr>
						<tr>
							<td>SIZE:L, COLOR: green</td>
						</tr>

					</table>

				</form>

			</div>

		</div>
	</div>
</body>
</html>