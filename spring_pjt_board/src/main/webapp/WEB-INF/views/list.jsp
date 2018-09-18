<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<style>
table{
	width: 60%;
	heigh: 100px;
	margin: auto;
	text-align: center;
}
image{
	width: 50%;
	height: 30px;
}
b1{
	font-size: 10px;
	color: gray;
}
</style>
</head>
<body>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<td colspan="6">
		<img src="https://t1.daumcdn.net/thumb/R1280x0/?fname=http://t1.daumcdn.net/brunch/service/user/3yw4/image/QWC3w826fOKEYPHpuzLWFXDyjug"/>
		</td>
		<tr>
			<td colspan="5"><a href="write_view">글작성</a> | <a href="main">메인</a></td>
		</tr>
		<tr>
			<td>NO</td>
			<td>이름</td>
			<td>제목</td>
			<td>날짜</td>
			<td>조회수</td>
		</tr>
		<c:forEach items="${list}" var="dto">
		<tr>
			<td>${dto.bId}</td>
			<td>${dto.bName}</td>
			<td>
				<c:forEach begin="1" end="${dto.bIndent}">-</c:forEach>
				<a href="content_view?bId=${dto.bId}">${dto.bTitle}</a></td>
			<td>${dto.bDate}</td>
			<td>${dto.bHit}</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="5"><b1>회사소개 | 인재채용 | 제휴제안 | 이용약관 | 개인정보처리방침 | 청소년보호정책 | 네이버 정책 | 고객센터</a><br>
			ⓒNAVER corp.</b1></td>
		</tr>
	</table>
	
</body>
</html>