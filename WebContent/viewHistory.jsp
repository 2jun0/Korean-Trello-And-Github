<%@page import="com.dao.BoardDAO" %>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import = "java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	#makefolder{
		display : none;
	}
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
    		width: 200px;
    		margin-left: 4px;
    		margin-right: 4px;
    		margin-top: 10px;
    		text-align: right;
		}
		.add-card-list-container a{
			color:black;
			text-decoration: none;
		}
		.add-card-list-container:hover{
			background-color: rgba(9,30,66,.25);
		}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="add-card-list-container" onclick="fun()">
		<a style="text-align: center;">폴더 생성</a>
	</div>
	<div id="makefolder">
		<form action="makefolder.do?day=${day}&parent_num=${parent_num}&boardnum=${param.boardnum}" method="post">
			폴더명 : <input type="text" name="folder_name" />
			<input type="submit" value="생성" />
		</form>
	</div>
	<div class="add-card-list-container" onclick="make_code();">
		<a href="makecode.do?day=${day}&parent_num=${parent_num}&boardnum=${param.boardnum}">코드 생성</a><br />
	</div>
	
	<script>
		function fun(){
			var x = document.getElementById("makefolder");
			if(x.style.display === "none"){
				x.style.display = "block";
			}else{
				x.style.display = "none";
			}
		}
	</script>
	
	<h1>파일 목록</h1>
	
	<table width="500" border="0">
	
	<c:forEach items="${list}" var="name">
	<c:set var="day" value="${day}" />
	<c:set var="parent_num" value="${parent_num}" />
		<tr>
			<td>
			<div class="add-card-list-container" onclick="view();"><a href="viewhistory.do?day=${day}&parent_num=${parent_num}&name=${name}&boardnum=${param.boardnum}" class="history">${name}<br /></a></div>
			</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>