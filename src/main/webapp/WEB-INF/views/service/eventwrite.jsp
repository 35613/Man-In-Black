<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>:::EVENT REGISTER:::</title>
<style type="text/css">
section {
	width: 95%;
	max-width: 750px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	text-align: center;
	padding: 3.5em .75em;
	border: 1px solid #e8e8e8;
	border-radius: 6px;
	background: #fff;
}

.btn {
	text-align: center;
	padding: .5em .75em;
	background: #3FBF7F;
	background: linear-gradient(to right, #1CCEB0, #3FBF7F);
	border: none;
	font-weight: 300;
	font-size: 1.25EM;
	color: #fff;
	border-radius: 4px;
	transition: all 500ms;
}

.btn:hover {
	border-radius: 12px;
}

input[type=file] {
	width: 0;
	height: 0;
	overflow: hidden;
	visibility: hidden;
}

.fileName {
	padding-top: 10px;
	font-weight: 300;
}

.preview {
	position: relative;
	width: 250px;
	height: 250px;
	background: #f2f2f2;
	border-radius: 100%;
	margin: 0 auto 25px auto;
	overflow: hidden;
	border: 8px solid #E0E0E0;
}

.preview img {
	width: 250px;
	height: 250px;
	object-fit: contain;
}

.preview .loadingLogo {
	position: absolute;
	top: 50%;
	left: 50%;
	margin-left: -35px;
	margin-top: -35px;
	width: 70px;
	height: 70px;
	border: 5px solid #69CD9B;
	border-top: 5px solid #2FDEC1;
	border-radius: 100%;
	animation: spin 500ms linear infinite;
}

@
keyframes spin {from { transform:rotate(0deg);
	
}

to {
	transform: rotate(360deg);
}

}
body {
	background: #f6f6f6;
}

.wrap {
	width: 100%;
}

.mat-label {
	display: block;
	font-size: 16px;
	transform: translateY(25px);
	color: #e2e2e2;
	transition: all 0.5s;
}

.mat-input {
	position: relative;
	background: transparent;
	width: 100%;
	border: none;
	outline: none;
	padding: 8px 0;
	font-size: 16px;
}

.mat-div {
	padding: 30px 0 0 0;
	position: relative;
}

.mat-div:after, .mat-div:before {
	content: "";
	position: absolute;
	display: block;
	width: 100%;
	height: 2px;
	background-color: #e2e2e2;
	bottom: 0;
	left: 0;
	transition: all 0.5s;
}

.mat-div::after {
	background-color: #8E8DBE;
	transform: scaleX(0);
}

.is-active::after {
	transform: scaleX(1);
}

.is-active .mat-label {
	color: #8E8DBE;
}

.is-completed .mat-label {
	font-size: 12px;
	transform: translateY(0);
}
</style>
<script src="../js/ckeditor/ckeditor.js"></script>
</head>
<body>

	<center>
		<div id="eventhead">
			<h4 align="right" style="margin-right: 100px">
				<a href="meninblack.mib">홈</a> > <a href="event.mib">이벤트</a>
			</h4>
		</div>
	</center>
	<h3>이벤트를 등록해주세요</h3>
	<br>
	<br>
	<br>






	<!--메인 이미지등록  -->
	<div class="preview"></div>
	<div align="center">
		<button id="triggerUpload" class="btn">메인이미지등록</button>
		<input type="file" id="filePicker" value="fdsjkf"/>
	</div>
	<div class="fileName"></div>


	<!-- 제목 -->
	<div class="wrap">

		<div class="mat-div">
			<label for="first-name" class="mat-label">제목</label> <input
				type="text" class="mat-input" name="noticetitle" id="제목">
		</div>
	</div>


	<!-- Editor -->
	<textarea rows="10" cols="80" name="editor" id="editor1">
         
   </textarea>

	<script>
      CKEDITOR.replace("editor", {

         /* 이미파일 저장할 경로 */
         filebrowserImageUploadUrl : 'CkeditorImgUpload.mib',

         filebrowserWindowWidth : '500',

         filebrowserWindowHeight : '380',

         height : '600px'

      });
</script>

	<form name="myform" action="event.mib" method="post"
		enctype="multipart/form-data">
		<p align="right">
			<input type="hidden" id="filePickertmp" name="filePickertmp" value=""> <input
				type="button" class="btn btn-primary" id="regbtn"
				value="등록"> <a class="btn btn-primary" href="event.mib"
				role="button">취소</a>
		</p>
	</form>



	<script type="text/javascript">
$(function(){
	$("#regbtn").click(function(){
		var frm = document.myform;
		
		frm.filePickertmp.value = $('#filePicker').val();
		
		//alert("나와랏!!!" +$('#filePickertmp').val());
		 //frm.action = "/post/main.hi"; 액션 위치 바꿀때 쓰는 코드
		 frm.submit();
		 
		 
		/* var formData = new FormData();
		formData.append("filePicker", $("input[name=filePicker]")[0].files[0]);
		
		$.ajax({ 
			
			type: 'POST',		
			url: "event.mib",
			async : true,
 			dataType : "html",
			data: formData,
			processData: false, 
			contentType: false, 
			success: function(data){
				alert("success " + data); 
				}
			}); 
		});  */
	});


	
});

      var triggerUpload = document.getElementById('triggerUpload'), upInput = document
            .getElementById('filePicker'), preview = document
            .querySelector('.preview');

      //여기에 업로드실행
      triggerUpload.onclick = function() {
         upInput.click();
      };

      upInput.onchange = function(e) {

         var uploaded = this.value, ext = uploaded.substring(uploaded
               .lastIndexOf('.') + 1), ext = ext.toLowerCase(), fileName = uploaded
               .substring(uploaded.lastIndexOf("\\") + 1), accepted = [
               "jpg", "png", "gif", "jpeg" ];

         /*
           ::img태그 추가
           ::FileReader를 사용하여 img데이터 읽기
           ::이미지 원본을 FileReader데이터로 설정
          */
         function showPreview() {
            preview.innerHTML = "<div class='loadingLogo'></div>";
            preview.innerHTML += '<img id="img-preview" />';
            var reader = new FileReader();
            reader.onload = function() {
               var img = document.getElementById('img-preview');
               img.src = reader.result;
            };
            reader.readAsDataURL(e.target.files[0]);
            preview.removeChild(document.querySelector('.loadingLogo'));
            document.querySelector('.fileName').innerHTML = fileName
                  + "<b> Uploaded!</b>";
         }
         ;

         //지원이되는 이미지파일인 경우에만 수행
         if (new RegExp(accepted.join("|")).test(ext)) {
            showPreview();
         } else {
            preview.innerHTML = "";
            document.querySelector('.fileName').innerHTML = "Hey! Upload an image file, not a <b>."
                  + ext + "</b> file!";
         }

      }
      //공지사항제목 스크립트 
      $(".mat-input").focus(function() {
         $(this).parent().addClass("is-active is-completed");
      });

      $(".mat-input").focusout(function() {
         if ($(this).val() === "")
            $(this).parent().removeClass("is-completed");
         $(this).parent().removeClass("is-active");
      });
   </script>

</body>
</html>