<?php $__env->startSection('content'); ?>
<section  style="background:url(assets/img/backgrounds/Newsletter_Write.jpg) no-repeat; background-position:center; background-size:cover;">
	<div class="container" style="padding:50px 10px;"> 
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="r-form-1-bottom">

					<?php if(count($errors)>0): ?>
					<ul>
						<?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
						<li class="alert alert-danger"><?php echo e($error); ?></li>

						<?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
					</ul>
					<?php endif; ?>

					<form role="form" action="<?php echo e(route('front::signup_store')); ?>" method="post">
						<?php echo e(csrf_field()); ?>

						<div class="form-group">
							<label class="sr-only" for="r-form-1-first-name">First name</label>
							<input type="text" name="f_name" placeholder="First name..." class="r-form-1-first-name form-control" id="r-form-1-first-name">
						</div>
						<div class="form-group">
							<label class="sr-only" for="username">Username</label>
							<input type="text" name="username" placeholder="Username..." class="r-form-1-user-name form-control" id="r-form-1-user-name">
						</div>
						<div class="form-group">
							<label class="sr-only" for="r-form-1-email">Email</label>
							<input type="text" name="email" placeholder="Email..." class="r-form-1-email form-control" id="r-form-1-email">
						</div>
						<div class="form-group">
							<label class="sr-only" for="r-form-1-password">Password</label>
							<input type="password" name="password" placeholder="Password..." class="r-form-1-password form-control" id="r-form-1-password">
						</div>
						<div class="form-group">
							<label class="sr-only" for="r-form-1-con_password">Confirm Password</label>
							<input type="password" name="con_password" placeholder="Confirm Password..." class="r-form-1-con_password form-control" id="r-form-1-con_password">
						</div>
						
						<button type="submit" class="btn">Sign me up!</button>

						<p class="terms">
							By registering to our course using this form, you agree to our 
							<a href="#" class="launch-modal" data-modal-id="modal-terms">Terms and Conditions</a>.
						</p>
					</form>
				</div>

			</div> </div> </div>	
		</section>
		<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>