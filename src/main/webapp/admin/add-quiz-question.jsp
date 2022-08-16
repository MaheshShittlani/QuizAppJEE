<%@page import="com.learn.db.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>View Question | Question</title>

    <!-- Custom fonts for this template -->
    <link href="${pageContext.request.contextPath}/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/admin/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="${pageContext.request.contextPath}/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <jsp:include page="side-bar.jsp" />
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <jsp:include page="top-bar.jsp" />
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

					<div class="row">
						<div class="col"><h1 class="h3 mb-2 text-gray-800">View Question</h1></div>
						<div class="col">
                        	<a href="${pageContext.request.contextPath}/admin/editQuestion/${question.id}" class="btn btn-primary btn-xs">Edit Question</a>						
						</div>
					</div>
                    <!-- Page Heading -->
                    

                    <!-- DataTables Example -->
                    <div class="card shadow mb-4">
                        <div class="card-body">
                            <form action="${pageContext.request.contextPath}/admin/addQuizQuestion/${quiz.id}" method="post">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>Select</th>
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
							   		<input type="submit" value="Submit" class="btn btn-primary"/>
						       </form>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/admin/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/admin/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath}/admin/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath}/admin/js/demo/datatables-demo.js"></script>

</body>

</html>