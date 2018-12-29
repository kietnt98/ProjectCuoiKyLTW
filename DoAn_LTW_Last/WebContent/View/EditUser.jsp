<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="home" value="/" scope="request"/>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Admin-Home</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="${home}View/Assets/css/StyleHomeAdmin.css">
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
		<div class="content">
			<div id="menu">
 				<ul class="nav nav-tabs" id="navmenu">
 					<li><a href="#">Tài Khoản Quản Trị</a></li>
 					<li><a href="#">Quản lí kì thi</a>
 						<ul>
        					 <li><a class="active" data-toggle="tab" href="#DSManageExam">Danh Sách Tài Khoản</a></li>
       						 <li><a data-toggle="tab" href="#AddManageExam">Thêm Tài Khoản</a></li>
       						 <li><a data-toggle="tab" href="#EditManageExam">Sửa Tài Khoản</a></li>
       						 <li><a data-toggle="tab" href="#DeleteManageExam">Xoá Tài Khoản</a></li>
     					 </ul>
 					</li>
 					<li><a href="#"> Quản lí câu hỏi</a>
 						<ul>
        					  <li><a data-toggle="tab" href="#DSManageQuestion">Danh Sách Tài Khoản</a></li>
       						 <li><a data-toggle="tab" href="#AddManageQuestion">Thêm Tài Khoản</a></li>
       						 <li><a data-toggle="tab" href="#EditManageQuestion">Sửa Tài Khoản</a></li>
       						 <li><a data-toggle="tab" href="#DeleteManageQuestion">Xoá Tài Khoản</a></li>
     					 </ul>
 					</li>
 					<li><a href="#">Sinh Viên</a>
 						<ul>
        					 <li><a data-toggle="tab" href="#DSSV">Danh Sách Sinh Viên</a></li>
       						 <li><a data-toggle="tab" href="#AddSV">Thêm Sinh Viên</a></li>
       						 <li><a data-toggle="tab" href="#EditSV">Sửa Sinh Viên</a></li>
       						 <li><a data-toggle="tab" href="#DeleteSV">Xoá Sinh Viên</a></li>
     					 </ul>
 					</li>
 					<li><a data-toggle="modal" href="#Dangnhap">Đăng xuất</a></li>
 				</ul>
 				
 				<br/>
			</div>
			<div id="Dangnhap" class="modal fade" tabIndex="-1" role="dialog" aria-hidden="true ">
	<div class="modal-dialog">	
		<div class="modal-content">
			<div class="modal-body">
					 <p style="font-size: 30px">Bạn có muốn đăng xuất không?</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" onClick="VeTrangChu()">Có</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">Không</button>
			</div>
		</div>
		
	</div>
	<script>
		function VeTrangChu()
		{
			
		    window.location.href="index.jsp"
			}
				</script>
</div>
</div>
					<h3>NHẬP THÔNG TIN CẦN CHỈNH SỬA</h3>
					<hr>
					<form action="EditUserController" method="post">
					 <c:if test="${user != null}">
                    <input type="hidden" name="userid" value="<c:out value='${user.userid}' />" />
               		 </c:if>   
						<div class="finput">
							<div class="l_input">
								<label>Username:</label>
							</div>
							<div class="f_input">
								<input type="text" id="email" name="username" height="20px;"   value="<c:out value='${user.username}'/>" />
							</div>
						</div> 
						<div class="finput">
							<div class="l_input">
								<label>Họ và tên:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="hoten"  name="fullname"  value="<c:out value='${user.fullname}'/>">
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Ngày sinh:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="ngaysinh" name="birthday" value="<c:out value='${user.birthday}'/>" >
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Quê quán:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="quequan" name="country" value="<c:out value='${user.country}'/>" >
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Số điện thoại:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="pwd" name="phone" value="<c:out value='${user.phone}'/>">
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Hình ảnh:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="pwd" name="img" value="<c:out value='${user.image}'/>">
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Lớp:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="pwd" name="classid" value="<c:out value='${user.classid}'/>">
							</div>
						</div>
						<br/>
						<button type="submit" class="btn btn-default" style="margin-left: 600px; color: blue; width: 88px  ">Lưu</button>
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