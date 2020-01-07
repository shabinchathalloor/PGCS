<?php $__env->startSection('title', trans('messages.dashboard')); ?>
<?php $__env->startSection('dashboard', 'active'); ?>

<?php $__env->startSection('content'); ?>

<div id="breadcrumbs-wrapper">
    <div class="container">
        <div class="row">
            <div class="col s12 m12 l12">
                <h5 class="breadcrumbs-title col s5" style="margin:.82rem 0 .656rem">Dashboard</h5>
                <ol class="breadcrumbs col s7 right-align">
                    <li><a href="/dashboard">Dashboard</a></li>
                </ol>
            </div>
        </div>
    </div>
</div>


               
 <?php $__env->stopSection(); ?>

<?php echo $__env->make('user.layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>