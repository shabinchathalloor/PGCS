<?php $__env->startSection('menu'); ?>
    

              <li class="bold <?php echo $__env->yieldContent('department'); ?>">
                <a href="<?php echo e(route('administrator::department.index')); ?>" class="waves-effect waves-cyan">
                  <i class="mdi-action-account-balance"></i> Department Head                  
                </a>
              </li> 


               

               <li class="bold <?php echo $__env->yieldContent('worker'); ?>">
                <a href="<?php echo e(route('administrator::worker.index')); ?>" class="waves-effect waves-cyan">
                  <i class="mdi-action-account-balance"></i> Worker                
                </a>
              </li> 
             
    
             
             
             
<?php $__env->stopSection(); ?>

<?php echo $__env->make('administrator.layouts.mainapp', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>