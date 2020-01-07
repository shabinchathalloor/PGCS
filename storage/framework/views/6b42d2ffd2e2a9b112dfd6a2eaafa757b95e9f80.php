<?php $__env->startSection('content'); ?>
		<!-- Call to action -->
        <div class="call-to-action-container section-container section-container-image-bg">
	        <div class="container">
	            <div class="row">
	                <div class="col-sm-12 call-to-action section-description wow fadeInLeft">
	                    <h2>Sign Up Now</h2>
	                    <p>
	                    	Fill in the form below to get instant access and services of PGCS 
	                    </p>
	                </div>
	            </div>
	            <div class="row">
	            	<div class="col-sm-12 section-bottom-button wow fadeInUp">
                        <a class="btn btn-link-1" href="<?php echo e(route('front::signupme')); ?>">Sign Me Up <i class="fa fa-angle-right"></i></a>
	            	</div>
	            </div>
	        </div>
  
<?php $__env->stopSection(); ?>
<?php echo $__env->make('front.layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>