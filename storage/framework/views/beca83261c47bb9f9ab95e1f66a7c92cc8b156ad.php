<?php $__env->startSection('title', trans_choice('messages.locations',2)); ?>
<?php $__env->startSection('view Complaint', 'active'); ?>

<?php $__env->startSection('content'); ?>

   <div id="breadcrumbs-wrapper">
    <div class="container">
        <div class="row">
            <div class="col s12 m12 l12">
                <h5 class="breadcrumbs-title col s5" style="margin:.82rem 0 .656rem">Allot Worker</h5>
                <ol class="breadcrumbs col s7 right-align">
                    <li><a href=""><?php echo $__env->yieldContent('title'); ?></a></li>
                </ol>
            </div>
        </div>
    </div>
</div>
    
    <div class="container">
        <div class="row">
        <div class="col s12">
        <div class="card-panel">
           <form role="form" action="<?php echo e(route('admin::allote')); ?>" method="post">
           <?php echo e(csrf_field()); ?>

               <div class="row">
                <div class="col s8 offset-s4">
                <input type="hidden" name="complaint_id" value="<?php echo e($complaint->id); ?>">
                  <div class="input-field col m4 l4 s12" style="padding:0px;">
                    <select name="worker">
                      <option value="" disabled selected>Choose your option</option>
                      <?php $__currentLoopData = $workers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $worker): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
                      <?php if($task): ?>
                      <?php if($worker->id==$task->worker_id): ?>
                      <option selected value="<?php echo e($worker->id); ?>"><?php echo e($worker->name); ?></option>
                      <?php else: ?>
                        <option  value="<?php echo e($worker->id); ?>"><?php echo e($worker->name); ?></option>
                      <?php endif; ?>
                      <?php else: ?>
                      <option  value="<?php echo e($worker->id); ?>"><?php echo e($worker->name); ?></option>
                      <?php endif; ?>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
                    </select>
                  </div>
                </div>
                <div class="col s8 offset-s4">
                <button type="submit" class="btn">Allote</button>
                </div>
              </div>
                 </form> 
                </div>
                </div>
            
            </div>
        </div>
     

<?php $__env->stopSection(); ?>



<?php echo $__env->make('user.layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>