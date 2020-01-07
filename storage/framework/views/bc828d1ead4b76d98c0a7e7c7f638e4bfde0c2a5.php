<!DOCTYPE html>
<html lang="en">
<head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>PGCS -Home Page</title>

        <!-- CSS -->
       
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,700">
        <link rel="stylesheet" href="<?php echo e(URL::asset('front/assets/bootstrap/css/bootstrap.min.css')); ?>">
        <link rel="stylesheet" href="<?php echo e(URL::asset('front/assets/font-awesome/css/font-awesome.min.css')); ?>">
        <link rel="stylesheet" href="<?php echo e(URL::asset('front/assets/css/animate.css')); ?>">
        <link rel="stylesheet" href="<?php echo e(URL::asset('front/assets/css/style.css')); ?>">
        <link rel="stylesheet" href="<?php echo e(URL::asset('front/assets/css/media-queries.css')); ?>">

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body>
        
        <!-- Top menu -->
        <nav class="navbar navbar-inverse" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!--<a class="navbar-brand" href="#">Faby - Bootstrap Landing Page</a> -->
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="top-navbar-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a class="btn" href="<?php echo e(route('front::home')); ?>">HOME</a></li>
                        <li><a class="btn" href="<?php echo e(route('front::signup')); ?>">SIGN-UP</a></li>
                        <li><a class="btn" href="<?php echo e(route('front::payment')); ?>">QUICK PAY</a></li>
                        <li><a class="btn" href="<?php echo e(route('front::about')); ?>">ABOUT</a></li>
                        <li><a class="btn" href="#">CONTACT</a></li>
                    </ul>
                </div>
            </div>
        </nav>
                
        <!-- Top content -->
        <div class="top-content">
              <?php echo $__env->yieldContent('content'); ?>
        </div>

        <!-- Footer -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 footer-about wow fadeInUp">
                        <h3>About Us</h3>
                        <p>
                            We are a young company always looking for new and creative ideas to help you with our products in your everyday work.
                            We offer courses, mobile apps, video presentations, and more.
                        </p>
                        <p>
                            <a class="btn" href="<?php echo e(route('front::about')); ?>">Our Team</a>
                        </p>
                    </div>
                    <div class="col-sm-4 footer-contact-info wow fadeInDown">
                        <h3>Contact Info</h3>
                        <p><i class="fa fa-map-marker"></i> MGUCE muttom,Thodupuzha</p>
                        <p><i class="fa fa-phone"></i> Phone: (+91) 9048 945 234</p>
                        <p><i class="fa fa-envelope"></i> Email: <a href="mailto:contactme.pgcs@gmail.com">contactme.pgcs@gmail.com</a></p>
                        <p><i class="fa fa-skype"></i> Skype:</p>
                    </div>
                    <div class="col-sm-4 footer-social wow fadeInUp">
                        <h3>We're Social</h3>
                        <p>
                            We are also very active in social media, trying to answer all the questions you might have.
                            Check out our accounts:
                        </p>
                        <p>
                            <a href="#"><i class="fa fa-facebook"></i></a> 
                            <a href="#"><i class="fa fa-twitter"></i></a> 
                            <a href="#"><i class="fa fa-google-plus"></i></a> 
                            <a href="#"><i class="fa fa-instagram"></i></a> 
                            
                        </p>
                    </div>
                </div>
               
                </div>
            </div>
        </footer>


        <!-- Javascript -->
        <script src="<?php echo e(URL::asset('front/assets/js/jquery-1.11.1.min.js')); ?>"></script>
        <script src="<?php echo e(URL::asset('front/assets/bootstrap/js/bootstrap.min.js')); ?>"></script>
        <script src="<?php echo e(URL::asset('front/assets/js/jquery.backstretch.min.js')); ?>"></script>
        <script src="<?php echo e(URL::asset('front/assets/js/wow.min.js')); ?>"></script>
        <script src="<?php echo e(URL::asset('front/assets/js/retina-1.1.0.min.js')); ?>"></script>
        <script src="<?php echo e(URL::asset('front/assets/js/scripts.js')); ?>"></script>
        <?php echo $__env->yieldContent('scripts'); ?>
    </body>
</html>