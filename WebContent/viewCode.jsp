<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<table style="border: 1px solid; border-collapse: collapse;" width = 500 height= 300>
		   <tr style="border: solid 1px ;">
		        <th style="border: solid 1px ;" width = 70>파일 이름</th>
		        <td style="border: 1px solid;">
		        	${name}
		        </td>
		   </tr>  
		   	<tr style="border: solid 1px ;">     
		       <th style="border: solid 1px ;">코드</th>     
		       <td style="border: 1px solid;">       
		       		${code}
		       </td>   
		    </tr> 
		</table>
</body>
</html>