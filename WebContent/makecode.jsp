<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
input:focus, textarea:focus{
    outline: none;
}
.td input:focus, .td textarea:focus{
    outline: none;
}
</style>

</head>
<body>
	<form action="createcode.do?day=${day}&parent_num=${parent_num}&boardnum=${param.boardnum}" method="post">
		<table style="border: 1px solid; border-collapse: collapse;" width = 500 height= 300>
		   <tr style="border: solid 1px ;">
		        <th style="border: solid 1px ;">파일 이름</th>
		        <td style="border: 1px solid;">
		        	<input type="text" size="20" style="width:100%; border: 0;" name="code_name">
		        </td>
		   </tr>  
		   	<tr style="border: solid 1px ;">     
		       <th style="border: solid 1px ;">코드</th>     
		       <td style="border: 1px solid;">       
		       		<textarea rows="10" style="width:90%; border: 0; resize: none;" name="code"></textarea>
		       </td>   
		    </tr> 
		</table>
		<br /><br /><input type="submit" value="생성" />
	</form>
	
	
</body>
</html>