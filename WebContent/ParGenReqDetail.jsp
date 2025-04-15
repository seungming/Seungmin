<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath(); //내부적으로 콘텍스트를 지정할 수 있는 경로
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부모 일반 돌봄 신청 내역 상세</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/ILookCSS.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style type="text/css">
	
	main
	{
		font-family: 'NoonnuBasicGothicRegular';
		font-size: 20pt;
		display: block;
	}
	
	.main .container
	{
		
	}
	
	.parent.info
	{
		margin: 0 auto;
	}
	
	.key
	{
		background-color: #f4cccc;
		border-right: 2px solid #ea9999;
	}
	
	tr
	{
		border: 2px solid #ea9999;
	}
	
	td
	{
		padding: 10px 10px 10px 10px;
	}

</style>
</head>
<body style="max-width: 500px; max-height: 950px;">
<main>

<div class="main container" style="margin-top: 10%;
		margin-bottom: 20%;">
	<table class="parent info">
		<tbody class="info tbody">
			<tr>
				<td class="key">예약 신청 날짜</td>
				<td>2025.03.30</td>
			</tr>
			<tr>
				<td class="key">돌봄 기간</td>
				<td>04.06 ~ 04.07</td>
			</tr>
			<tr>
				<td class="key">돌봄 시간</td>
				<td>13:00 ~ 15:00</td>
			</tr>
			<tr>
				<td class="key">도로명 주소</td>
				<td>서울특별시 강남구 강남대로100길 13-5 (역삼동)</td>
			</tr>
			<tr>
				<td class="key">상세 주소</td>
				<td>303호</td>
			</tr>
			<tr>
				<td class="key">아이 이름</td>
				<td>박찬희</td>
			</tr>
			<tr>
				<td class="key">아이 성별</td>
				<td>남아</td>
			</tr>
			<tr>
				<td class="key">아이 연령</td>
				<td>3세</td>
			</tr>
			<tr>
				<td class="key">아이 키</td>
				<td>80cm</td>
			</tr>
			<tr>
				<td class="key">아이 몸무게</td>
				<td>30kg</td>
			</tr>
			<tr>
				<td class="key">아이 장애</td>
				<td>무</td>
			</tr>
			<tr>
				<td class="key">아이 알레르기</td>
				<td>무</td>
			</tr>
			<tr>
				<td class="key">아이 지병</td>
				<td>무</td>
			</tr>
			<tr>
				<td class="key">아이 혈액형</td>
				<td>A</td>
			</tr>
			<tr>
				<td class="key">특이사항</td>
				<td>wwwwwwww</td>
			</tr>
			<tr>
				<td class="key">전달 메시지</td>
				<td>칭얼거림이 잦아 단호하게 대처해 주시면 좋겠어요.</td>
			</tr>
		</tbody>
	</table>
</div>

</main>
</body>
</html>