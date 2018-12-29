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
			<div id="Dangnhap" class="modal fade" tabIndex="-1" role="dialog"  aria-hidden="true ">
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
			<div id="thongtin" class="tab-content" >
				<div id="DSManageExam" class="tab-pane fade in active">
				<h3>DANH SÁCH TÀI KHOẢN QUẢN LÍ KÌ THI</h3>
				<table >
						<tr>
							<th>UsernameID</th>
							<th>Username</th>
							<th>Password</th>
							<th>Họ và tên</th>
							<th>Ngày Sinh</th>
							<th>Quê Quán</th>
							<th>SDT</th>
							<th>Hình</th>
						</tr>
						 <c:forEach var="listEx" items="${listmanageexam}">
               				 <tr>
                   				 <td><c:out value="${listEx.userid}" /></td>
                   				 <td><c:out value="${listEx.username}" /></td>
                    			 <td><c:out value="${listEx.pass}" /></td>
                   				 <td><c:out value="${listEx.fullname}" /></td>
                   				 <td><c:out value="${listEx.birthday}" /></td>
                   				 <td><c:out value="${listEx.country}" /></td>
                   				 <td><c:out value="${listEx.phone}" /></td>
                   				 <td><c:out value="${listEx.image}" /></td>
                			</tr>
           				 </c:forEach>
						
					</table>
				</div>
				
				<div id="AddManageExam" class="tab-pane fade">
					<h3>THÊM TÀI KHOẢN MỚI</h3>
					<hr>
					<form action="AddUserController" method="post">
						<div class="finput">
							<div class="l_input">
								<label>Username:</label>
							</div>
							<div class="f_input">
								<input type="text" id="text" placeholder="Enter username" name="username" height="20px;" required>
							</div>
						</div> 
						<div class="finput">
							<div class="l_input">
								<label>Password:</label>
							</div>
							<div class="f_input">
								<input type="text" id="password" placeholder="Enter password" name="password" height="20px;" required>
							</div>
						</div> 
						<div class="finput">
							<div class="l_input">
								<label>Họ và tên:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="hoten" placeholder="Enter họ và tên" name="fullname" required>
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Ngày sinh:</label>
							</div>
							<div class="f_input">
								<input type="datetime"  id="ngaysinh" placeholder="Enter ngày sinh" name="birthday" required>
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Quê quán:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="quequan" placeholder="Enter quê quán" name="country" required>
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Số điện thoại:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="sdt" placeholder="Enter số điện thoại " name="phone" required>
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Hình ảnh:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="img" placeholder="Enter hình ảnh" name="img" required>
							</div>
						</div>
						<div class="finput">
							
							<div class="f_input">
								<input type="hidden"  id="roleid" value="3" name="roleid" required>
							</div>
						</div>
						<div class="finput">
	
							<div class="f_input">
								<input type="hidden"  id="classid" value="0" name="classid" required>
							</div>
						</div>
						<br/>
						<button type="submit" class="btn btn-default" style="margin-left: 600px; color: blue; width: 88px  ">Thêm</button>
					</form>
				</div>
				
				<div id="EditManageExam" class="tab-pane fade">
				 	<form class="search" action="/action_page.php">
  						<input type="text" placeholder="Nhập username cần chỉnh sửa" name="search">
  						<button type="submit"><i class="fa fa-search"></i></button>
					</form>
					
					<br/>
					
					<table >
						<tr>
							<th>UsernameID</th>
							<th>Username</th>
							<th>Password</th>
							<th>Họ và tên</th>
							<th>Ngày Sinh</th>
							<th>Quê Quán</th>
							<th>SDT</th>
							<th>Hình</th>
						</tr>
						 <c:forEach var="listEx" items="${listmanageexam}">
               				 <tr>
                   				 <td><c:out value="${listEx.userid}" /></td>
                   				 <td><c:out value="${listEx.username}" /></td>
                    			 <td><c:out value="${listEx.pass}" /></td>
                   				 <td><c:out value="${listEx.fullname}" /></td>
                   				 <td><c:out value="${listEx.birthday}" /></td>
                   				 <td><c:out value="${listEx.country}" /></td>
                   				 <td><c:out value="${listEx.phone}" /></td>
                   				 <td><c:out value="${listEx.image}" /></td>
                   				<td><a href="ShowFormSuaController?maUser=<c:out value='${listEx.userid}' />">Chỉnh sửa</a>
                   				 
                			</tr>
           				 </c:forEach>
						
					</table>
				</div>
				<div id="DeleteManageExam" class="tab-pane fade">
				 		<form class="search" action="/action_page.php">
  						<input type="text" placeholder="Nhập username cần xoá" name="search">
  						<button type="submit"><i class="fa fa-search"></i></button>
					</form>
					
					<br/>
					
					<table >
						<tr>
							<th>UsernameID</th>
							<th>Username</th>
							<th>Password</th>
							<th>Họ và tên</th>
							<th>Ngày Sinh</th>
							<th>Quê Quán</th>
							<th>SDT</th>
							<th>Hình</th>
						</tr>
						 <c:forEach var="listEx" items="${listmanageexam}">
               				 <tr>
                   				 <td><c:out value="${listEx.userid}" /></td>
                   				 <td><c:out value="${listEx.username}" /></td>
                    			 <td><c:out value="${listEx.pass}" /></td>
                   				 <td><c:out value="${listEx.fullname}" /></td>
                   				 <td><c:out value="${listEx.birthday}" /></td>
                   				 <td><c:out value="${listEx.country}" /></td>
                   				 <td><c:out value="${listEx.phone}" /></td>
                   				 <td><c:out value="${listEx.image}" /></td>
                   				 <td><a href="DeleteUserController?userid=<c:out value='${listEx.userid}' />" onclick="return show_comfirm()">Xoá</a>
                			</tr>
           				 </c:forEach>
						
					</table>
				</div>
				<div id="DSManageQuestion" class="tab-pane fade">
				<h3>DANH SÁCH TÀI KHOẢN QUẢN LÍ CÂU HỎI</h3>
					<table >
						<tr>
							<th>UsernameID</th>
							<th>Username</th>
							<th>Password</th>
							<th>Họ và tên</th>
							<th>Ngày Sinh</th>
							<th>Quê Quán</th>
							<th>SDT</th>
							<th>Hình</th>
						</tr>
						 <c:forEach var="listMQ" items="${listmanagequestion}">
               				 <tr>
                   				 <td><c:out value="${listMQ.userid}" /></td>
                   				 <td><c:out value="${listMQ.username}" /></td>
                    			 <td><c:out value="${listMQ.pass}" /></td>
                   				 <td><c:out value="${listMQ.fullname}" /></td>
                   				 <td><c:out value="${listMQ.birthday}" /></td>
                   				 <td><c:out value="${listMQ.country}" /></td>
                   				 <td><c:out value="${listMQ.phone}" /></td>
                   				 <td><c:out value="${listMQ.image}" /></td>
                			</tr>
           				 </c:forEach>
						
					</table>
				</div>
				
				<div id="AddManageQuestion" class="tab-pane fade">
					<h3>THÊM TÀI KHOẢN MỚI</h3>
					<hr>
					<form action="AddManageQuestionController" method="post">
						<div class="finput">
							<div class="l_input">
								<label>Username:</label>
							</div>
							<div class="f_input">
								<input type="text" id="text" placeholder="Enter username" name="username" height="20px;" required>
							</div>
						</div> 
						<div class="finput">
							<div class="l_input">
								<label>Password:</label>
							</div>
							<div class="f_input">
								<input type="text" id="password" placeholder="Enter password" name="password" height="20px;" required>
							</div>
						</div> 
						<div class="finput">
							<div class="l_input">
								<label>Họ và tên:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="hoten" placeholder="Enter họ và tên" name="fullname" required>
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Ngày sinh:</label>
							</div>
							<div class="f_input">
								<input type="datetime"  id="ngaysinh" placeholder="Enter ngày sinh" name="birthday" required>
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Quê quán:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="quequan" placeholder="Enter quê quán" name="country" required>
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Số điện thoại:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="sdt" placeholder="Enter số điện thoại " name="phone" required>
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Hình ảnh:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="img" placeholder="Enter hình ảnh" name="img" required>
							</div>
						</div>
						<div class="finput">
							
							<div class="f_input">
								<input type="hidden"  id="roleid" value="3" name="roleid" required>
							</div>
						</div>
						<div class="finput">
	
							<div class="f_input">
								<input type="hidden"  id="classid" value="0" name="classid" required>
							</div>
						</div>
						<br/>
						<button type="submit" class="btn btn-default" style="margin-left: 600px; color: blue; width: 88px  ">Thêm</button>
					</form>
				</div>
				
				<div id="EditManageQuestion" class="tab-pane fade">
				 	<form class="search" action="/action_page.php">
  						<input type="text" placeholder="Nhập username cần chỉnh sửa" name="search">
  						<button type="submit"><i class="fa fa-search"></i></button>
					</form>
					
					<br/>
					
					<table >
					<tr>
							<th>UsernameID</th>
							<th>Username</th>
							<th>Password</th>
							<th>Họ và tên</th>
							<th>Ngày Sinh</th>
							<th>Quê Quán</th>
							<th>SDT</th>
							<th>Hình</th>
						</tr>
						 <c:forEach var="listMQ" items="${listmanagequestion}">
               				 <tr>
                   				 <td><c:out value="${listMQ.userid}" /></td>
                   				 <td><c:out value="${listMQ.username}" /></td>
                    			 <td><c:out value="${listMQ.pass}" /></td>
                   				 <td><c:out value="${listMQ.fullname}" /></td>
                   				 <td><c:out value="${listMQ.birthday}" /></td>
                   				 <td><c:out value="${listMQ.country}" /></td>
                   				 <td><c:out value="${listMQ.phone}" /></td>
                   				 <td><c:out value="${listMQ.image}" /></td>
                   				 <td><a href="ShowFormSuaController?maUser=<c:out value='${listMQ.userid}' />">Chỉnh sửa</a>
                			</tr>
           				 </c:forEach>
					</table>
				</div>
				<div id="DeleteManageQuestion" class="tab-pane fade">
				 		<form class="search" action="/action_page.php">
  						<input type="text" placeholder="Nhập username cần xoá" name="search">
  						<button type="submit"><i class="fa fa-search"></i></button>
					</form>
					
					<br/>
					
					<table >
						<tr>
							<th>UsernameID</th>
							<th>Username</th>
							<th>Password</th>
							<th>Họ và tên</th>
							<th>Ngày Sinh</th>
							<th>Quê Quán</th>
							<th>SDT</th>
							<th>Hình</th>
						</tr>
						 <c:forEach var="listMQ" items="${listmanagequestion}">
               				 <tr>
                   				 <td><c:out value="${listMQ.userid}" /></td>
                   				 <td><c:out value="${listMQ.username}" /></td>
                    			 <td><c:out value="${listMQ.pass}" /></td>
                   				 <td><c:out value="${listMQ.fullname}" /></td>
                   				 <td><c:out value="${listMQ.birthday}" /></td>
                   				 <td><c:out value="${listMQ.country}" /></td>
                   				 <td><c:out value="${listMQ.phone}" /></td>
                   				 <td><c:out value="${listMQ.image}" /></td>
                   				  <td><a href="DeleteUserController?userid=<c:out value='${listMQ.userid}' />" onclick="return show_comfirm()">Xoá</a>
                			</tr>
           				 </c:forEach>
						
					</table>
				</div>
				<div id="DSSV" class="tab-pane fade">
					<h3>DANH SÁCH SINH VIÊN</h3>
					<hr>
					<table >
						<tr>
							<th>UsernameID</th>
							<th>Username</th>
							<th>Password</th>
							<th>Họ và tên</th>
							<th>Ngày Sinh</th>
							<th>Quê Quán</th>
							<th>SDT</th>
							<th>Hình</th>
							<th>Lớp</th>
						</tr>
						 <c:forEach var="list" items="${liststudent}">
               				 <tr>
                   				 <td><c:out value="${list.userid}" /></td>
                   				 <td><c:out value="${list.username}" /></td>
                    			 <td><c:out value="${list.pass}" /></td>
                   				 <td><c:out value="${list.fullname}" /></td>
                   				 <td><c:out value="${list.birthday}" /></td>
                   				 <td><c:out value="${list.country}" /></td>
                   				 <td><c:out value="${list.phone}" /></td>
                   				 <td><c:out value="${list.image}" /></td>
                   				 <td><c:out value="${list.classid}" /></td>
                </tr>
            </c:forEach>
						
					</table>
				</div>
				<div id="AddSV" class="tab-pane fade">
					<h3>THÊM SINH VIÊN MỚI</h3>
				<hr>
					<form action="AddStudentController" method="post">
						<div class="finput">
							<div class="l_input">
								<label>Username:</label>
							</div>
							<div class="f_input">
								<input type="text" id="text" placeholder="Enter username" name="username" height="20px;" required>
							</div>
						</div> 
						<div class="finput">
							<div class="l_input">
								<label>Password:</label>
							</div>
							<div class="f_input">
								<input type="text" id="password" placeholder="Enter password" name="password" height="20px;" required>
							</div>
						</div> 
						<div class="finput">
							<div class="l_input">
								<label>Họ và tên:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="hoten" placeholder="Enter họ và tên" name="fullname" required>
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Ngày sinh:</label>
							</div>
							<div class="f_input">
								<input type="datetime"  id="ngaysinh" placeholder="Enter ngày sinh" name="birthday" required>
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Quê quán:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="quequan" placeholder="Enter quê quán" name="country" required>
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Số điện thoại:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="sdt" placeholder="Enter số điện thoại " name="phone" required>
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Hình ảnh:</label>
							</div>
							<div class="f_input">
								<input type="text"  id="img" placeholder="Enter hình ảnh" name="img" required>
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Lớp:</label>
							</div>
							<div class="f_input">
								<input type="number"  id="classid" placeholder="Enter lớp" name="classid" required>
							</div>
						</div>
						<br/>
						<button type="submit" class="btn btn-default" style="margin-left: 600px; color: blue; width: 88px  ">Thêm</button>
					</form>
				</div>
				<div id="EditSV" class="tab-pane fade">
				 	<form class="search" action="/action_page.php">
  						<input type="text" placeholder="Nhập username cần chỉnh sửa" name="search">
  						<button type="submit"><i class="fa fa-search"></i></button>
					</form>
					
					<br/>
					
					<table >
						<tr>
							<th>UsernameID</th>
							<th>Username</th>
							<th>Password</th>
							<th>Họ và tên</th>
							<th>Ngày Sinh</th>
							<th>Quê Quán</th>
							<th>SDT</th>
							<th>Hình</th>
							<th>Lớp</th>
						</tr>
						 <c:forEach var="list" items="${liststudent}">
               				 <tr>
                   				 <td><c:out value="${list.userid}" /></td>
                   				 <td><c:out value="${list.username}" /></td>
                    			 <td><c:out value="${list.pass}" /></td>
                   				 <td><c:out value="${list.fullname}" /></td>
                   				 <td><c:out value="${list.birthday}" /></td>
                   				 <td><c:out value="${list.country}" /></td>
                   				 <td><c:out value="${list.phone}" /></td>
                   				 <td><c:out value="${list.image}" /></td>
                   				 <td><c:out value="${list.classid}" /></td>
                   				  <td><a href="ShowFormSuaController?maUser=<c:out value='${list.userid}' />">Chỉnh sửa</a>
                </tr>
            </c:forEach>
						
					</table>
				</div>
				<div id="DeleteSV" class="tab-pane fade">
				 			<form class="search" action="/action_page.php">
  							<input type="text" placeholder="Nhập username cần xoá" name="search">
  							<button type="submit"><i class="fa fa-search"></i></button>
						</form>
					
					<br/>
					
					<table border="1">
						<tr>
							<th>UsernameID</th>
							<th>Username</th>
							<th>Password</th>
							<th>Họ và tên</th>
							<th>Ngày Sinh</th>
							<th>Quê Quán</th>
							<th>SDT</th>
							<th>Hình</th>
							<th>Lớp</th>
						</tr>
						 <c:forEach var="list" items="${liststudent}">
               				 <tr>
                   				 <td><c:out value="${list.userid}" /></td>
                   				 <td><c:out value="${list.username}" /></td>
                    			 <td><c:out value="${list.pass}" /></td>
                   				 <td><c:out value="${list.fullname}" /></td>
                   				 <td><c:out value="${list.birthday}" /></td>
                   				 <td><c:out value="${list.country}" /></td>
                   				 <td><c:out value="${list.phone}" /></td>
                   				 <td><c:out value="${list.image}" /></td>
                   				 <td><c:out value="${list.classid}" /></td>
                   				 <td><a href="DeleteUserController?userid=<c:out value='${listMQ.userid}' />" onclick="return show_comfirm()">Xoá</a>
               				 </tr>
            			</c:forEach>
						  
					</table>
				</div>
				
			
			</div>

		</div>
	</div>
<script>
	function Dangxuat()
	{
		
		}
	</script>
	<!-- Show thông báo ra màn hình -->
<script type="text/javascript">
	function show_comfirm() {
		var comfirmBox;
		comfirmBox = confirm("Bạn có chắc chắn muốn xóa tài khoản?");
		if (comfirmBox == true) {
			return true;
		} else {
			return false;
		}
	}
</script>
	
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

</body>
</html>
