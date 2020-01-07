<?php $__env->startSection('title', trans_choice('messages.locations',2)); ?>
<?php $__env->startSection('view Status', 'active'); ?>

<?php $__env->startSection('content'); ?>

   <div id="breadcrumbs-wrapper">
    <div class="container">
        <div class="row">
            <div class="col s12 m12 l12">
                <h5 class="breadcrumbs-title col s5" style="margin:.82rem 0 .656rem"> Status</h5>
                <ol class="breadcrumbs col s7 right-align">
                    <li><a href=""><?php echo $__env->yieldContent('title'); ?></a></li>
                </ol>
            </div>
        </div>
    </div>
</div>
       <div class="container">
        <div class="row">
        <div class="col s8">
        <div class="card-panel">
           
                  <div class="divider" style="margin:15px 0 10px 0"></div>
                  <table class="centered">
                    <thead>
                        <tr>
                            <th style="width:18px;">#</th>
                            <th>Status</th>
                            <th>Service Description</th>
                        </tr>
                        
                    </thead>
                
                  </table>
                </div>
                </div>
            
            </div>
        </div>
<?php $__env->stopSection(); ?>



<?php echo $__env->make('user.layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>