<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="home" value="/" scope="request"/>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>ManageExam - Home</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="${home}View/Assets/css/StyleHomeManageExam.css">
</head>

<body>
<div class="container">
<%
		// Lấy ra username đăng nhập vào từ session
		String user = (String) session.getAttribute("username");
System.out.println(user);
		%>
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
 					<li><a data-toggle="tab" href="#Detail">Tài khoản sinh viên</a></li>
 					<li><a data-toggle="tab" href="#Add">Danh sách đề thi</a></li>
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
		<table >
						<tr>
							<th>Mã đề</th>
							<th>Thời gian bắt đầu</th>
							<th>Thời gian kết thúc</th>
							<th>Thời gian làm bài</th>
							<th>Loại đề</th>
							<th>Môn</th>
						</tr>
						 <c:forEach var="listTest" items="${listtest}">
               				 <tr>
                   				 <td><c:out value="${listTest.testid}" /></td>
                   				 <td><c:out value="${listTest.timestart}" /></td>
                    			 <td><c:out value="${listTest.timeend}" /></td>
                   				 <td><c:out value="${listTest.time}" /></td>
                   				 <td><c:out value="${listTest.testtypename}" /></td>
                   				 <td><c:out value="${listTest.subjectname}" /></td>
                   				 <td><a href="LoadDeThiController?test_id=<c:out value='${listTest.testid}' />">Vào thi</a></td>
                			</tr>
           				 </c:forEach>
					</table>
</div>
</body>
</html>