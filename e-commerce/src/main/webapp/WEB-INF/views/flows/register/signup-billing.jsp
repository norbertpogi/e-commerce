<%@include file="../shared/flows-header.jsp" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

    	<div class="container">
    		
    		<div class="row">
			<div class="col-lg-6 offset-md-3">
			<div class="border border-primary">			
		      <div class="card bg-primary text-white">
			      	<div class="card-body">
			      		<h4>Sign Up - Address</h4>
			      	</div>
		      </div>
		      <div class="card">
			    <div class="card-body">
			    
			    <sf:form method="POST" class="form-horizontal" id="billingForm" modelAttribute="billing">			    
				    	
				    	<div class="form-group row">
	                      <label class="col-form-label col-lg-4">Address Line One</label>
	                      <div class="col-lg-8">
	                          <sf:input path="addressLineOne" class="form-control" placeholder="Enter Address Line One"/>
	                          <sf:errors path="addressLineOne" cssClass="help-block" element="em"/>                                                    
	                      </div>
	                  	</div>
	                  	<div class="form-group row">
	                      <label class="col-form-label col-lg-4">Address Line Two</label>
	                      <div class="col-lg-8">
	                          <sf:input path="addressLineTwo" class="form-control" placeholder="Enter Address Line Two"/>
	                          <sf:errors path="addressLineTwo" cssClass="help-block" element="em"/>                                                    
	                      </div>
	                  	</div>
	                  	<div class="form-group row">
	                      <label class="col-form-label col-lg-4">City</label>
	                      <div class="col-lg-8">
	                          <sf:input type="text" path="city" class="form-control" placeholder="Enter City Name"/>
	                           <sf:errors path="city" cssClass="help-block" element="em"/>                                                  
	                      </div>
	                  	</div>
	                  	<div class="form-group row">
	                      <label class="col-form-label col-lg-4">Postal Code</label>
	                      <div class="col-lg-8">
	                          <sf:input type="text" path="postalCode" class="form-control" placeholder="XXXXXX"/>
	                          <sf:errors path="postalCode" cssClass="help-block" element="em"/>                                                    
	                      </div>
	                  	</div>
	                  	<div class="form-group row">
	                      <label class="col-form-label col-lg-4">State</label>
	                      <div class="col-lg-8">
	                          <sf:input type="text" path="state" class="form-control" placeholder="Enter State Name"/>
	                          <sf:errors path="state" cssClass="help-block" element="em"/>                                                    
	                      </div>
	                  	</div>
	                  	<div class="form-group row">
	                      <label class="col-form-label col-lg-4">Country</label>
	                      <div class="col-lg-8">
	                          <sf:input type="text" path="country" class="form-control" placeholder="Enter Country Name"/>
	                          <sf:errors path="country" cssClass="help-block" element="em"/>                                                    
	                      </div>
	                  	</div>
	                  	
	                  	<div class="form-group row">
						    <div class="offset-md-4 col-xl-8">
						        <button type="submit" name="_eventId_personal" class="btn btn-primary">	<span class="fas fa-chevron-square-left"></span> Previous - Personal <b> &lt; </b>
						        </button>
						        <button type="submit" name="_eventId_confirm" class="btn btn-primary">Next - Confirm <b> &gt; </b>
						        </button>
						    </div>
						</div>	                  
                  </sf:form>			   
			    </div>			    
			  </div>
		    </div>		
		</div>
	</div> 
</div>  
    
<%@include file="../shared/flows-footer.jsp" %>