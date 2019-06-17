<%@page import="com.dao.BoardDAO" %>
<%@page import = "java.util.List" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style>
	
	.add-card-list-container{
			background-color: rgba(0,0,0,.12);
			display: flex;
			border-radius: 3px;
			flex-direction: row;
			box-sizing: border-box;
			flex: 0 0 auto;
			padding: 6px;
			cursor: pointer;
    		font-weight: 200;
    		width: 170px;
    		margin-left: 4px;
    		margin-right: 4px;
    		margin-top: 10px;
    		text-align: right;
		}
		
		.add-card-list-container:hover{
			background-color: rgba(9,30,66,.25);
		}
		.history_text{
			text-decoration: none;
			display: inline-block;
			font-weight: bold;
		    font-size: 18px;
		    margin-top: 4px;
		    margin-left: 5px;
		    color:black;
		}
		.history{
			text-decoration: none;
			color:black;
		}
		
</style>

</head>
<body>
	<div class="add-card-list-container">
		<a href="makehistory.do?boardnum=${param.boardnum}" class="history_text">히스토리 생성</a>
	</div>
	<br /><br />
	<h1>히스토리 목록</h1>
	
	<table width="500" border="0">
	
	<c:forEach items="${list}" var="day">
	<c:set var="parent_num" value="0" />
		<tr>
			<td>
			<div class="add-card-list-container"><a href="viewhistory.do?day=${day}&parent_num=${0}&boardnum=${param.boardnum}" class="history">${day}</a></div>
			</td>
		</tr>
	</c:forEach>
	
	</table>
</body>
</html>