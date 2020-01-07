<?php $__env->startSection('title', trans_choice('messages.locations',2)); ?>
<?php $__env->startSection('view Complaint', 'active'); ?>

<?php $__env->startSection('content'); ?>

   <div id="breadcrumbs-wrapper">
    <div class="container">
        <div class="row">
            <div class="col s12 m12 l12">
                <h5 class="breadcrumbs-title col s5" style="margin:.82rem 0 .656rem">Complaint Details</h5>
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
           
                  <div class="divider" style="margin:15px 0 10px 0"></div>
                  <table id="data-table-simple" class="display dataTable no-footer" cellspacing="0">
                    <thead>
                        <tr>
                            <th style="width:18px;">#</th>
                            <th>Name</th>
                            <th>Adhaar</th>
                            <th>District</th>
                            <th>Address</th>
                            <th>Mobile</th>
                            <th>Complaint</th>
                            <th>actions</th>
                        </tr>
                    </thead>
                    <tbody>
                  <?php $__currentLoopData = $complaints; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $complaint): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
                        <tr>
                            <td><?php echo e($index+1); ?></td>
                            <td><?php echo e($complaint->name); ?></td>
                            <td><?php echo e($complaint->adhaar); ?></td>
                            <td><?php echo e($complaint->district); ?></td>
                            <td><?php echo e($complaint->address); ?></td>
                            <td><?php echo e($complaint->mobile); ?></td>
                            <td><?php echo e($complaint->description); ?></td>
                            <td>
                                 
                                  <a class="btn-floating btn-action waves-effect waves-light blue tooltipped" href="<?php echo e(route('admin::complaint.show',['complaints' =>$complaint->id])); ?>" data-position=top data-tooltip="Details"><i class="mdi-action-visibility"></i></a>
                                   <a class="btn-floating btn-action waves-effect waves-light orange tooltipped" href="<?php echo e(route('admin::complaint.edit')); ?>" data-position=top data-tooltip="Allot worker"><i class="mdi-action-assignment-ind"></i></a>
                                  <a class="btn-floating btn-action waves-effect waves-light red tooltipped frmsubmit" href="#" data-position=top data-tooltip="<?php echo e(trans('messages.delete')); ?>" method="DELETE"><i class="mdi-action-delete"></i></a>
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



<?php echo $__env->make('user.layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>