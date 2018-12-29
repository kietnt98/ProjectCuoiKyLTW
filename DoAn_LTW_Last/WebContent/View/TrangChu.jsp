<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="home" value="/" scope="request"/>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Test365.vn | Thi trắc nghiệm trực tuyến</title>
<link rel="stylesheet" href="${home}View/Assets/css/style.css">
</head>

<body>
<div class="container">
	<div id="lienhe">
		<ul>
			<li>
				<span>Hotline:</span>
				<span style="color: red">1900561548</span>
			</li>
			<li>
				<span>Email:</span>
				<span style="color: #0225C9">support@test365.vn</span>
			</li>
		</ul>
	</div>
	<div id="menu">
		<nav class="navbar navbar-default navbar-fixed-top" style="position: absolute; top: 20px; 	background: #19E10A; height: 73px;" >
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">
      	<img src="${home}View/Assets/img/logo/logo.png" height="55px" width="200px" style="margin-top: -9px">
      </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar" style="margin-top: 10px">
      <ul class="nav navbar-nav navbar-right" style="">
        <li><a href="index.jsp" style="color: #000000; font-size:20px ">Trang chủ</a></li>
        <li><a href="LoginController" style="color: #000000; font-size:20px ">Đăng nhập</a></li>
        <li><a href="#" style="color: #000000; font-size:20px ">Điều khoản</a></li>
      </ul>
    </div>
  </div>
</nav>

	</div>
	<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-top: 100px">
    <!-- Indicators -->
    <ol class="carousel-indicators" style="margin-left: 15px">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="${home}View/Assets/img/slider/banner_3.jpg" alt="" style="width:100%; height: 400px;">
      </div>

      <div class="item">
        <img src="${home}View/Assets/img/slider/banner_5.jpg" alt="" style="width:100%; height: 400px;">
      </div>
    
      <div class="item">
        <img src="${home}View/Assets/img/slider/banner_6.jpg" alt="" style="width:100%; height: 400px">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div class="container">
	<div id="thongtin">
		<div class="t_tin">
			<img src="${home}View/Assets/img/icon/img.home1.png">
			<span style="color: #000000; font-size: 17px;">NGÂN HÀNG CÂU HỎI</span>
			<br/>
			<br/>
			<p>Tạo ra các câu hỏi trắc nghiệm bao gồm text và hình ảnh, câu hỏi chọn một hoặc chọn nhiều. Các câu hỏi được nhóm theo chủ đề, độ khó hay các lớp thí sinh. Hỗ trợ nhập từng câu hoặc nhập hàng loạt từ file excel.</p>	
		</div>
		<div class="t_tin">
			<img src="${home}View/Assets/img/icon/img.home2.png">
			<span style="color: #000000; font-size: 17px;">HÌNH THÀNH ĐỢT THI</span>
			<br/>
			<br/>
			<p>Công cụ trộn đề tự động từ ngân hàng câu hỏi với số lượng câu, cơ cấu lĩnh vực, mức độ khó được thiết lập sẵn.Tuỳ chọn cho thí sinh làm chung đề hay đề khác nhau. Đợt thi chỉ ra khoảng thời gian có thể thi, thời gian làm bài, mức độ đạt yêu cầu và gán cho thí sinh.</p>	
		</div>
		<div class="t_tin">
			<img src="${home}View/Assets/img/icon/img.home3.png">
			<span style="color: #000000; font-size: 17px;">THI TRỰC TUYẾN</span>
			<br/>
			<br/>
			<p>Hệ thống gửi email thông báo có đợt thi mới cho thí sinh. Thí sinh chủ động sắp xếp làm bài thi trong khoảng thời gian cho phép. Thí sinh thi trượt có thể thi lại nếu được người quản trị chấp nhận.</p>	
		</div>
		<div class="t_tin">
			<img src="${home}View/Assets/img/icon/img.home4.png">
			<span style="color: #000000; font-size: 15px;">KẾT QUẢ VÀ PHÂN TÍCH</span>
			<br/>
			<br/>
			<p>Hệ thống tự động chấm bài và thông báo kết quả chi tiết cho thí sinh. Những thí sinh đạt yêu cầu sẽ được in chứng chỉ thi đỗ. Đơn vị tổ chức thí có thể xem được báo cáo tổng hợp về đợt thi.</p>	
		</div>
	</div>	
</div>
<div class="container" style="background-color: #D0D0D0; margin-top: 30px;">
	<div id="quangcao">
		<div class="qcao">
			<video src="${home}View/Assets/video/TEST 365.mp4" width="500px" height="400px" controls autoplay style="margin-top: -20px; margin-left: 5px"></video>
		</div>
		<div class="qcao">
			<span style="color: #BC2427; font-size: 25px; margin-left: 90px">CÁC TÍNH NĂNG CỦA TEST365</span>
			<br/>
			<p style="color: #000000; font-size: 18px">Xuất phát từ nhu cầu tuyển dụng, đào tạo nội bộ của các doanh nghiệp chúng tôi đã tạo ra công cụ Test365 trên nền tảng Cloud Computing. Hệ thống thi trắc nghiệm tổng thể cho các doanh nghiệp và trung tâm đào tạo với nhiều tính năng vượt trội:</p>
			<div class="qcaoList">
				<ul>
				<li>Bảo mật dữ liệu</li>
				<li>Dễ dàng tạo ra các đợt thi</li>
				<li>Không cần cài đặt phần mềm</li>
				<li>Tuỳ chỉnh được chứng chỉ thi đỗ theo nhận diện thương hiệu riêng</li>
				<li>Tự động chấm thi và xem kết quả ngay</li>
				<li>Tương thích với nhiều loại thiết bị đầu cuối: máy tính, máy tính bảng, điện thoại</li>
				<li>Hỗ trợ nhiều loại tài khoản quản trị cho doanh nghiệp</li>
			</ul>
			</div>
		
			<p style=" font-size: 18px">Test365 đặc biệt hữu dụng cho doanh nghiệp trong việc tuyển dụng nhân sự, đào tạo nội bộ, đánh giá sát hạch định kỳ</p>
		</div>
	</div>
</div>

<div class="container" style="margin-top: 60px">
	<marquee id="marq" scrollamount="3" direction="left" loop="50" behavior="scroll" scrolldelay="0" onmouseover="this.stop()" onmouseout="this.start()">
<a href="#"><img src="${home}View/Assets/img/donvidonghanh/partners_1.png" title="" style="margin-right: 15px" height="60"/> </a>
<a href="#"><img src="${home}View/Assets/img/donvidonghanh/partners_2.png" title="" style="margin-right: 15px" height="60"/> </a>
<a href="#"><img src="${home}View/Assets/img/donvidonghanh/partners_3.png" title="" style="margin-right: 15px" height="60"/> </a>
<a href="#"><img src="${home}View/Assets/img/donvidonghanh/partners_4.png" title="" style="margin-right: 15px" height="60"/> </a>
<a href="#"><img src="${home}View/Assets/img/donvidonghanh/partners_5.png" title="" style="margin-right: 15px" height="60"/> </a>
<a href="#"><img src="${home}View/Assets/img/donvidonghanh/partners_6.png" title="" style="margin-right: 15px" height="60"/> </a>
<a href="#"><img src="${home}View/Assets/img/donvidonghanh/partners_7.png" title="" style="margin-right: 15px" height="60"/> </a>
<a href="#"><img src="${home}View/Assets/img/donvidonghanh/partners_8.png" title="" style="margin-right: 15px" height="60"/> </a>
<a href="#"><img src="${home}View/Assets/img/donvidonghanh/partners_9.png" title="" style="margin-right: 15px" height="60"/> </a>
<a href="#"><img src="${home}View/Assets/img/donvidonghanh/partners_10.png" title="" style="margin-right: 15px" height="60"/> </a>
<a href="#"><img src="${home}View/Assets/img/donvidonghanh/partners_11.png" title="" style="margin-right: 15px" height="60"/> </a>
</marquee>
</div>

</div>

<script type="text/javascript">
	$().ready(function(){
		$(window).scroll(function(){
			var top=$(this).scrollTop();
			if(top>100){
				$("#top").fadeIn('slow');
			}else{
					$("#top").fadeOut('slow');
				}
		}
						);
		$("#top").click(function(){
			$("#body").animate({scrollTop: 0}, 1000);
		});
	});
	</script>
<a href="#" id="top"><img src="${home}View/Assets/img/icon/images.png" width="30px" height="30px"></a>

<footer>
<div class="container" style="margin-top: 60px; margin-bottom: 10px;">
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
