<?php $__env->startSection('Feedback', 'active'); ?>

<?php $__env->startSection('content'); ?>

   <div id="breadcrumbs-wrapper">
    <div class="container">
        <div class="row">
            <div class="col s12 m12 l12">
                <h5 class="breadcrumbs-title col s5" style="margin:.82rem 0 .656rem">Feedbacks</h5>
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
                            <th>Phone</th>
                            <th>Feedback</th>
                            <th>actions</th>
                        </tr>
                    </thead>
                    <tbody>
                  <?php $__currentLoopData = $feedbacks; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $feedback): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
                        <tr>
                            <td><?php echo e($index+1); ?></td>
                            <td><?php echo e($feedback->name); ?></td>
                            <td><?php echo e($feedback->adhaar); ?></td>
                            <td><?php echo e($feedback->phone); ?></td>
                            <td><?php echo e($feedback->feedback); ?></td>
                            <td>
                                 
                                 
                                  <a class="btn-floating btn-action waves-effect waves-light red tooltipped frmsubmit" href="<?php echo e(route('admin::feedback.destroy',['feedback'=>$feedback->id])); ?>" data-position=top data-tooltip="<?php echo e(trans('messages.delete')); ?>" method="DELETE"><i class="mdi-action-delete"></i></a>
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