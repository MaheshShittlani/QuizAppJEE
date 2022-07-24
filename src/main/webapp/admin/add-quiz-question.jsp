<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    Welcome ${user.firstName} ${user.lastName}, <br>
    
   	Quiz Name / Title: <label>${quiz.title}</label><br><br>
   	Category : <label>${quiz.category}</label>
   	<br><br>
   	<form action="${pageContext.request.contextPath}/admin/addQuizQuestion/${quiz.id}" method="post">
		<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
			<thead>
				<tr>
					<th></th>
					<th>Sr No.</th>
					<th>Question</th>
					<th>Option 1</th>
					<th>Option 2</th>
					<th>Option 3</th>
					<th>Option 4</th>
					<th>Correct Option</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="question" items="${questionList}" varStatus="counter">
		   		<tr>
		   			<td><input type="checkbox" id="questionId" name="questionId" value="${question.id}"/></td>
					<td>${counter.count}</td>
					<td><a href="${pageContext.request.contextPath}/admin/viewQuestion/${question.id}">${question.question}</a></td>
					<td>${question.optionA}</td>
					<td>${question.optionB}</td>
					<td>${question.optionC}</td>
					<td>${question.optionD}</td>
					<td>${question.correctOption}</td>
				</tr>
		   	</c:forEach>
	       </tbody>
	       </table>
	   		<input type="submit" value="Submit"/>
       </form>
       <br><br>
</body>
</html>