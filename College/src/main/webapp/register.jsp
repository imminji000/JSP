<%@page import="bean.RegisterBean"%>
<%@page import="db.DBCP"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<RegisterBean> registers = new ArrayList<>(); 
	try{
		Connection conn = DBCP.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from `register`");
		
		while(rs.next()){
			RegisterBean rb = new RegisterBean();
			rb.setRegStdNo(rs.getString(1));
			rb.setRegLecNo(rs.getInt(2));
			rb.setRegMidScore(rs.getInt(3));
			rb.setRegFinalScore(rs.getInt(4));
			rb.setRegGrade(rs.getString(5));
			
			registers.add(rb);
		}
		
		rs.close();
		stmt.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<h3>수강관리</h3>
		<a href="./lecture.jsp">강좌관리</a>
		<a href="./register.jsp">수강관리</a>
		<a href="./student.jsp">학생관리</a>
		
		<h4>수강현황</h4>
		<tr>
			<td>20201016</td>
		</tr>
		<button>검색</button>
		<button>수강신청</button>
		
		<table border="1">
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>강좌명</th>
				<th>강좌코드</th>
				<th>중간시험</th>
				<th>기말시험</th>
				<th>총점</th>
				<th>등급</th>
			</tr>	
			<tr>
				<td>20201016</td>
				<td>김유신</td>
				<td>빅데이터개론</td>
				<td>248</td>
				<td>24</td>
				<td>62</td>
				<td>86</td>
				<td>B</td>
			</tr>
			<tr>
				<td>20201016</td>
				<td>김유신</td>
				<td>컴퓨터사고와 코딩</td>
				<td>253</td>
				<td>28</td>
				<td>40</td>
				<td>68</td>
				<td>D</td>
			</tr>
			<tr>
				<td>20201016</td>
				<td>김유신</td>
				<td>운영체제론</td>
				<td>167</td>
				<td>18</td>
				<td>38</td>
				<td>56</td>
				<td>F</td>
			</tr>
			
			<% for(RegisterBean rb : registers){ %>
			<tr>
				<td><%= rb.getRegStdNo() %></td>
				<td><%= rb.getRegLecNo() %></td>
				<td><%= rb.getRegMidScore() %></td>
				<td><%= rb.getRegFinalScore() %></td>
				<td><%= rb.getRegGrade() %></td>
			</tr>
			<% } %>
			</table>
			
			<h4>수강신청</h4>
		
		<button>닫기</button>
		
		<table border="1">
			<tr>
				<td>학번</td>
				<td><input type="text"/></td>
			</tr>	
			<tr>
				<td>이름</td>
				<td><input type="text"/></td>
			</tr>	
			<tr>
				<td>신청강좌</td>
				<td>강좌선택</td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="신청"/></td>
			</tr>	
	</body>
</html>