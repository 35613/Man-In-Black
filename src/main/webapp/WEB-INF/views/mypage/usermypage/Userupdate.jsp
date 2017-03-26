<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div style="width: 100%; height: 700px;">
		<center>
			<form style="margin-top: 200px">
				<input type="password" size="30" style="background-color: white;"><br>
				<input type="submit" value="확인">
			</form>
		</center>
	</div>
	<div>
		<article class="container">
		<div class="page-header">
			<h1>
				회원가입 <small>basic form</small>
			</h1>
		</div>
		<div class="col-md-6 col-md-offset-3">
			<form role="form">


				<div class="form-group">
					<label for="InputPassword1">비밀번호</label> <input type="password"
						class="form-control" id="InputPassword1" placeholder="비밀번호">
				</div>


				<div class="form-group">
					<label for="InputPassword2">비밀번호 확인</label> <input type="password"
						class="form-control" id="InputPassword2" placeholder="비밀번호 확인">
					<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
				</div>


				<div class="form-group">
					<label for="InputEmail">이메일 주소</label> <input type="email"
						class="form-control" id="InputEmail" placeholder="이메일 주소">
				</div>


				<div class="input-group">
					<input type="tel" class="form-control" id="username"
						placeholder="- 없이 입력해 주세요"> <span class="input-group-btn">
						<button class="btn btn-success">
							인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i>
						</button>
					</span>
				</div>


				<div class="form-group">
					<label for="phones">전화번호</label> <input type="text"
						class="form-control" id="username" placeholder="이름을 입력해 주세요">
				</div>















				<div class="form-group">
					<label>약관 동의</label>
					<div data-toggle="buttons">
						<label class="btn btn-primary active"> <span
							class="fa fa-check"></span> <input id="agree" type="checkbox"
							autocomplete="off" checked>
						</label> <a href="#">이용약관</a>에 동의합니다.
					</div>
				</div>
				<div class="form-group text-center">
					<button type="submit" class="btn btn-info">
						회원가입<i class="fa fa-check spaceLeft"></i>
					</button>
					<button type="submit" class="btn btn-warning">
						가입취소<i class="fa fa-times spaceLeft"></i>
					</button>
				</div>
			</form>
		</div>

		</article>

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>

	</div>









</body>
</html>