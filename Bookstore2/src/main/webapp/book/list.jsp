<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>도서목록</h3>
		<a href="/Bookstore2">처음으로</a>
		<a href="/Bookstore2/book/register.do">도서등록</a>
		
		<table border="1">
			<tr>
				<th>도서번호</th>
				<th>도서명</th>
				<th>출판사</th>
				<th>가격</th>
				<th>관리</th>
			</tr>
			<tr>
				<td>1</td>
				<td>축구의 역사</td>
				<td>굿스포츠</td>
				<td>7,000</td>
				<td>
					<a href="#">수정</a>
					<a href="#">삭제</a>
				</td>
			</tr>
			<tr>
				<td>2</td>
				<td>축구의이해</td>
				<td>대한미디어</td>
				<td>22,000</td>
				<td>
					<a href="#">수정</a>
					<a href="#">삭제</a>
				</td>
			</tr>
			<tr>
				<td>3</td>
				<td>골프바이블</td>
				<td>대한미디어</td>
				<td>35,000</td>
				<td>
					<a href="#">수정</a>
					<a href="#">삭제</a>
				</td>
			</tr>
		</table>
	</body>
</html>