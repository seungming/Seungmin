<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminSitRegDetail.jsp</title>
<link rel="stylesheet" type="text/css" href="css/adminSitRegDetail.css">
<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function()
{
	
	$("#doc1").click(function()
	{
	    var imagePath = "<%=cp%>/upload/${adminInfo.profile_img}";  // 저장된 파일 경로
	    var imageWindow = window.open(imagePath, "_blank");
		
	});
	
	var ssnFirst = "${sitDto.ssn_first}";
    var ssnSecond = "${sitDto.ssn_second}";
   	
    // 뒷자리 1자리만 보여주고 나머지 마스킹
    var maskedSecond = ssnSecond.substring(0, 1) + "*".repeat(ssnSecond.length - 1);

    document.getElementById("ssn").value = ssnFirst + "-" + maskedSecond;
	
	
});

</script>
</head>
<body>
	<div class="wrap">
		<header>
			<c:import url="adminHeader.jsp"></c:import>
		</header>

		<div class="container">
			<!-- 사이드바 영역 -->
			<c:import url="memberSidebar.jsp"></c:import>

			<main class="main-content">
				<div class="content-header">
					<div class="content-title">시터 등록 요청 상세정보</div>
				</div>

				<div class="content-body">
					<div class="left-section">
						<div class="profile">
							<span class="profile-text">시터 사진</span>
						</div>
						<!-- 자격증 정보를 프로필 아래에 배치 -->
						<div class="category-row">
						    <div class="category-title">보유 자격증</div>
						    <div class="category-options">
						        <button class="category-button">보육교사 1급</button>
						        <button class="category-button">유아지도사 1급</button>
						        <button class="category-button">웃음지도사 1급</button>
						    </div>
						</div>
					</div>

					<div class="info-section">
						<div class="info-row">
							<div class="info-header">시터 코드</div>
							<div class="info-cell">
								<input type="text" class="info-input" value="${sitDto.sit_backup_id }" readonly>
							</div>
						</div>

						<div class="info-row">
							<div class="info-header">이름</div>
							<div class="info-cell">
								<input type="text" class="info-input" value="${sitDto.name }" value="이도치" readonly>
							</div>
						</div>
						
						<div class="info-row">
							<div class="info-header">주민등록번호</div>
							<div class="info-cell">
								<input type="text" class="info-input" id="ssn" value="" readonly>
							</div>
						</div>
						
						<div class="info-row">
							<div class="info-header">연락처</div>
							<div class="info-cell">
								<input type="text" class="info-input" value="${sitDto.tel }" readonly>
							</div>
						</div>

						<div class="info-row">
							<div class="info-header">우편번호</div>
							<div class="info-cell" style="display: flex;">
								<input type="text" class="address-input" ${sitDto.zip_code } readonly>
							</div>
						</div>

						<div class="info-row">
							<div class="info-header">주소</div>
							<div class="info-cell">
								<input type="text" class="info-input" ${sitDto.road_addr } readonly>
							</div>
						</div>

						<div class="info-row">
							<div class="info-header">상세주소</div>
							<div class="info-cell">
								<input type="text" class="info-input" ${sitDto.detailed_addr } readonly>
							</div>
						</div>
						<div class="info-row">
							<div class="info-header">필수 서류</div>
							<div class="info-cell">
								<button class="category-button" id="doc1" name="doc1">보건증</button>
								<button class="category-button" id="doc2" name="doc2">성범죄 이력 조회서</button>
							</div>
						</div>
					</div>
				</div>
				
				<c:set var="source" value="${param.source}" />
				
				<!-- 하단 버튼 영역 -->
				<c:if test="${param.source eq 'req' }">
					<div class="bottom-btn">
						<button type="button" class="btn approve-btn">승인</button>
						<button type="button" class="btn reject-btn">거절</button>
						<button class="btn back-btn">뒤로가기</button>
					</div>
				</c:if>
				
				<c:if test="${param.source eq 'reject' }">
				   <button class="btn back-btn" style="margin-left: 350px; margin-top: 30px;">뒤로가기</button>
				</c:if>
			</main>
		</div>
	</div>
</body>
</html>