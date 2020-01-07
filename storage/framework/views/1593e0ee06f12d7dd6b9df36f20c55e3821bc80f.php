<?php $__env->startSection('content'); ?>
<div class="dash container-fluid" style="padding:50px 15px;"> 
    <div class="row">
        <div class="col-md-3">
            <ul>
                <li class="var_nav">
                    <div class="link_bg"></div>
                    <div class="link_title">
                        <div class=icon> 
                            <i class="icon-mobile-phone icon-2x"></i>
                        </div>
                        <a href="<?php echo e(route('front::registration')); ?>"><span>Complaint Registrationtion</span></a>
                    </div>
                </li>
                <li class="var_nav">
                    <div class="link_bg"></div>
                    <div class="link_title">
                        <div class=icon> 
                            <i class="icon-lightbulb icon-2x"></i>
                        </div>
                        <a href="#"><span>Status</span></a>
                    </div>
                </li>
                <li class="var_nav">
                    <div class="link_bg"></div>
                    <div class="link_title">
                        <div class=icon> 
                            <i class="icon-wrench icon-2x"></i>
                        </div>
                        <a href="<?php echo e(route('front::feedback')); ?>"><span>Feedback</span></a>
                    </div>
                </li>
                <li class="var_nav">
                    <div class="link_bg"></div>
                    <div class="link_title">
                        <div class=icon> 
                            <i class="icon-briefcase icon-2x"></i>
                        </div>
                        <a href="<?php echo e(route('front::logout')); ?>" method="post"><span>Logout</span></a>
                    </div>
                </li>
            </ul>
        </div>

        <div class="col-md-9">
            <div class="well" style="background:#fff !important; border:1px solid #ddd; margin-bottom:0px !important;">

                <div class="well">
                    <div>
                        <i class="fa fa-pencil-square-o" aria-hidden="true" style="font-size:50px;"></i>
                        <h2>Your Complaint <?php echo e($status->status); ?></h2>	
                    </div>		
                    
                </div>
            </div>
        </div>

    </div>  
</div>
<?php $__env->stopSection(); ?>



<?php echo $__env->make('front.layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>