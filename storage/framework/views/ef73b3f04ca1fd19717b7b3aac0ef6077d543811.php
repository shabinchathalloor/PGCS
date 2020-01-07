<?php $__env->startSection('menu'); ?>
        <?php 
        $role = \Auth::user()->role; 
        ?>
         <?php if($role=='DH'): ?>
         
              <li class="bold <?php echo $__env->yieldContent('viewcomplaint'); ?>">
                <a href="<?php echo e(route('admin::complaint.index')); ?>" class="waves-effect waves-cyan">
                  <i class="mdi-action-account-balance"></i>Complaint                  
                </a>
              </li> 

              <li class="bold <?php echo $__env->yieldContent('feedback'); ?>">
                <a href="<?php echo e(route('admin::feedback.index')); ?>" class="waves-effect waves-cyan">
                  <i class="mdi-action-account-balance"></i>Feedbacks                
                </a>
              </li> 
                 
              <li class="bold <?php echo $__env->yieldContent('worker'); ?>">
                <a href="<?php echo e(route('admin::worker.index')); ?>" class="waves-effect waves-cyan">
                  <i class="mdi-action-account-balance"></i>Add new Worker                
                </a>
              </li> 


            <?php else: ?>
            
              
              <li class="bold <?php echo $__env->yieldContent('task'); ?>">
                <a href="<?php echo e(route('admin::task.index')); ?>" class="waves-effect waves-cyan">
                  <i class="mdi-action-account-balance"></i>To do                
                </a>
              </li> 
             
            
             <?php endif; ?>
             
             
<?php $__env->stopSection(); ?>

<?php echo $__env->make('user.layouts.mainapp', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>