<jsp:include page="includes/header.jsp" />

	

    <!-- Page Content -->
    <div class="page-heading contact-heading header-text">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="text-content">
              <h4>Signup</h4>
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
              <h2>Signup</h2>
            </div>
          </div>
          <div class="col-md-8">
            <div class="contact-form">
              <form id="contact" action="signup" method="post">
                <div class="row">
                  <div class="col-lg-12 col-md-12 col-sm-12">
                    <fieldset>
                      <input name="firstName" type="text" class="form-control" id="firstName" placeholder="Firstname" required>
                    </fieldset>
                  </div>
                  <div class="col-lg-12 col-md-12 col-sm-12">
                    <fieldset>
                      <input name="lastName" type="text" class="form-control" id="lastName" placeholder="Lastname" required>
                    </fieldset>
                  </div>
                  <div class="col-lg-12 col-md-12 col-sm-12">
                    <fieldset>
                      <input name="emailId" type="email" class="form-control" id="emailId" placeholder="E-Mail Address" required>
                    </fieldset>
                  </div>
                  <div class="col-lg-12 col-md-12 col-sm-12">
                    <fieldset>
                      <input name="mobileNumber" type="text" class="form-control" id="mobileNumber" placeholder="Mobile No." required>
                    </fieldset>
                  </div>
                  <div class="col-lg-12 col-md-12 col-sm-12">
                    <fieldset>
                      <input name="password" type="password" class="form-control" id="password" placeholder="Password" required>
                    </fieldset>
                  </div>
                  <div class="col-lg-12">
                    <fieldset>
                      <button type="submit" id="form-submit" class="filled-button">Signup</button>
                    </fieldset>
                    
                    <br>
                    
                    <p>Already have an account?</p>

                    <fieldset>
                      <button  onclick="document.location.href='${pageContext.request.contextPath}';" type="submit" id="form-submit" class="filled-button">Login</button>
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