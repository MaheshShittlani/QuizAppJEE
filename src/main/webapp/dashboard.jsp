<%@page import="com.learn.db.model.User"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<jsp:include page="includes/header.jsp" />
    <!-- Page Content -->
    <div class="page-heading contact-heading header-text">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="text-content">
              <h4>Explore Quiz</h4>
            </div>
          </div>
        </div>
      </div>
    </div>

   <div class="send-message mb-5">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <h2>Quiz List</h2>
            </div>
          </div>
          <div class="col-md-12">
            	<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<td>Sr No.</td>
							<td>Quiz Title</td>
							<td>Category</td>
							<td>Action</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="quiz" items="${quizList}" varStatus="counter">
							<tr>
								<td>${counter.count}</td>
								<td>${quiz.title}</td>
								<td>${quiz.category}</td>
								<td>
									<a href="${pageContext.request.contextPath}/start/quiz/${quiz.id}" class="filled-button">Start</a>
								</td>
							</tr>
					   	</c:forEach>
					</tbody>
				</table>
          </div>
        </div>
      </div>
    </div>
<jsp:include page="includes/footer.jsp" />    