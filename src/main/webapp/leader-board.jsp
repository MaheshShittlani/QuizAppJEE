<%@page import="com.learn.db.model.User"%>
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
        	<table class="table table-striped table-bordered mt-5 mb-2">
				<thead>
					<tr>
						<td>Sr No.</td>
						<td>User</td>
						<td>Score</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="userScore" items="${userScores}" varStatus="counter">
						<tr>
							<td>${counter.count}</td>
							<td>${userScore.userName}</td>
							<td>${userScore.score}</td>
						</tr>
				   	</c:forEach>
				</tbody>
			</table>
  		</div>
  	</div>
  </div>
  <jsp:include page="includes/footer.jsp" />

