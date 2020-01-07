<?php $__env->startSection('content'); ?>
<!-- Top content -->
<div class="pay-content" style="background:url(assets/img/backgrounds/payonline.jpg) no-repeat; background-position:center; background-size:cover;">

	<div class="container" style="padding:115px 15px;">
		<div class="row">

			<div class="about-us-box wow fadeInUp">
				<a target="_blank" href="https://wss.kseb.in/selfservices/quickpay">
					<div class="about-us-photo">
						<img src="front/assets/img/about/bsnl.png" alt="john-doe" data-at2x="front/assets/img/about/bsnl.png">			
					</div>
					<h3 style="color: #e38f42;
					font-weight: 600;">BSNL</h3>
				</div>
				<div class="about-us-box wow fadeInDown">
					<a target="_blank" href="http://portal2.bsnl.in/myportal/cfa.do">
						<div class="about-us-photo">
							<img src="front/assets/img/about/kseb.png" alt="tim-brown" data-at2x="front/assets/img/about/kseb.png">
						</div>
						<h3 style="color: #e38f42;
						font-weight: 600;">KSEB</h3>
					</div>
				</div>
			</div>
		</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('front.layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>