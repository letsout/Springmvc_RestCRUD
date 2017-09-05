<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="emp" method="post" modelAttribute="employee">
		<c:if test="${employee.id ==null}">
			LastName:<form:input path="lastname"/><br>
		</c:if>
		<c:if test="${employee.id !=null}">
				<form:hidden path="id"/>
				<input type="hidden" name="_method" value="PUT"/>
		</c:if>
			Email:<form:input path="email"/><br>
			Gender:<form:radiobutton path="gender" itemLabel="Male"  value="1"/>
				   <form:radiobutton path="gender" itemLabel="Female"  value="0s"/><br>
			Department:<form:select path="department.id" items="${requestScope.departments }"  
			itemLabel="departmentName" itemValue="id"/>	<br>
			<input type="submit" value="Submit"/>   
	</form:form>
</body>
</html>