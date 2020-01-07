<?php $__env->startSection('content'); ?>

 
        <section  style="background:url(assets/img/backgrounds/feed2.jpg) no-repeat; background-position:center; background-size:cover;">
        <div>
        	<h2 style="font-color:yellow">Please give your Valuable Feedbacks</h2>
        </div>
       
		 <div class="container" style="padding:100px 15px;"> 
		 <div class="row">
		 <div class="col-md-6 col-md-offset-3">
		<div class="r-form-1-bottom">
							<form role="form" action="<?php echo e(route('front::feedbackStore')); ?>" method="post">
							<?php echo e(csrf_field()); ?>

								<div class="form-group">
									<label class="sr-only" for="r-form-1-first-name">Consumer name</label>
									<input type="text" name="name" placeholder="Consumer name..." class="r-form-1-first-name form-control">
								</div>
								<div class="form-group">
									<label class="sr-only" for="adhaar_id">Adhaar ID</label>
									<input type="text" name="adhaar" placeholder="Adhaar ID..." class="r-form-1-adhaar_id form-control">
								</div>
								 <div>
        							<label>Department</label>
							        <select name="department" class="field-select" id="department">
							        <option selected disabled>select</option>
							         <option value="1">KSEB</option>
							         <option value="2">BSNL</option>
							        <option value="3">GAS</option>
							        <option value="4">KWA</option>
							        </select>
							    </div> 
							    <div>
							    <div class="form-group">
									<label class="sr-only" for="adhaar_id">Phone</label>
									<input type="text" name="phone" placeholder="Phone..." class="r-form-1-phone form-control">
								</div>
       						
       							 <textarea name="feedback" id="feedback"  placeholder="feedback" style="width:100% !important;"></textarea>
							    </div>
							
								<button type="submit" class="btn">Submit</button>
							</form>
						</div>

			</div> </div> </div>	
</section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>