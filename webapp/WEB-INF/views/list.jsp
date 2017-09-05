<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){
		$(".delete").click(function(){
			var href = $(this).attr("href");
			$("form").attr("action",href).submit();
			return false;
		})
	})
</script>

</head>
<body>
	<form action="" method="post">
		<input type="hidden" name="_method" value="DELETE"/>
	</form>
	<c:if test="${empty requestScope.employees }">
		暂无信息
	</c:if>
	<c:if test="${!empty requestScope.employees }">
		<table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<th>ID</th>
				<th>LastName</th>
				<th>Email</th>
				<th>Gender</th>
				<th>Department</th>
				<th>Eidt</th>
				<th>Delete</th>
			</tr>
			<c:forEach items="${requestScope.employees }" var="emps">
			<tr>
				<td>${emps.id }</td>
				<td>${emps.lastname }</td>
				<td>${emps.email }</td>
				<td>${emps.gender }</td>
				<td>${emps.department.departmentName }</td>
				<td><a href="emp/${emps.id }">修改</a></td>
				<td><a class="delete" href="emp/${emps.id }">删除</a></td>
			</tr>	
			</c:forEach>
		</table>
	</c:if>
	<a href="emp">Add Employee</a>
</body>
</html>