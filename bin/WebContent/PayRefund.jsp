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
<title>시터 상세내용 페이지</title>
<link rel="stylesheet" href="css/PayRefund.css">
</head>
<body>

<header>
	<div id="logo">
    	<img src="./logo.png" height="120px"></div>
            <nav>
                <button type="button" class="menuBtn presentPage">홈</button>
                <button type="button" class="menuBtn">로그아웃</button>
                <button type="button" class="menuBtn">스케줄러</button>
                <button type="button" class="menuBtn">긴급돌봄서비스</button>
                <button type="button" class="menuBtn">마이페이지</button>
                <button type="button" class="menuBtn">알림함</button>
            </nav>
</header>
        
<div class="sidebar">
	<div class="sidebar-title">마이페이지</div>
	  <div class="menu">
	
	    <!-- 아이 정보 -->
	    <div class="menu-item">
	      <a href="#"><i class="fa-solid fa-child"></i> 아이 정보 관리</a>
	      <div class="submenu">
	        <a href="#">아이 목록 보기</a>
	        <a href="#">신규 아이 등록</a>
	        <a href="#">아이 정보 수정</a>
	      </div>
	    </div>
	
	    <!-- 부모 정보 -->
	    <div class="menu-item">
	      <a href="#"><i class="fa-solid fa-user-group"></i> 부모 정보 관리</a>
	      <div class="submenu">
	        <a href="#">부모 정보 보기</a>
	        <a href="#">부모 정보 수정</a>
	      </div>
	    </div>
	
	    <!-- 돌봄 이용 -->
	    <div class="menu-item">
	      <a href="#"><i class="fa-solid fa-house-chimney-user"></i> 돌봄 이용 현황</a>
	      <div class="submenu">
	        <a href="#">현재 이용 내역</a>
	        <a href="#">이용 완료 내역</a>
	      </div>
	    </div>
	
	  </div>
</div>

 <div class="details-header">
     <h2>시터 상세보기</h2>
 </div>

<!-- 시터 상세보기 모달 -->
<div class="details-modal">
	<!-- 시터 정보 섹션 -->
    <div class="sitter-info">
        <div><h2>시터 정보</h2></div> 
        <div class="info-item">
            <div class="info-label">이름:</div>
            <div class="info-value">김주항</div>
        </div>
        <div class="info-item">
            <div class="info-label">등급:</div>
            <div class="info-value">silver</div>
        </div>
        <div class="info-item">
            <div class="info-label">이용 기간:</div>
            <div class="info-value">2025년 2월 25일 ~ 2025년 3월 03일</div>
        </div>
        <div class="info-item">
            <div class="info-label">이용 시간:</div>
            <div class="info-value">3시간</div>
        </div>
        <div class="info-item">
            <div class="info-label">이용 상태:</div>
            <div class="info-value sitter-status">이용 완료</div> 
        </div>
        <!-- 예약 취소 버튼 (이용 중 상태에서만 활성화) -->
        <div class="cancel-booking">
            <button class="cancel-btn" disabled>예약 취소</button>
        </div>
       </div>

        <!-- 결제/환불 내역 -->
        <div class="payment-details">
            <div><h2>결제 내역</h2></div> 
            <div class="info-item">
                <div class="info-label">결제 금액:</div>
                <div class="info-value" id="paymentAmount">150,000원</div> <!-- 원래 결제 금액 -->
            </div>
            <div class="info-item">
                <div class="info-label">전체 포인트:</div>
                <div class="info-value" id="totalPoints">5000P</div> <!-- 전체 포인트 -->
            </div>
            <div class="info-item">
                <div class="info-label">차감된 포인트:</div>
                <div class="info-value" id="deductedPoints">0P</div> <!-- 차감된 포인트 -->
            </div>
            <div class="info-item">
                <div class="info-label">총 결제 금액:</div>
                <div class="info-value" id="finalAmount">150,000원</div> <!-- 최종 결제 금액 -->
            </div>
            <div class="info-item">
                <div class="info-label">결제 방법:</div>
                <div class="info-value">신용카드</div>
            </div>
        </div>

		<!-- 환불 내역 섹션 -->
		<div class="refund-section">
		    <div class="refund-title-container">
		        <h2 class="refund-title">환불 내역</h2>
		    </div>
		    <div class="refund-content">
		        <div class="info-item">
		            <div class="info-label">환불 금액:</div>
		            <div class="info-value">0원</div>
		        </div>
		    </div>
		</div>
		
		<!-- 리뷰 섹션 -->
		<div class="review-section">
		    <div class="review-title-container">
		        <h2 class="review-title">리뷰</h2>
		    </div>
		    <div class="review-content">
		        <div class="star-rating">
		            <!-- 별점 표시 -->
		            <span class="star">★</span>
		            <span class="star">★</span>
		            <span class="star">★</span>
		            <span class="star">★</span>
		            <span class="star">★</span>
		        </div>
		        <div class="review-item">
		            <div class="review-label">세심함</div>
		            <div class="review-label">따뜻함</div>
		        </div>
		    </div>
		</div>

</div>

</body>
</html>