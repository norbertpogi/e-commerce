<div class="container">
	<div class="row">
		<div class="col-lg-6 offset-md-3">
			<div class="border border-primary">			
		      <div class="card bg-primary text-white">
			      	<div class="card-body">
			      		<h4>Login</h4>
			      	</div>
		      </div>
		      <div class="card">
			    <div class="card-body">			    		
	                  	<div class="form-group row">
	                      <label class="col-form-label col-lg-4">Email</label>
	                      <div class="col-lg-8">
	                          <sf:input type="text" path="email" class="form-control" placeholder="juan.delacruz@gmail.com"/>
	                          <sf:errors path="email" cssClass="help-block" element="em"/>	                                                                             
	                      </div>
	                  	</div>	                  	
	                  	<div class="form-group row">
	                      <label class="col-form-label col-lg-4">Password</label>
	                      <div class="col-lg-8">
	                          <sf:input type="password" path="password" class="form-control" placeholder="Password"/>
	                           <sf:errors path="password" cssClass="help-block" element="em"/>                                                   
	                      </div>
	                  	</div>	                                
			    </div>			    
			  </div>
		    </div>		
		</div>
	</div>
</div>