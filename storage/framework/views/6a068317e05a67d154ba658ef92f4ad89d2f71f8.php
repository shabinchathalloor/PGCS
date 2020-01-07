<?php $__env->startSection('content'); ?>
        	<div class="container">

				<div class="row">
				
					<div class="col-sm-5 r-form-1-box wow fadeInLeft">
						<div class="r-form-1-top">
							<div class="r-form-1-top-left">
								<h3>Log-in Now</h3>
								<p>Fill in the form below to get instant access:</p>
							</div>
							<div class="r-form-1-top-right">
								<i class="fa fa-pencil"></i>
							</div>
						</div>
						<div class="r-form-1-bottom">
							<form class="login-form" action="<?php echo e(route('front::post_home_login')); ?>" method="post">
        						<?php echo e(csrf_field()); ?>

								<div class="form-group">
									<label class="sr-only" for="r-form-1-first-name">Usename</label>
									<input type="text" name="username" placeholder="User name..." class="r-form-1-first-name form-control" id="r-form-1-first-name">
								</div>
								<div class="form-group">
									<label class="sr-only" for="r-form-1-last-name">Password</label>
									<input type="password" name="password" placeholder="password..." class="r-form-1-last-name form-control" id="r-form-1-last-name">
								</div>
								
								
								<button type="submit" class="btn">Sign in</button>
								<p class="terms">
							
									<a href="#" class="launch-modal" data-modal-id="modal-terms">Forgot Password</a>
								</p>
							</form>
						</div>
					</div>
					
					<div class="col-sm-7 text wow fadeInUp">
						<h1>PGCS</h1>
						<div class="description">
							<p class="medium-paragraph">
								“Public Grievance Clearing System” is an area to improve the Functionalities of various consumer departments. It makes it easier to give complaints to the various departments based on the consumer’s problem. There is also provision of paying the bills of the departments mentioned above.
							</p>
						</div>
						<div class="top-buttons">
							<a class="btn btn-link-1" href="<?php echo e(route('front::payment')); ?>">Quick Pay <i class="fa fa-angle-right"></i></a>
							<a class="btn btn-link-1" href="<?php echo e(route('front::signup')); ?>">Sign-up <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
					
				</div>
                
            </div>
<?php $__env->stopSection(); ?>        
<?php echo $__env->make('front.layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>