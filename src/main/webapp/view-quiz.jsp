<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:include page="includes/header.jsp" />
<!-- Page Content -->
    <div class="page-heading products-heading header-text">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="text-content">
              <h4>Quiz Name: ${quiz.title}</h4>
              <h2>Category : ${quiz.category}</h2>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
        	<form action="${pageContext.request.contextPath}/submit/question" method="post">
		   		<input type="hidden" id="quizId" name="quizId" value="${quiz.id}"/>
		   		<input type="hidden" id="questionId" name="questionId" value="${question.id}"/>
		   		<input type="hidden" id="quizQuestionId" name="quizQuestionId" value="${question.quizQuestionId}"/>
		   	
			    <div class="panel">
			      <div class="result">
			
			      </div>
			      <div class="question-container" id="question">
			          ${question.question}
			      </div>
			      <div class="option-container">
			          <a class="option" id="op1" ><input type="radio" id="answer" name="answer" value="A"/> ${question.optionA}</a>
			    
			          <a class="option" id="op2" ><input type="radio" id="answer" name="answer" value="B"/>${question.optionB}</a>
			    
			          <a class="option" id="op3"><input type="radio" id="answer" name="answer" value="C"/>${question.optionC}</a>
			    
			          <a class="option" id="op4"><input type="radio" id="answer" name="answer" value="D"/>${question.optionD}</a>
			      </div>
			      <div class="navigation">
			          <button class="evaluate" type="submit">Evaluate</button>
			          <button class="next">Next</button>
			      </div>
			  	</div>
		  	</form>
  		</div>
  	</div>
  </div>
  
  <jsp:include page="includes/footer.jsp" />