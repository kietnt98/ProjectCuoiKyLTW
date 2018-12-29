<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="home" value="/" scope="request"/>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Edit Test</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="${home}View/Assets/css/StyleHomeAdmin.css">
  <style type="text/css">
  	.f_input{
  	margin-left: 246px;
  	}
  </style>
</head>

<body>
	<div class="container">
	<div class="container" style="background: #19E10A">
		<div style="float: left">
		<a href="index.jsp"><img src="${home}View/Assets/img/logo/logo.png" width="200px" height="100px"></a>
		</div>
		<div style="float: left; margin-left: 100px; margin-top: 30px; font-size: 27px">
			<span style="color: #E10A0A">PHẦN MỀM THI TRẮC NGHIỆM UY TÍN HÀNG ĐẦU VIỆT NAM</span>
		</div>
	</div>
	
	
	<br/>
					<form action="InsertQuestionController" method="post">
					 
                    <input type="hidden" name="test_id" value="${test_id }" /> 
						<div class="finput">
							<div class="l_input">
								<label>Câu:</label>
							</div>
							<div class="f_input">
								<input type="text" id="text" name="number" height="20px;"/>
							</div>
						</div> 
						<div class="finput">
							<div class="l_input">
								<label>Nội dung:</label>
							</div>
							<div class="f_input">
								<input type="text"  id=""  name="contentquestion">
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Đáp án A:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="time" name="optionA" >
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Đáp án B:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="" name="optionB" >
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Đáp án C:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="" name="optionC" >
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Đáp án D:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="" name="optionD" >
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Đáp án đúng:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="" name="correctoption" >
							</div>
						</div>
						<br/>
						<button type="submit" class="btn btn-default" style="margin-left: 600px; color: blue; width: 88px  ">Thêm</button>
					</form>
<footer>
	<div class="container" style="margin-top: 300px; margin-bottom: 10px;">
	<p style="color: black; font-size: 18px">
		CƠ QUAN CHỦ QUẢN: CÔNG TY CỔ PHẦN ĐẦU TƯ PHÁT TRIỂN CÔNG NGHỆ VÀ TRUYỀN THÔNG <br/>
MST: 0101430922<br/>
ĐỊA CHỈ: TẦNG 2, TÒA CT2 TRÀNG AN COMPLEX, SỐ 1 PHÙNG CHÍ KIÊN, NGHĨA ĐÔ, CẦU GIẤY, HÀ NỘI.<br/>
TEL: 1900561548 <br/>  EMAIL: SUPPORT@TEST365.VN
	</p>
</div>    
	</footer>
</div>
</body>
</html>