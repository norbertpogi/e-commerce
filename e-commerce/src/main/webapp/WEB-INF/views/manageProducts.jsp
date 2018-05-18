<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<div class="container">
    <div class="row">
    	    	
    	<c:if test="${not empty message }">
    		<div class="col-12">
	    		<div class="alert alert-success">
	    			<button type="button" class="close" data-dismiss="alert">&times;</button>
			    	${message}
				</div>
			</div>    	    
    	</c:if>
    	
        <div class="offset-md-2 col-lg-8">
        <div class="border border-primary">
            <div class="card text-white bg-primary">
                <div class="card-header">
                    	<h4>Product Management</h4>
                </div>
             </div>
                <div class="card-body">
                
                	<!-- FORM ELEMENTS -->
                	<sf:form class="form-horizontal" modelAttribute="product" action="${contextRoot}/manage/products" method="POST">
                		
                    <div class="form-group row">
                        <label class="col-form-label col-lg-4">Enter Product Name:</label>
                        <div class="col-lg-8">
                            <sf:input type="text" path="name" class="form-control" placeholder="Product Name"/>
                            <sf:errors path="name" cssClass="help-block" element="em"/>
                            
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-form-label col-lg-4">Enter Brand Name:</label>
                        <div class="col-lg-8">
                            <sf:input type="text" path="brand" class="form-control" placeholder="Brand Name"/>	
                            <sf:errors path="brand" cssClass="help-block" element="em"/>
                        </div>
                    </div>
                    <div class="form-group row">
					    <label class="col-form-label col-lg-4">Description</label>
					    <div class="col-lg-8">
					        <sf:textarea path="description" class="form-control" rows="4" placeholder="Enter your description here!"></sf:textarea>
					        <sf:errors path="description" cssClass="help-block" element="em"/>
					    </div>
					    
					</div>
                    <div class="form-group row">
                        <label class="col-form-label col-lg-4">Unit price:</label>
                        <div class="col-lg-8">
                            <sf:input type="text" path="unitPrice" id="unitPrice" class="form-control" placeholder="Enter Unit Price"/>
                            <sf:errors path="unitPrice" cssClass="help-block" element="em"/>	                            
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-form-label col-lg-4">Quanity Available:</label>
                        <div class="col-lg-8">
                            <sf:input type="number" path="quantity" class="form-control" placeholder="Quanity Available"/>	                            
                        </div>
                    </div>
                     <div class="form-group row">
                        <label class="col-form-label col-lg-4">Select Category:</label>
                        <div class="col-lg-8">
                        	<sf:select class="form-control" id="categoryId" path="categoryId"
                        		items="${categories}"
                        		itemLabel="name"
                        		itemValue="id"
                        	/>	                            
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="offset-md-4 col-lg-4">
                            <input type="submit" name="submit" value="Submit" class="btn btn-primary">
                            
                            <!-- Hidden fields for product -->
                            <sf:hidden path="id"/>
                            <sf:hidden path="code"/>
                            <sf:hidden path="supplierId"/>
                            <sf:hidden path="active"/>
                            <sf:hidden path="purchases"/>
                            <sf:hidden path="views"/>
                            
                        </div>
                    </div>
                    </sf:form>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
</div>