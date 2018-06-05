<%@include file="../shared/flows-header.jsp"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<div class="container">
	<div class="row">
		<div class="col-lg-6 offset-md-3">
			<div class="border border-primary">			
		      <div class="card bg-primary text-white">
			      	<div class="card-body">
			      		<h4>Sign Up - Personal</h4>
			      	</div>
		      </div>
		      <div class="card">
			    <div class="card-body">
			    
			    <sf:form method="POST" class="form-horizontal" id="registerForm" modelAttribute="user">			    
				    	<div class="form-group row">
	                      <label class="col-form-label col-lg-4">First Name</label>
	                      <div class="col-lg-8">
	                          <sf:input path="firstName" class="form-control" placeholder="First Name"/>
	                          <sf:errors path="firstName" cssClass="help-block" element="em"/>                                                    
	                      </div>
	                  	</div>
	                  	<div class="form-group row">
	                      <label class="col-form-label col-lg-4">Last Name</label>
	                      <div class="col-lg-8">
	                          <sf:input path="lastName" class="form-control" placeholder="Last Name"/>
	                          <sf:errors path="lastName" cssClass="help-block" element="em"/>                                                    
	                      </div>
	                  	</div>
	                  	<div class="form-group row">
	                      <label class="col-form-label col-lg-4">Email</label>
	                      <div class="col-lg-8">
	                          <sf:input type="text" path="email" class="form-control" placeholder="juan.delacruz@gmail.com"/>
	                          <sf:errors path="email" cssClass="help-block" element="em"/>
	                                                                              
	                      </div>
	                  	</div>
	                  	<div class="form-group row">
	                      <label class="col-form-label col-lg-4">Contact Number</label>
	                      <div class="col-lg-8">
	                         <sf:input type="text" path="contactNumber" class="form-control" placeholder="xxxxxxxxxxx" maxlength="12" />
							 <sf:errors path="contactNumber" cssClass="help-block" element="em"/>	
	                      </div>
	                  	</div>
	                  	<div class="form-group row">
	                      <label class="col-form-label col-lg-4">Password</label>
	                      <div class="col-lg-8">
	                          <sf:input type="password" path="password" class="form-control" placeholder="Password"/>
	                           <sf:errors path="password" cssClass="help-block" element="em"/>                                                   
	                      </div>
	                  	</div>
	                  	<div class="form-group row">
	                      <label class="col-form-label col-lg-4">Confirm Password</label>
	                      <div class="col-lg-8">
	                          <sf:input type="password" path="confirmPassword" class="form-control" placeholder="Confirm Password"/>
	                           <sf:errors path="confirmPassword" cssClass="help-block" element="em"/>                                                   
	                      </div>
	                  	</div>
	                  	<div class="form-group row">
	                      <label class="col-form-label col-lg-4">Select Role</label>
	                      <div class="col-lg-8">
	                      	 <label class="radio-inline">
	                      	  	<sf:radiobutton path="role"  value="USER" checked="checked"/> User
	                      	 </label>
	                         <label class="radio-inline">
	                      	  	<sf:radiobutton path="role"  value="SUPPLIER" /> Supplier
	                      	 </label>
	                                                                             
	                      </div>
	                  	</div>
	                  	
	                  	
	                  <div class="offset-md-4 col-lg-8">
					    <button type="submit" name="_eventId_billing" class="btn btn-primary">
					    	Next - Billing 	<b>></b>	    	
					    </button>
					</div>
                  </sf:form>
			   
			    </div>			    
			  </div>
		    </div>		
		</div>
	</div>
</div>
<%@include file="../shared/flows-footer.jsp"%>