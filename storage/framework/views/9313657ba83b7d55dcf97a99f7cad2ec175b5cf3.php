<?php $__env->startSection('title', trans_choice('messages.locations',2)); ?>
<?php $__env->startSection('department', 'active'); ?>

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
            <a class="btn-floating waves-effect waves-light green tooltipped" href="<?php echo e(route('administrator::department.create')); ?>" data-tooltip="Add New Department Head"><i class="mdi-content-add left"></i></a>
          
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
                            <th>Address</th>
                            <th>Pincode</th>
                            <th>phone</th>
                            <th>Email</th>
                            <th>actions</th>
                        </tr>
                    </thead>
                    <tbody>
                  <?php $__currentLoopData = $departments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $department): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
                        <tr>
                            <td><?php echo e($index+1); ?></td>
                            <td><?php echo e($department->name); ?></td>
                            <td><?php echo e($department->username); ?></td>
                            <td><?php echo e($department->gender); ?></td>
                            <td><?php echo e($department->dept); ?></td>
                            <td><?php echo e($department->district); ?></td>
                            <td><?php echo e($department->address); ?></td>
                            <td><?php echo e($department->pincode); ?></td>
                            <td><?php echo e($department->phone); ?></td>
                            <td><?php echo e($department->email); ?></td>
                            <td>
                                 
                                  <a class="btn-floating btn-action waves-effect waves-light orange tooltipped" href="<?php echo e(route('administrator::department.edit',['department' =>$department->id])); ?>" data-position=top data-tooltip="Edit"><i class="mdi-editor-mode-edit"></i></a>
                                  <a class="btn-floating btn-action waves-effect waves-light red tooltipped frmsubmit" href="<?php echo e(route('administrator::department.destroy',['department'=>$department->id])); ?>" data-position=top data-tooltip="<?php echo e(trans('messages.delete')); ?>" method="DELETE"><i class="mdi-action-delete"></i></a>
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