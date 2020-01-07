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
           
               <div class="row">
                   <div class="col m12">
                       <div class="card-panel" style="min-height:180px;">
                       Complaint Details....
                       </div>
                   </div>
               </div>

               <div class="row">
                <div class="col m12">
                  <div class="input-field col m4 l4 s12" style="padding:0px;">
                    <select>
                      <option value="" disabled >Choose your option</option>
                      <option value="1">electric</option>
                      <option value="2" selected>Option 2</option>
                      <option value="3">Option 3</option>
                      <option value="4">Option 4</option>
                      <option value="5">Option 5</option>
                      <option value="6">Option 6</option>
                      <option value="7">biller</option>
                      <option value="8">Option 8</option>
                      <option value="9">Option 9</option>
                    </select>
                  </div>
                </div>
                <div class="col m12">
                <a href="" class="waves-effect waves-light btn" style="margin-top:10px;">Alloted</a>
                </div>
              </div>
                  
                </div>
                </div>
            
            </div>
        </div>
     
<script>


    
        
</script>
<?php $__env->stopSection(); ?>



<?php echo $__env->make('user.layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>