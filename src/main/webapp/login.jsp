<jsp:include page="includes/header.jsp" />

	

    <!-- Page Content -->
    <div class="page-heading contact-heading header-text">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="text-content">
              <h4>Login</h4>
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
              <h2>Login</h2>
            </div>
          </div>
          
          <div class="error-msg col-md-12">
           	<%
				if (request.getAttribute("error") != null) {
					%>
					<div class="alert alert-danger" role="alert">
						  <%=request.getAttribute("error") %>
					</div>
					<%
				}
			%>
           
           	<%
				if (request.getAttribute("info") != null) {
					%>
					<div class="alert alert-success" role="alert">
						  <%=request.getAttribute("info") %>
					</div>
					<%
				}
			%>
          </div>
          <div class="col-md-6">
            <div class="contact-form">
              <form id="contact" action="login" method="post">
                <div class="row">
                  <div class="col-lg-12 col-md-12 col-sm-12">
                    <fieldset>
                      <input name="username" type="text" class="form-control" id="username" placeholder="E-Mail Address" required>
                    </fieldset>
                  </div>
                  <div class="col-lg-12 col-md-12 col-sm-12">
                    <fieldset>
                      <input name="password" type="password" class="form-control" id="password" placeholder="Password" required>
                    </fieldset>
                  </div>                  
                  <div class="col-lg-12">
                    <fieldset>
                      <button type="submit" id="form-submit" class="filled-button">Login</button>
                    </fieldset>
                    
                    <br>
                    <br>
                    
                    <p>Don't have an account?</p>

                    <fieldset>
                      <button  onclick="document.location.href='signup';" type="submit" id="form-submit" class="filled-button">Signup</button>
                    </fieldset>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
<jsp:include page="includes/footer.jsp" />    