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
 					<li><a data-toggle="tab" href="#Detail">Danh sách câu hỏi</a></li>
 					<li><a data-toggle="tab" href="#Add">Thêm câu hỏi</a></li>
 					<li><a data-toggle="tab" href="#Edit"> Sửa câu hỏi</a></li>
 					<li><a data-toggle="tab"href="#Delete">Xoá câu hỏi</a></li>
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

<div id="thongtin" class="tab-content" >
<div id="Detail" class="tab-pane fade in active">
<h3>DANH SÁCH ĐỀ THI</h3>
				<table >
						<tr>
							<th>Mã câu hỏi</th>
							<th>Câu</th>
							<th>Nội dung câu hỏi</th>
							<th>Phương án A</th>
							<th>Phương án B</th>
							<th>Phương án C</th>
							<th>Phương án D</th>
							<th>Phương án đúng</th>
						</tr>
						 <c:forEach var="listQuestion" items="${listquestion}">
               				 <tr>
                   				 <td><c:out value="${listQuestion.questionid}" /></td>
                   				 <td><c:out value="${listQuestion.number}" /></td>
                    			 <td><c:out value="${listQuestion.contentquestion}" /></td>
                   				 <td><c:out value="${listQuestion.optionA}" /></td>
                   				 <td><c:out value="${listQuestion.optionB}" /></td>
                   				 <td><c:out value="${listQuestion.optionC}" /></td>
                   				 <td><c:out value="${listQuestion.optionD}" /></td>
                   				  <td><c:out value="${listQuestion.correctoption}" /></td>
                			</tr>
           				 </c:forEach>
					</table>
</div>
				<div id="Add" class="tab-pane fade">
				<h3>THÊM ĐỀ THI MỚI</h3>
					<hr>
					<form action="AddTestController" method="post">
						<div class="finput">
							<div class="l_input">
								<label>Thời gian bắt đầu:</label>
							</div>
							<div class="f_input" style="margin-left: 270px;">
								<input type="text" id="datetimestart" placeholder="Enter datetimestart" name="datetimestart" height="20px;" required>
							</div>
						</div> 
						<div class="finput">
							<div class="l_input">
								<label>Thời gian kết thúc:</label>
							</div>
							<div class="f_input" style="margin-left: 270px;">
								<input type="text" id="datetimeend" placeholder="Enter datetimeend" name="datetimeend" height="20px;" required>
							</div>
						</div> 
						<div class="finput">
							<div class="l_input">
								<label>Thời gian:</label>
							</div>
							<div class="f_input" style="margin-left: 270px;">
								<input type="text"  id="time" placeholder="Enter time" name="time" required>
							</div>
						</div>
						<div class="finput" >
							<div class="l_input">
								<label>Số lượng câu hỏi:</label>
							</div>
							<div class="f_input" style="margin-left: 270px;">
								<input type="number"  id="number_question" placeholder="Enter number question" name="number_question" required>
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Loại đề thi:</label>
							</div>
							<div class="f_input" style="margin-left: 270px;">
								<input type="number"  id="testtypeid" placeholder="Enter testtypeid " name="testtypeid" required>
							</div>
						</div>
						<div class="finput">
							<div class="l_input">
								<label>Môn:</label>
							</div>
							<div class="f_input" style="margin-left: 270px;">
								<input type="text"  id="subjectid" placeholder="Enter subjectid" name="subjectid" required>
							</div>
						</div>
						<br/>
						<button type="submit" class="btn btn-default" style="margin-left: 681px; color: blue; width: 88px  ">Thêm</button>
					</form>
					
					<br/>
					<a href="HomeManageExamController" style="font-size: 20px;">Home</a>
					</div>
					<div id="Edit" class="tab-pane fade">
				<h3>SỬA ĐỀ THI</h3>
				<table >
						<tr>
							<th>Mã đề</th>
							<th>Thời gian bắt đầu</th>
							<th>Thời gian kết thúc</th>
							<th>Thời gian làm bài</th>
							<th>Số lượng</th>
							<th>Loại đề</th>
							<th>Môn</th>
						</tr>
						 <c:forEach var="listTest" items="${listtest}">
               				 <tr>
                   				 <td><c:out value="${listTest.testid}" /></td>
                   				 <td><c:out value="${listTest.timestart}" /></td>
                    			 <td><c:out value="${listTest.timeend}" /></td>
                   				 <td><c:out value="${listTest.time}" /></td>
                   				 <td><c:out value="${listTest.number_question}" /></td>
                   				 <td><c:out value="${listTest.testtypename}" /></td>
                   				 <td><c:out value="${listTest.subjectname}" /></td>
                   				 <td><a href="ShowFormEditTestController?testid=<c:out value='${listTest.testid}' />">Chỉnh sửa</a></td>
                			</tr>
           				 </c:forEach>
					</table>
					<br/>
					<a href="HomeManageExamController" style="font-size: 20px;">Home</a>
				</div>
				<div id="Delete" class="tab-pane fade">
				<h3>XOÁ ĐỀ THI</h3>
				<table >
						<tr>
							<th>Mã đề</th>
							<th>Thời gian bắt đầu</th>
							<th>Thời gian kết thúc</th>
							<th>Thời gian làm bài</th>
							<th>Số lượng</th>
							<th>Loại đề</th>
							<th>Môn</th>
						</tr>
						 <c:forEach var="listTest" items="${listtest}">
               				 <tr>
                   				 <td><c:out value="${listTest.testid}" /></td>
                   				 <td><c:out value="${listTest.timestart}" /></td>
                    			 <td><c:out value="${listTest.timeend}" /></td>
                   				 <td><c:out value="${listTest.time}" /></td>
                   				 <td><c:out value="${listTest.number_question}" /></td>
                   				 <td><c:out value="${listTest.testtypename}" /></td>
                   				 <td><c:out value="${listTest.subjectname}" /></td>
                   				 <td><a href="DeleteTestController?testid=<c:out value='${listTest.testid}' />" onclick="return show_comfirm()">Xoá</a></td>
                			</tr>
           				 </c:forEach>
					</table>
					<br/>
					<a href="HomeManageExamController" style="font-size: 20px;">Home</a>
				</div>
				</div>
				</div>
</body>
<script type="text/javascript">
	function show_comfirm() {
		var comfirmBox;
		comfirmBox = confirm("Bạn có chắc chắn muốn xóa đề thi này không ?");
		if (comfirmBox == true) {
			return true;
		} else {
			return false;
		}
	}
</script>
</html>