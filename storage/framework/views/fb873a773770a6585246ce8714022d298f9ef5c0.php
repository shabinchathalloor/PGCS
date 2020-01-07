<?php $__env->startSection('title', 'Add Department Head'); ?>
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
        <div class="col  m6  s12 offset-m3">
            <div class="card-panel">
                <div class="row">

                <?php if(count($errors)>0): ?>
                <ul>
                    <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
                    <li class="alert alert-danger"><?php echo e($error); ?></li>

                     <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
                </ul>

                <?php endif; ?>
                    <form id="add"  method="post"  action="<?php echo e(route('administrator::department.store')); ?>">
                        <?php echo e(csrf_field()); ?>

                         <div class="row">
                            <div class="input-field col s12 ">
                                <label for="name">Name</label>
                                <input id="name" name="name" type="text"  data-error=".location">
                            </div>
                            </div>
                            <div class="row">
                            <div class="input-field col s12 ">
                                <label for="username">UserName</label>
                                <input id="username" name="username" type="text"  data-error=".location">
                            </div>
                            </div>
                            <div class="row">
                                <div class="col s12">
                                <label for="gender">Gender</label>
                                    <select style="width:100%" name="gender">
                                        <option selected disabled>select</option>
                                        <option>male</option>
                                        <option>female</option>
                                    </select>
                                </div>
                            </div>
                             <div class="row">
                            <div class=" col s12 ">
                                <label for="dept">Department</label>
                                 <select style="width:100%" name="sdepartment">
                                        <option selected disabled>select</option>
                                        <option value="1">KSEB</option>
                                        <option value="2">BSNL</option>
                                        <option value="3">GAS</option>
                                         <option value="4">KWA</option>
                                    </select>
                            </div>
                            </div>
                             <div class="row">
                             <div class=" col s12 ">
                                <label for="district">District</label>
                                <select style="width:100%" name="district">
                                        <option selected disabled>select</option>
                                        <option>Thiruvananthapuram</option>
                                        <option>Kollam</option>
                                        <option>Pathanamthitta</option>
                                        <option>Alappuzha</option>
                                        <option>Kottayam</option>
                                        <option>Idukki </option>
                                        <option>Ernakulam </option>
                                        <option>Thrissur</option>
                                        <option>Palakkad</option>
                                        <option>Malappuram </option>
                                        <option>Kozhikode</option>
                                        <option>Wayanad</option>
                                        <option>Kannur</option>
                                        <option>Kasargod</option>
                                    </select>
                             </div>
                             </div>
                              <div class="row">
                             <div class="input-field col s12">
                                <label for="address">Address(office)</label>
                                <textarea id="address" name="address" type="text" data-error=".name" class="materialize-textarea"></textarea>
                               
                            </div>
                            </div>
                             <div class="row">
                             <div class="input-field col s12 ">
                                <label for="pincode">Pincode</label>
                                <input id="pincode" name="pincode" type="text" data-error=".name">
                             </div>
                             </div>
                             <div class="row">
                               <div class="input-field col s12">
                                <label for="phone">Phone</label>
                                <input id="phone" name="phone" type="text" data-error=".name">
                            </div>
                            </div>
                          
                             <div class="row">
                               <div class="input-field col s12 ">
                                <label for="email">Email</label>
                                <input id="email" name="email" type="text" data-error=".name">
                               
                            </div>
                            </div>

                       
                       
                        <div class="input-field col s12">
                            <button class="btn waves-effect waves-light right submit" style="background-color: #00bcd4;" type="submit" name="action">submit
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



<?php echo $__env->make('administrator.layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>