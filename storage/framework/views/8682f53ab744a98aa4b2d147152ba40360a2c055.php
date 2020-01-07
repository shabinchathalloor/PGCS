<?php $__env->startSection('content'); ?>

<section  style="background:url(front/assets/img/backgrounds/Newsletter_Write.jpg) no-repeat; background-position:center; background-size:cover;">
  <div class="container" style="padding:100px 15px;"> 
    <div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="r-form-1-bottom">

        <?php if(count($errors)>0): ?>
          <ul>
            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
            <li class="alert alert-danger"><?php echo e($error); ?></li>

            <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
          </ul>
          <?php endif; ?>

          <form role="form" action="<?php echo e(route('front::register_store')); ?>" method="post">
          <?php echo e(csrf_field()); ?>

            <ul class="form-style-1">
              <li>
                <label>Full Name <span class="required">*</span></label>
                <input type="name" name="name" class="field-long" />
              </li>
              <li>
                <label>Adhaar ID <span class="required">*</span></label>
                <input type="adhaar" name="adhaar" class="field-long" />
              </li>

              <li>
                <label>Complaint Type</label>
               
                 <select name="type" class="field-select">
                  <option selected disabled>select</option>
                  <option>Accidents</option>
                  <option>Safety</option>
                  <option>Power Theft</option>
                  <option>Payment</option>
                  <option>Others</option>
                </select>
              </li>
              <li>
                <label>Department</label>
                <select name="department" class="field-select" id="department" onchange="department_fn(value)">
                  <option selected disabled>select</option>
                  <option value="1">KSEB</option>
                  <option value="2">BSNL</option>
                  <option value="3">GAS</option>
                  <option value="4">KWA</option>
                </select>
              </li>
              <div id="kseb" style="display:none">
                <li>
                  <label>Consumer Number <span class="required">*</span></label>
                  <input type="consumer_no" name="consumer_no" class="field-long" />
                </li>
                <li>
                  <label>Consumer Name <span class="required">*</span></label>
                  <input type="consumer_name" name="consumer_name" class="field-long" />
                </li>
              </div>
              <div id="bsnl" style="display:none">
                <li>
                  <label>Account ID/Number <span class="required">*</span></label>
                  <input type="account_id" name="account_id" class="field-long" />
                </li>
                <li>
                  <label>Office-Section<span class="required">*</span></label>
                  <input type="section" name="section" class="field-long" />
                </li>
              </div>
              <div id="gas" style="display:none">
                <li>
                  <label>Catagory</label>
                  <select name="catagory" class="field-select">
                    <option selected disabled>select</option>
                    <option value="domestic">Domestic</option>
                    <option value="commercial">Commercial</option>
                  </select>
                </li>
                <li>
                  <label>Consumer ID<span class="required">*</span></label>
                  <input type="consumer_id" name="consumer_id" class="field-long" />
                </li>
                <li>
                  <label>Retail-Section<span class="required">*</span></label>
                  <input type="retail" name="retail" class="field-long" />
                </li>
              </div>
              <div id="water" style="display:none">
                <li>
                  <label>Connection ID<span class="required">*</span></label>
                  <input type="connection_id" name="connection_id" class="field-long" />
                </li>
                <li>
                  <label>Connection-Area<span class="required">*</span></label>
                  <input type="area" name="area" class="field-long" />
                </li>
              </div>

              <li>
                <label>District</label>
                <select name="district" class="field-select">
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

              </li>
              <li>
                <label>Contact Address <span class="required">*</span></label>
                <textarea name="address" id="address" class="field-long field-textarea"></textarea>
              </li>
              <li>
                <label>Email <span class="required">*</span></label>
                <input type="email" name="email" class="field-long" />
              </li>
              <li>
                <label>Mobile <span class="required">*</span></label>
                <input type="mobile" name="mobile" class="field-long" />
              </li>
              <li>
                <label>Complaint Description <span class="required">*</span></label>
                <textarea name="description" id="description" class="field-long field-textarea"></textarea>
              </li>



              <li>
                <input type="submit" value="Submit" />
              </li>
            </ul>
          </form>


        </div>

      </div> </div> </div>  
    </section>
  

<?php $__env->startSection('scripts'); ?>

    <script>
      function department_fn(data)
      {
        if(data ==1)
        {
          $("#kseb").show();
          $("#bsnl").hide();
          $("#gas").hide();
          $("#water").hide();

        }
        else if(data ==2)
        {
          $("#kseb").hide();
          $("#bsnl").show();
          $("#gas").hide();
          $("#water").hide();
        }
        else if(data == 3)
        {

          $("#kseb").hide();
          $("#bsnl").hide();
          $("#gas").show();
          $("#water").hide();
        }
        else
        {

          $("#kseb").hide();
          $("#bsnl").hide();
          $("#gas").hide();
          $("#water").show();


        } }
      </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('front.layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>