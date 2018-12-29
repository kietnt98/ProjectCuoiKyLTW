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
	<div>
	<h3>DANH SÁCH CÂU HỎI</h3>
				<table >
						<tr>
							<th>Câu</th>
							<th>Nội dung</th>
							<th>Đáp án A</th>
							<th>Đáp án B</th>
							<th>Đáp án C</th>
							<th>Đáp án D</th>
							<th>Đáp án đúng</th>
						</tr>
						 <c:forEach var="listQuestion" items="${listquestion}">
               				 <tr>
                   				 <td><c:out value="${listQuestion.number}" /></td>
                   				 <td><c:out value="${listQuestion.contentquestion}"/></td>
                    			 <td><c:out value="${listQuestion.optionA}" /></td>
                   				 <td><c:out value="${listQuestion.optionB}" /></td>
                   				 <td><c:out value="${listQuestion.optionC}" /></td>
                   				 <td><c:out value="${listQuestion.optionD}" /></td>
                   				 <td><c:out value="${listQuestion.correctoption}" /></td>
                			</tr>
           				 </c:forEach>
					</table>
					
					<br/>
					<a href="HomeManageExamController" style="font-size: 20px;">Home</a>
	</div>
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