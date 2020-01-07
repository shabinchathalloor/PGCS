<?php $__env->startSection('title', trans_choice('messages.locations',2)); ?>
<?php $__env->startSection('worker', 'active'); ?>

<?php $__env->startSection('content'); ?>

   <div id="breadcrumbs-wrapper">
    <div class="container">
        <div class="row">
            <div class="col s12 m12 l12">
                <h5 class="breadcrumbs-title col s5" style="margin:.82rem 0 .656rem"><?php echo $__env->yieldContent('title'); ?></h5>
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
            <a class="btn-floating waves-effect waves-light green tooltipped" href="<?php echo e(route('administrator::worker.create')); ?>" data-tooltip="Add New worker "><i class="mdi-content-add left"></i></a>
          
                  <div class="divider" style="margin:15px 0 10px 0"></div>
                  <table id="data-table-simple" class="display dataTable no-footer" cellspacing="0">
                    <thead>
                        <tr>
                            <th style="width:18px;">#</th>
                            <th>Name</th>
                            <th>Usename</th>
                            <th>Gender</th>
                            <th>Department</th>
                            <th>District</th>
                            <th>Designation</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>actions</th>
                        </tr>
                    </thead>
                    <tbody>
                  <?php $__currentLoopData = $workers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $worker): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
                        <tr>
                            <td><?php echo e($index+1); ?></td>
                            <td><?php echo e($worker->name); ?></td>
                            <td><?php echo e($worker->username); ?></td>
                            <td><?php echo e($worker->gender); ?></td>
                            <td><?php echo e($worker->department); ?></td>
                            <td><?php echo e($worker->district); ?></td>
                            <td><?php echo e($worker->designation); ?></td>
                            <td><?php echo e($worker->phone); ?></td>
                            <td><?php echo e($worker->email); ?></td>
                            <td>
                                 
                                  <a class="btn-floating btn-action waves-effect waves-light orange tooltipped" href="<?php echo e(route('administrator::worker.edit',['worker' =>$worker->id])); ?>" data-position=top data-tooltip="Edit"><i class="mdi-editor-mode-edit"></i></a>
                                  <a class="btn-floating btn-action waves-effect waves-light red tooltipped frmsubmit" href="<?php echo e(route('administrator::worker.destroy',['worker'=>$worker->id])); ?>" data-position=top data-tooltip="<?php echo e(trans('messages.delete')); ?>" method="DELETE"><i class="mdi-action-delete"></i></a>
                            </td>
                            
                           
                        </tr>
                     <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
                     </tbody>
                  </table>
                </div>
                </div>
            
            </div>
        </div>
     
<script>


    
        
</script>
<?php $__env->stopSection(); ?>



<?php echo $__env->make('administrator.layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>