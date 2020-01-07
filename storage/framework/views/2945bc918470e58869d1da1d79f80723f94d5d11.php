<?php $__env->startSection('title', 'Update Worker'); ?>
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
        <div class="col  m6  s12 offset-m3">
            <div class="card-panel">
                <div class="row">
                    <form id="add"  method="post"  action="<?php echo e(route('admin::worker.update',['worker' =>$worker->id])); ?>">
                        <?php echo e(csrf_field()); ?>

                        <?php echo e(method_field('PUT')); ?>

                         <div class="row">
                            <div class="input-field col s12 ">
                                <label for="name">Name</label>
                                <input id="name" name="name" type="text"  data-error=".location" value="<?php echo e($worker->name); ?>">
                            </div>
                            </div>
                            <div class="row">
                            <div class="input-field col s12 ">
                                <label for="username">UserName</label>
                                <input id="username" name="username" type="text"  data-error=".location" value="<?php echo e($worker->username); ?>">
                            </div>
                            </div>
                            <div class="row">
                                <div class="col s12">
                                <label for="gender">Gender</label>
                                    <select style="width:100%" name="gender">
                                    <?php if($worker->gender=='male'): ?>
                                        
                                        <option value ="male" selected>male</option>
                                        <option value="female">female</option>
                                    <?php else: ?>
                                         <option value ="male">male</option>
                                        <option value="female" selected>female</option>
                                    <?php endif; ?>
                                    </select>
                                </div>
                            </div>
                             <div class="row">
                            <div class=" col s12 ">
                                <label for="department">Department</label>
                                 <select style="width:100%" name="sdepartment">
                                    <?php if($worker->department=='1'): ?>
                                        <option value="1" selected>KSEB</option>
                                         <option value="2">BSNL</option>
                                        <option value="3">GAS</option>
                                         <option value="4">KWA</option>
                                      
                                    <?php elseif($worker->department=='2'): ?>
                                        <option value="1" >KSEB</option>
                                        <option value="2" selected>BSNL</option>
                                        <option value="3">GAS</option>
                                         <option value="4">KWA</option>
                                    <?php elseif($worker->department=='3'): ?>
                                        <option value="1" >KSEB</option>
                                        <option value="2" >BSNL</option>
                                        <option value="3" selected>GAS</option>
                                         <option value="4">KWA</option>
                                    <?php else: ?>
                                         <option value="1" >KSEB</option>
                                        <option value="2" >BSNL</option>
                                        <option value="3">GAS</option>
                                         <option value="4" selected>KWA</option>
                                    <?php endif; ?>


                                    </select>
                            </div>
                            </div>
                             <div class="row">
                             <div class="col s12 ">
                                <label for="district">District</label>
                                <select style="width:100%" name="district">
                                    <?php if($worker->district=='Thiruvananthapuram'): ?>
                                    <option value="Thiruvananthapuram" selected>Thiruvananthapuram</option>
                                        <option value="Kollam">Kollam</option>
                                        <option value="Pathanamthitta">Pathanamthitta</option>
                                        <option value="Alappuzha">Alappuzha</option>
                                        <option value="Kottayam">Kottayam</option>
                                        <option value="Idukki">Idukki</option>
                                        <option value="Ernakulam">Ernakulam</option>
                                        <option value="Thrissur">Thrissur</option>
                                        <option value="Palakkad">Palakkad</option>
                                        <option value="Malappuram">Malappuram</option>
                                        <option value="Kozhikode">Kozhikode</option>
                                        <option value="Wayanad">Wayanad</option>
                                        <option value="Kannur">Kannur</option>
                                        <option value="Kasargod">Kasargod</option>
                                      
                                      
                                    <?php elseif($worker->district=='Kollam'): ?>
                                        <option value="Thiruvananthapuram">Thiruvananthapuram</option>
                                        <option value="Kollam" selected>Kollam</option>
                                        <option value="Pathanamthitta">Pathanamthitta</option>
                                        <option value="Alappuzha">Alappuzha</option>
                                        <option value="Kottayam">Kottayam</option>
                                        <option value="Idukki">Idukki</option>
                                        <option value="Ernakulam">Ernakulam</option>
                                        <option value="Thrissur">Thrissur</option>
                                        <option value="Palakkad">Palakkad</option>
                                        <option value="Malappuram">Malappuram</option>
                                        <option value="Kozhikode">Kozhikode</option>
                                        <option value="Wayanad">Wayanad</option>
                                        <option value="Kannur">Kannur</option>
                                        <option value="Kasargod">Kasargod</option>
                                    <?php elseif($worker->district=='Pathanamthitta'): ?>
                                        <option value="Thiruvananthapuram">Thiruvananthapuram</option>
                                        <option value="Kollam">Kollam</option>
                                        <option value="Pathanamthitta" selected>Pathanamthitta</option>
                                        <option value="Alappuzha">Alappuzha</option>
                                        <option value="Kottayam">Kottayam</option>
                                        <option value="Idukki">Idukki</option>
                                        <option value="Ernakulam">Ernakulam</option>
                                        <option value="Thrissur">Thrissur</option>
                                        <option value="Palakkad">Palakkad</option>
                                        <option value="Malappuram">Malappuram</option>
                                        <option value="Kozhikode">Kozhikode</option>
                                        <option value="Wayanad">Wayanad</option>
                                        <option value="Kannur">Kannur</option>
                                        <option value="Kasargod">Kasargod</option>
                                     <?php elseif($worker->district=='Alappuzha'): ?>
                                        <option value="Thiruvananthapuram">Thiruvananthapuram</option>
                                        <option value="Kollam">Kollam</option>
                                        <option value="Pathanamthitta">Pathanamthitta</option>
                                        <option value="Alappuzha" selected>Alappuzha</option>
                                        <option value="Kottayam">Kottayam</option>
                                        <option value="Idukki">Idukki</option>
                                        <option value="Ernakulam">Ernakulam</option>
                                        <option value="Thrissur">Thrissur</option>
                                        <option value="Palakkad">Palakkad</option>
                                        <option value="Malappuram">Malappuram</option>
                                        <option value="Kozhikode">Kozhikode</option>
                                        <option value="Wayanad">Wayanad</option>
                                        <option value="Kannur">Kannur</option>
                                        <option value="Kasargod">Kasargod</option>
                                    <?php elseif($worker->district=='Kottayam'): ?>
                                        <option value="Thiruvananthapuram">Thiruvananthapuram</option>
                                        <option value="Kollam">Kollam</option>
                                        <option value="Pathanamthitta">Pathanamthitta</option>
                                        <option value="Alappuzha">Alappuzha</option>
                                        <option value="Kottayam" selected>Kottayam</option>
                                        <option value="Idukki">Idukki</option>
                                        <option value="Ernakulam">Ernakulam</option>
                                        <option value="Thrissur">Thrissur</option>
                                        <option value="Palakkad">Palakkad</option>
                                        <option value="Malappuram">Malappuram</option>
                                        <option value="Kozhikode">Kozhikode</option>
                                        <option value="Wayanad">Wayanad</option>
                                        <option value="Kannur">Kannur</option>
                                        <option value="Kasargod">Kasargod</option>
                                    <?php elseif($worker->district=='Idukki'): ?>
                                        <option value="Thiruvananthapuram">Thiruvananthapuram</option>
                                        <option value="Kollam">Kollam</option>
                                        <option value="Pathanamthitta">Pathanamthitta</option>
                                        <option value="Alappuzha">Alappuzha</option>
                                        <option value="Kottayam">Kottayam</option>
                                        <option value="Idukki" selected>Idukki</option>
                                        <option value="Ernakulam">Ernakulam</option>
                                        <option value="Thrissur">Thrissur</option>
                                        <option value="Palakkad">Palakkad</option>
                                        <option value="Malappuram">Malappuram</option>
                                        <option value="Kozhikode">Kozhikode</option>
                                        <option value="Wayanad">Wayanad</option>
                                        <option value="Kannur">Kannur</option>
                                        <option value="Kasargod">Kasargod</option>
                                     <?php elseif($worker->district=='Ernakulam'): ?>
                                        <option value="Thiruvananthapuram">Thiruvananthapuram</option>
                                        <option value="Kollam">Kollam</option>
                                        <option value="Pathanamthitta">Pathanamthitta</option>
                                        <option value="Alappuzha">Alappuzha</option>
                                        <option value="Kottayam">Kottayam</option>
                                        <option value="Idukki">Idukki</option>
                                        <option value="Ernakulam" selected>Ernakulam</option>
                                        <option value="Thrissur">Thrissur</option>
                                        <option value="Palakkad">Palakkad</option>
                                        <option value="Malappuram">Malappuram</option>
                                        <option value="Kozhikode">Kozhikode</option>
                                        <option value="Wayanad">Wayanad</option>
                                        <option value="Kannur">Kannur</option>
                                        <option value="Kasargod">Kasargod</option>

                                      
                                      
                                    <?php elseif($worker->district=='Thrissur'): ?>
                                        <option value="Thiruvananthapuram">Thiruvananthapuram</option>
                                        <option value="Kollam">Kollam</option>
                                        <option value="Pathanamthitta">Pathanamthitta</option>
                                        <option value="Alappuzha">Alappuzha</option>
                                        <option value="Kottayam">Kottayam</option>
                                        <option value="Idukki">Idukki</option>
                                        <option value="Ernakulam">Ernakulam</option>
                                        <option value="Thrissur" selected>Thrissur</option>
                                        <option value="Palakkad">Palakkad</option>
                                        <option value="Malappuram">Malappuram</option>
                                        <option value="Kozhikode">Kozhikode</option>
                                        <option value="Wayanad">Wayanad</option>
                                        <option value="Kannur">Kannur</option>
                                        <option value="Kasargod">Kasargod</option>
                                    <?php elseif($worker->district=='Palakkad'): ?>
                                        <option value="Thiruvananthapuram">Thiruvananthapuram</option>
                                        <option value="Kollam">Kollam</option>
                                        <option value="Pathanamthitta">Pathanamthitta</option>
                                        <option value="Alappuzha">Alappuzha</option>
                                        <option value="Kottayam">Kottayam</option>
                                        <option value="Idukki">Idukki</option>
                                        <option value="Ernakulam">Ernakulam</option>
                                        <option value="Thrissur">Thrissur</option>
                                        <option value="Palakkad" selected>Palakkad</option>
                                        <option value="Malappuram">Malappuram</option>
                                        <option value="Kozhikode">Kozhikode</option>
                                        <option value="Wayanad">Wayanad</option>
                                        <option value="Kannur">Kannur</option>
                                        <option value="Kasargod">Kasargod</option>
                                     <?php elseif($worker->district=='Malappuram'): ?>
                                        <option value="Thiruvananthapuram">Thiruvananthapuram</option>
                                        <option value="Kollam">Kollam</option>
                                        <option value="Pathanamthitta">Pathanamthitta</option>
                                        <option value="Alappuzha">Alappuzha</option>
                                        <option value="Kottayam">Kottayam</option>
                                        <option value="Idukki">Idukki</option>
                                        <option value="Ernakulam">Ernakulam</option>
                                        <option value="Thrissur">Thrissur</option>
                                        <option value="Palakkad">Palakkad</option>
                                        <option value="Malappuram" selected>Malappuram</option>
                                        <option value="Kozhikode">Kozhikode</option>
                                        <option value="Wayanad">Wayanad</option>
                                        <option value="Kannur">Kannur</option>
                                        <option value="Kasargod">Kasargod</option>
                                    <?php elseif($worker->district=='Kozhikode'): ?>
                                        <option value="Thiruvananthapuram">Thiruvananthapuram</option>
                                        <option value="Kollam">Kollam</option>
                                        <option value="Pathanamthitta">Pathanamthitta</option>
                                        <option value="Alappuzha">Alappuzha</option>
                                        <option value="Kottayam">Kottayam</option>
                                        <option value="Idukki">Idukki</option>
                                        <option value="Ernakulam">Ernakulam</option>
                                        <option value="Thrissur">Thrissur</option>
                                        <option value="Palakkad">Palakkad</option>
                                        <option value="Malappuram">Malappuram</option>
                                        <option value="Kozhikode" selected>Kozhikode</option>
                                        <option value="Wayanad">Wayanad</option>
                                        <option value="Kannur">Kannur</option>
                                        <option value="Kasargod">Kasargod</option>
                                    <?php elseif($worker->district=='Wayanad'): ?>
                                        <option value="Thiruvananthapuram">Thiruvananthapuram</option>
                                        <option value="Kollam">Kollam</option>
                                        <option value="Pathanamthitta">Pathanamthitta</option>
                                        <option value="Alappuzha">Alappuzha</option>
                                        <option value="Kottayam">Kottayam</option>
                                        <option value="Idukki">Idukki</option>
                                        <option value="Ernakulam">Ernakulam</option>
                                        <option value="Thrissur">Thrissur</option>
                                        <option value="Palakkad">Palakkad</option>
                                        <option value="Malappuram">Malappuram</option>
                                        <option value="Kozhikode">Kozhikode</option>
                                        <option value="Wayanad" selected>Wayanad</option>
                                        <option value="Kannur">Kannur</option>
                                        <option value="Kasargod">Kasargod</option>
                                     <?php elseif($worker->district=='Kannur'): ?>
                                        <option value="Thiruvananthapuram">Thiruvananthapuram</option>
                                        <option value="Kollam">Kollam</option>
                                        <option value="Pathanamthitta">Pathanamthitta</option>
                                        <option value="Alappuzha">Alappuzha</option>
                                        <option value="Kottayam">Kottayam</option>
                                        <option value="Idukki">Idukki</option>
                                        <option value="Ernakulam">Ernakulam</option>
                                        <option value="Thrissur">Thrissur</option>
                                        <option value="Palakkad">Palakkad</option>
                                        <option value="Malappuram">Malappuram</option>
                                        <option value="Kozhikode">Kozhikode</option>
                                        <option value="Wayanad">Wayanad</option>
                                        <option value="Kannur" selected>Kannur</option>
                                        <option value="Kasargod">Kasargod</option>
                                    <?php else: ?>
                                        <option value="Thiruvananthapuram">Thiruvananthapuram</option>
                                        <option value="Kollam">Kollam</option>
                                        <option value="Pathanamthitta">Pathanamthitta</option>
                                        <option value="Alappuzha">Alappuzha</option>
                                        <option value="Kottayam">Kottayam</option>
                                        <option value="Idukki">Idukki</option>
                                        <option value="Ernakulam">Ernakulam</option>
                                        <option value="Thrissur">Thrissur</option>
                                        <option value="Palakkad">Palakkad</option>
                                        <option value="Malappuram">Malappuram</option>
                                        <option value="Kozhikode">Kozhikode</option>
                                        <option value="Wayanad">Wayanad</option>
                                        <option value="Kannur">Kannur</option>
                                        <option value="Kasargod" selected>Kasargod</option>
                                    <?php endif; ?>
                             </div>
                             </div>
                              <div class="row">
                             <div class="input-field col s12">
                                <label for="designation">Designation</label>
                                 <input id="designation" name="designation" type="text" data-error=".name" value="<?php echo e($worker->designation); ?>">
                                
                               
                           
                             <div class="row">
                               <div class="input-field col s12">
                                <label for="phone">Phone</label>
                                <input id="phone" name="phone" type="text" data-error=".name" value="<?php echo e($worker->phone); ?>">
                            </div>
                            </div>
                          
                             <div class="row">
                               <div class="input-field col s12 ">
                                <label for="email">Email</label>
                                <input id="email" name="email" type="text" data-error=".name" value="<?php echo e($worker->email); ?>">
                               
                            </div>
                            </div>

                       
                       
                        <div class="input-field col s12">
                            <button class="btn waves-effect waves-light right submit green"  type="submit" name="action">Update
                                <i class="mdi-content-send right"></i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>



<?php echo $__env->make('user.layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>