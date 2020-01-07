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
                           
                            <th>Consumer_no</th>
                            <th>Consumer_name</th>
                            <th>Account_id</th>
                            <th>Section</th>
                            <th>Catagory</th>
                            <th>Consumer_id</th>
                            <th>Retail</th>
                            <th>Connection_id</th>
                            <th>Area</th>
                         
                        </tr>
                    </thead>
                    <tbody>
                  
                        <tr>
                        
                            <td><?php echo e($complaint_detail->consumer_no); ?></td>
                            <td><?php echo e($complaint_detail->consumer_name); ?></td>
                            <td><?php echo e($complaint_detail->account_id); ?></td>
                            <td><?php echo e($complaint_detail->section); ?></td>
                            <td><?php echo e($complaint_detail->catagory); ?></td>
                            <td><?php echo e($complaint_detail->consumer_id); ?></td>
                            <td><?php echo e($complaint_detail->retail); ?></td>
                            <td><?php echo e($complaint_detail->connection_id); ?></td>
                            <td><?php echo e($complaint_detail->area); ?></td>
                            
                           
                        </tr>
                    
                     </tbody>
                  </table>
                </div>
                </div>
            
            </div>
        </div>

<?php $__env->stopSection(); ?>



<?php echo $__env->make('user.layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>