<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="home" value="/" scope="request"/>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Thi</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="${home}View/Assets/css/StyleHomeManageExam.css">
</head>

<body>
<div class="container" style="background: #19E10A">
		<div style="float: left">
		<a href="index.jsp"><img src="${home}View/Assets/img/logo/logo.png" width="200px" height="100px"></a>
		</div>
		<div style="float: left; margin-left: 100px; margin-top: 30px; font-size: 27px">
			<span style="color: #E10A0A">PHẦN MỀM THI TRẮC NGHIỆM UY TÍN HÀNG ĐẦU VIỆT NAM</span>
		</div>
	</div>
	
	<br/>
	<div class="container">
	<form name="cd">
		<span style="font-size: 30px; color:red">Thời gian: </span><input id="txt" type="text" name="disp" style="font-size: 30px; color:red">
	</form>
	<br/>
	<form action="KetQuaController" method="post">
	<input type="hidden" value="${testid }" name="testid">
	 <c:forEach var="listQuestion" items="${listquestion}">
	 	<div style="font-size: 20px">Câu ${listQuestion.number} : ${listQuestion.contentquestion}</div>
	 	
	 	<input type="radio" name="${listQuestion.number }" value="A"> <span style="font-size: 20px">${listQuestion.optionA}</span>
	 	<br/>
	 	<input type="radio" name="${listQuestion.number }" value="B"> <span style="font-size: 20px">${listQuestion.optionB}</span>
	 	<br/>
	 	<input type="radio" name="${listQuestion.number }" value="C">	<span style="font-size: 20px">${listQuestion.optionC}</span>
	 	<br/>
	 	<input type="radio" name="${listQuestion.number }" value="D">	<span style="font-size: 20px">${listQuestion.optionD}</span>
	 	
	 </c:forEach>
	 <br/>
	 <br/>
	 <button type="submit" style="margin-top: 20px; margin-left: 500px; font-size: 20px">Nộp bài và kết thúc</button>
	 </form>
	</div>

</body>

<script  type="text/javascript">
var mins
var secs;

function cd() {
 	mins = 1 * ${time}; // change minutes here
 	//mins=0;
 	secs = 0 + s(":01"); // change seconds here (always add an additional second to your total)
 	redo();
}

function m(obj) {
 	for(var i = 0; i < obj.length; i++) {
  		if(obj.substring(i, i + 1) == ":")
  		break;
 	}
 	return(obj.substring(0, i));
}

function s(obj) {
 	for(var i = 0; i < obj.length; i++) {
  		if(obj.substring(i, i + 1) == ":")
  		break;
 	}
 	return(obj.substring(i + 1, obj.length));
}

function dis(mins,secs) {
 	var disp;
 	if(mins <= 9) {
  		disp = " 0";
 	} else {
  		disp = " ";
 	}
 	disp += mins + ":";
 	if(secs <= 9) {
  		disp += "0" + secs;
 	} else {
  		disp += secs;
 	}
 	return(disp);
}

function redo() {
 	secs--;
 	if(secs == -1) {
  		secs = 59;
  		mins--;
 	}
 	document.cd.disp.value = dis(mins,secs); // setup additional displays here.
	  if ((mins == 0) && (secs == 0)) {
		  //window.location.href= "View/NopBai.jsp"
		  window.location.href= "KetQuaController?testid=${testid}"
  		//window.location = "yourpage.htm" // redirects to specified page once timer ends and ok button is pressed
 	} else {
 		cd = setTimeout("redo()",1000);
 	}
}

function init() {
  cd();
}
window.onload = init;
</script>
</html>