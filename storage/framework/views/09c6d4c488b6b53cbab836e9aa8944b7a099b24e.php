<?php $__env->startSection('title', trans_choice('messages.locations',2)); ?>
<?php $__env->startSection('view Status', 'active'); ?>

<?php $__env->startSection('content'); ?>

   <div id="breadcrumbs-wrapper">
    <div class="container">
        <div class="row">
            <div class="col s12 m12 l12">
                <h5 class="breadcrumbs-title col s5" style="margin:.82rem 0 .656rem">Update Status</h5>
                <ol class="breadcrumbs col s7 right-align">
                    <li><a href=""><?php echo $__env->yieldContent('title'); ?></a></li>
                </ol>
            </div>
        </div>
    </div>
</div>
  
    <div class="container">
        <div class="row">
        <div class="col  m7  s10 offset-m1">
        <div class="card-panel">
           <form role="form" action="<?php echo e(route('admin::status')); ?>" method="post">
           <?php echo e(csrf_field()); ?>

               <div class="row">
                <div class="col  m8  s12 offset-m3">
                <input type="hidden" name="user_id" value="1">
                 <input type="hidden" name="complaint_id" value="2">
                <div class="input-field col m12 l6 s12" style="padding:0px;">
                    <select name="status">
                      <option disabled selected>Choose your option</option>
                       <option>On Hold</option>
                       <option>In Progress</option>
                       <option>Solved</option>
                       <option>Awaiting Customer Payment</option>
                    </select>
                  </div>
                    <div class="row">
                             <div class="input-field col s12 m8">
                                <label for="service">Service Description</label>
                                <textarea id="service" name="service" type="text" data-error=".name" class="materialize-textarea"></textarea>
                            </div>
                            </div>
                </div>
                <div class="col s8 offset-s4">
                <button type="submit" class="btn">Update</button>
                </div>
              </div>
                 </form> 
                </div>
                </div>
            
            </div>
        </div>
     

<?php $__env->stopSection(); ?>



<?php echo $__env->make('user.layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>