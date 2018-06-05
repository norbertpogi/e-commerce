<%@include file="../shared/flows-header.jsp"%>

<div class="container">
	<div class="row">		
		<div class="col-md-6">
			<div class="border border-primary">
				<div class="card bg-primary text-white">
					<div class="card-body">
						<h4>Personal Details</h4>
					</div>				
					<div class="card bg-light text-dark">
						<div class="card-body">
							<div class="text-center">
								<h6>
									Name : <strong>${registerModel.user.firstName} ${registerModel.user.lastName}</strong>
								</h6>
								<h5>
									Email : <strong>${registerModel.user.email}</strong>
								</h5>
								<h5>
									Contact : <strong>${registerModel.user.contactNumber}</strong>
								</h5>
								<h5>
									Role : <strong>${registerModel.user.role}</strong>
								</h5>															
							</div>
						</div>	
						<div class="card-footer">
								<p>
									<a href="${flowExecutionUrl}&_eventId_personal"	class="btn btn-primary">Edit</a>
								</p>
							</div>					
					</div>					
				</div>
			</div>
			</div>
			
			<div class="col-md-6">
				<div class="border border-primary">
					<div class="card bg-primary text-white">
						<div class="card-body">
							<h4>Billing Address</h4>
						</div>
						<div class="card bg-light text-dark">
							<div class="card-body">
								<div class="text-center">
									<h5>${registerModel.billing.addressLineOne},</h5>
									<h5>${registerModel.billing.addressLineTwo},</h5>
									<h5>${registerModel.billing.city}-${registerModel.billing.postalCode},</h5>
									<h5>${registerModel.billing.state}</h5>
									<h5>${registerModel.billing.country}</h5>									
								</div>
							</div>						
							<div class="card-footer">
								<p>
									<a href="${flowExecutionUrl}&_eventId_billing" class="btn btn-primary">Edit</a>
								</p>
							</div>
						</div>
				</div>
			</div>		
		</div>
	</div>
	</div>
	<br/>
	<div class="row">
    <div class="col-md-4 offset-sm-4">
        <div class="text-center">	<a href="${flowExecutionUrl}&_eventId_submit" class="btn btn-lg btn-primary">Confirm</a>
        </div>
    </div>
</div>

<%@include file="../shared/flows-footer.jsp"%>