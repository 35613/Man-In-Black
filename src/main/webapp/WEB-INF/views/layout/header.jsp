<%@page import="com.eagle.men_in_black.model.MainDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
MainDto dto = (MainDto)request.getSession().getAttribute("LoginInfo");

%>
<nav id="hearder_nav" class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->

		<div class="row" style="margin-bottom: -15px;">
			<div
				class="col-md-4 col-md-offset-4 col-sm-2 col-sm-offset-5 top header"
				align="center">
				<a href="meninblack.mib"><img id="logo-main"
					src="../images/LOGO6.png" height="50"></a>

				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>

				</div>
			</div>
			<div class="col-md-4 col-sm-5">
				<div class="nav navbar-nav navbar-right topnav" style="width: 100px">
					<li style="width: 100%"><a href="#about">고객센터</a></li>
				</div>
				<div class="nav navbar-nav  navbar-right topnav"
					style="width: 100px">
				<li style="width: 100%">
					<% 	 
					if(dto!=null){
						if(dto.getUSER_ID().equals("adm")){
					%>
					<a href="ceoMypage_Main.mib">마이페이지</a>
					<%}else{ %>
					<a href="mymain.mib">마이페이지</a>
					<%}
					}else{ %> 
					<a href="signup.mib" data-toggle="modal" data-target="#modal-signup">회원가입</a>
					<% 
					}%>		
				</li>
				
				</div>
				<div class="nav navbar-nav  navbar-right topnav"
					style="width: 100px" id="login">
					<li style="width: 100%">
					<% 	 
					if(dto!=null){
					%>
					<a href="logout.mib">로그아웃</a>
					<%}else{ %> 
					<a href="login.mib" data-toggle="modal" data-target="#modal-login" >로그인</a>
					<% 
					}%>
					</li>
				</div>
			</div>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<br>
		<div class="collapse navbar-collapse "
			id="bs-example-navbar-collapse-1" align="center">
			<div class="nav navbar-nav" align="center" style="width: 60%;">
				<li class="dropdown"><a href="NewCategory.mib"
					class="dropdown-toggle" role="button" aria-expanded="false">NEW
				</a></li>
				<li class="dropdown"><a href="outerCategory.mib"
					class="dropdown-toggle" role="button" aria-expanded="false">OUTER</span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">COAT</a></li>
						<li><a href="#">JACKET</a></li>
						<li><a href="#">JUMPER</a></li>
					</ul></li>
				<li class="dropdown"><a href="topCategory.mib"
					class="dropdown-toggle" role="button" aria-expanded="false">TOP</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">TEE</a></li>
						<li><a href="#">SHIRT</a></li>
						<li><a href="#">KNIT</a></li>
						<li><a href="#">HOOD</a></li>
					</ul></li>
				<li class="dropdown"><a href="pantsCategory.mib"
					class="dropdown-toggle" role="button" aria-expanded="false">PANTS</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">JEANS</a></li>
						<li><a href="#">SLACKS</a></li>
						<li><a href="#">COTTON PANTS</a></li>
					</ul></li>
				<li class="dropdown"><a href="shoesCategory.mib"
					class="dropdown-toggle" role="button" aria-expanded="false">SHOES</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">WALKER</a></li>
						<li><a href="#">RUNNING SHOES</a></li>
					</ul></li>
				<li class="dropdown"><a href="bnaCategory.mib"
					class="dropdown-toggle" role="button" aria-expanded="false">BAG&ACC</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">BAG</a></li>
						<li><a href="#">BELT</a></li>
						<li><a href="#">CAP</a></li>
					</ul></li> <br>

			</div>
			<hr
				style="border: solid black 1px; margin-right: 30px; display: inline-block; width: 65%; margin-top: -0px; margin-bottom: 0px;">
		</div>
		<!-- /.navbar-collapse -->


	</div>
	<!-- /.container-fluid -->
</nav>

<!-- *********************************************************************************** -->

<!-- Modal Login -->
<div class="modal fade bs-example-modal-sm" id="modal-login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- Modal signup -->
<div class="modal fade bs-example-modal-sm" id="modal-signup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->





</body>
</html>
