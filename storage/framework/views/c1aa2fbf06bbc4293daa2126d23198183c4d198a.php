<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="msapplication-tap-highlight" content="no">
    <meta name="description" content="Materialize is a Material Design Admin Template,It's modern, responsive and based on Material Design by Google. ">
    <meta name="keywords" content="materialize, admin template, dashboard template, flat admin template, responsive admin template,">
     <title><?php echo $__env->yieldContent('title'); ?> | Administration | PGCS </title>

    <!-- Favicons-->
    <link rel="icon" href="<?php echo e(URL::asset('images/favicon/favicon-32x32.png')); ?>" sizes="32x32">
    <!-- Favicons-->
    <link rel="apple-touch-icon-precomposed" href="<?php echo e(URL::asset('images/favicon/apple-touch-icon-152x152.png')); ?>">
    <!-- For iPhone -->
    <meta name="msapplication-TileColor" content="#00bcd4">
    <meta name="msapplication-TileImage" content="<?php echo e(URL::asset('images/favicon/mstile-144x144.png')); ?>">
    <!-- For Windows Phone -->


    <!-- CORE CSS-->   
   
    <link href="<?php echo e(URL::asset('css/materialize.min.css')); ?>" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="<?php echo e(URL::asset('css/style.min.css')); ?>" type="text/css" rel="stylesheet" media="screen,projection">
    <!-- Custome CSS-->    
    <link href="<?php echo e(URL::asset('css/custom/custom.min.css')); ?>" type="text/css" rel="stylesheet" media="screen,projection">
    
    <!-- INCLUDED PLUGIN CSS ON THIS PAGE -->
     <link href="<?php echo e(URL::asset('js/plugins/dropify/css/dropify.min.css')); ?>" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="<?php echo e(URL::asset('js/plugins/perfect-scrollbar/perfect-scrollbar.css')); ?>" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="<?php echo e(URL::asset('js/plugins/jvectormap/jquery-jvectormap.css')); ?>" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="<?php echo e(URL::asset('js/plugins/chartist-js/chartist.min.css')); ?>" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="<?php echo e(URL::asset('js/plugins/data-tables/css/jquery.dataTables.min.css')); ?>" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="<?php echo e(URL::asset('js/plugins/fullcalendar/css/fullcalendar.min.css')); ?>" type="text/css" rel="stylesheet" media="screen,projection">
    <?php echo $__env->yieldContent('css'); ?>
</head>
<body>
    <!-- Start Page Loading -->
    <div id="loader-wrapper">
        <div id="loader"></div>        
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
    </div>
    <!-- End Page Loading -->

    <!-- //////////////////////////////////////////////////////////////////////////// -->

    <!-- START HEADER -->
    <header id="header" class="page-topbar">
        <!-- start header nav-->
        <div class="navbar-fixed">
            <nav class="navbar-color">
                <div class="nav-wrapper">
                    <ul class="left">                      
                      <li><h1 class="logo-wrapper"><a href="index.html" class="brand-logo darken-1"><img src="<?php echo e(URL::asset('images/materialize-logo.png')); ?>" alt="materialize logo"></a> <span class="logo-text">Materialize</span></h1></li>
                    </ul>
                    <ul class="right hide-on-med-and-down">
                        
                        <li><a href="javascript:void(0);" class="waves-effect waves-block waves-light toggle-fullscreen"><i class="mdi-action-settings-overscan"></i></a>
                        </li>
                       
                        
                        </a><ul id="notifications-dropdown" class="dropdown-content" style="white-space: nowrap; position: absolute; top: 64px; left: 1129px; opacity: 1; display: none;">
                      

                     
                     <ul class="right hide-on-med-and-down">
                         <span class="truncate" style="margin-right:0px;font-size:19px"><span>
                     </ul>
                    
                </div>
            </nav>
        </div>
        <!-- end header nav-->

    </header>
    <!-- END HEADER -->

    <!-- //////////////////////////////////////////////////////////////////////////// -->

    <!-- START MAIN -->
    <div id="main" >
        <!-- START WRAPPER -->
        <div class="wrapper">

            <!-- START LEFT SIDEBAR NAV-->
             <aside id="left-sidebar-nav">
                <ul id="slide-out" class="side-nav fixed leftside-navigation">
                 
                <li class="user-details cyan darken-2">
                <div class="row">
                    <div class="col col s4 m4 l4">
                        <img src="<?php echo e(URL::asset('images/avatar.jpg')); ?>" alt="" class="circle responsive-img valign profile-image">
                    </div>
                    <div class="col col s8 m8 l8">
                        <ul id="profile-dropdown" class="dropdown-content">
                            <li><a href="#"><i class="mdi-action-face-unlock"></i> <?php echo e(trans('messages.profile')); ?></a>
                            </li>
                            <li>
                              <a href="<?php echo e(route('administrator::logout')); ?>" method="get"  ><i class="mdi-hardware-keyboard-tab"></i> <?php echo e(trans('messages.logout')); ?></a>
                            </li>
                        </ul>

                        <a class="btn-flat dropdown-button waves-effect waves-light white-text profile-btn" href="#" data-activates="profile-dropdown"><i class="mdi-navigation-arrow-drop-down right"></i></a>
                           
                    </div>
                </div>
                </li>
                
                 <?php echo $__env->yieldContent('menu'); ?>
                    
            </ul>
            
                <a href="#" data-activates="slide-out" class="sidebar-collapse btn-floating btn-medium waves-effect waves-light hide-on-large-only cyan"><i class="mdi-navigation-menu"></i></a>
            </aside>
            <!-- END LEFT SIDEBAR NAV -->

            <!-- //////////////////////////////////////////////////////////////////////////// -->

            <!-- START CONTENT -->
            <section id="content" class="content-wrapper" style="min-height:680px;">
               
                    <?php echo $__env->yieldContent('content'); ?>
              
               
            </section>
            <!-- END CONTENT -->

            
            <!-- LEFT RIGHT SIDEBAR NAV-->

        </div>
        <!-- END WRAPPER -->

    </div>
    <!-- END MAIN -->
    <!-- START FOOTER -->
    <footer class="page-footer">
        
        <div class="footer-copyright">
            <div class="container">
            <span class="right" >Powered by <a href="http://www.justlabtech.com" target="_blank" style="color:aliceblue;">PGCS Technologies</a>.</span>
                
            </div>
        </div>
    </footer>
    <!-- END FOOTER -->





  

    
    <!-- ================================================
    Scripts
    ================================================ -->
   
    <!-- jQuery Library -->
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/jquery-1.11.2.min.js')); ?>"></script>    
    <!--materialize js-->
    <script type="text/javascript" src="<?php echo e(URL::asset('js/materialize.min.js')); ?>"></script>
    <!--scrollbar-->
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/perfect-scrollbar/perfect-scrollbar.min.js')); ?>"></script>
    

   
    <!-- chartjs -->
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/chartjs/chart.min.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/chartjs/chart-script.js')); ?>"></script>

    <!-- sparkline -->
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/sparkline/jquery.sparkline.min.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/sparkline/sparkline-script.js')); ?>"></script>
    
  

    <!--jvectormap-->
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/jvectormap/vectormap-script.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/data-tables/js/jquery.dataTables.min.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/jquery-validation/jquery.validate.min.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/jquery-validation/additional-methods.min.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(URL::asset('js/materialize-plugins/date_picker/picker.date.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(URL::asset('js/materialize-plugins/date_picker/picker.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/formatter/jquery.formatter.min.js')); ?>"></script> 
     <!-- dropify -->
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/dropify/js/dropify.min.js')); ?>"></script>
    <!--  <script type="text/javascript" src="<?php echo e(asset('js/select2.min.js')); ?>"></script> -->
     <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/fullcalendar/lib/jquery-ui.custom.min.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/fullcalendar/lib/moment.min.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/fullcalendar/js/fullcalendar.min.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins/fullcalendar/fullcalendar-script.js')); ?>"></script>



    <!--plugins.js - Some Specific JS codes for Plugin Settings-->
    <script type="text/javascript" src="<?php echo e(URL::asset('js/select2.min.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(URL::asset('js/plugins.js')); ?>"></script>
    <!--custom-script.js - Add your own theme custom JS-->
    <script type="text/javascript" src="<?php echo e(URL::asset('js/custom-script.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(URL::asset('js/colorpicker.min.js')); ?>"></script>
    
    <!-- Toast Notification -->
       <?php echo $__env->yieldContent('script'); ?>

       <script>
       $(function() {
                $('#main').css({'min-height': $(window).height()-134+'px'});
                $(window).resize(function() {
                    $('#main').css({'min-height': $(window).height()-134+'px'});
                });
                $('#translation-dropdown').perfectScrollbar();
                $('select').each(function() {
                    if(!$(this).parent().hasClass('picker__header')) {
                        $(this).select2();
                    }
                });
            });
        $(".frmsubmit").on("click",function(e) {
                var message = '';
                if(e.currentTarget.attributes.message!=undefined) {
                    message = e.currentTarget.attributes.message.value;
                } else {
                    message = 'Are you sure you want to delete?';
                }
                if (confirm(message)) {
                    e.preventDefault();
                    var myForm = '<form id="hidfrm" action="'+e.currentTarget.attributes.href.value+'" method="post"><input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>"><input type="hidden" name="_method" value="'+e.currentTarget.attributes.method.value+'"></form>';
                    $('body').append(myForm);
                    myForm = $('#hidfrm');
                    myForm.submit();
                }
                return false;
            });
            $(document).ajaxStart(function() {
                    $("body").removeClass('loaded');
                   // Pace.restart();
                });
                $(document).ajaxStop(function() {
                    $("body").addClass('loaded');
                });
          
         
        </script>
     <?php echo $__env->make('common.messages', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
</body>
</html>



