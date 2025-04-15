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
<title>adminInfo.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/adminInfo.css">
<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
</head>
<body>

<div class="wrap">
	<header>
		<c:import url="adminHeader.jsp"></c:import>
	</header>

	<div class="container">
		<!--사이드바 영역 -->
		<c:import url="myPageSidebar.jsp"></c:import>

		<!-- 메인 콘텐츠 영역 -->
		<main class="main-content">
			<div class="content-header">
				<h1 class="content-title">관리자 정보</h1>
			</div>

			<div class="content-body">
				<div class="info-section">
					<div class="info-row">
						<div class="info-header">아이디</div>
						<div class="info-cell">
							<input type="text" class="info-input" value="admin" readonly>
						</div>
					</div>

					<div class="info-row">
						<div class="info-header">비밀번호</div>
						<div class="info-cell">
							<input type="text" class="info-input" value="1234567" readonly>
						</div>
					</div>
					
					<div class="info-row">
						<div class="info-header">은행명</div>
						<div class="info-cell">
							<input type="text" class="info-input" value="국민은행" readonly>
						</div>
					</div>
					<div class="info-row">
						<div class="info-header">계좌번호</div>
						<div class="info-cell">
							<input type="text" class="info-input" value="312-1114-4444-41" readonly>
					</div>
					</div>

					
				</div>
			</div>
		</main>
	</div>
</div>

</body>
</html>