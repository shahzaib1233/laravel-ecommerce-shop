<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Laravel Shop :: Administrative Panel</title>
		<!-- Google Font: Source Sans Pro -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="<?php echo e(url('adminassets/plugins/fontawesome-free/css/all.min.css')); ?>">
		
		<link rel="stylesheet" href="<?php echo e(url('adminassets\plugins\dropzone\min\dropzone.min.css')); ?>">
		<!-- Theme style -->
		<link rel="stylesheet" href="<?php echo e(url('adminassets/css/adminlte.min.css')); ?>">
		<link rel="stylesheet" href="<?php echo e(url('adminassets/css/custom.css')); ?>">
		<meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
	</head>
	<body class="hold-transition sidebar-mini">
		<!-- Site wrapper -->
		<div class="wrapper">
			<!-- Navbar -->
			<nav class="main-header navbar navbar-expand navbar-white navbar-light">
				<!-- Right navbar links -->
				<ul class="navbar-nav">
					<li class="nav-item">
					  	<a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
					</li>					
				</ul>
				<div class="navbar-nav pl-2">
					<!-- <ol class="breadcrumb p-0 m-0 bg-white">
						<li class="breadcrumb-item active">Dashboard</li>
					</ol> -->
				</div>
				
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link" data-widget="fullscreen" href="#" role="button">
							<i class="fas fa-expand-arrows-alt"></i>
						</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link p-0 pr-3" data-toggle="dropdown" href="#">
							<img src="<?php echo e(url('adminassets/img/avatar5.png')); ?>" class='img-circle elevation-2' width="40" height="40" alt="">
						</a>
						<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right p-3">
							<h4 class="h4 mb-0"><strong><?php echo e(Auth::guard('admin')->user()->name); ?></strong></h4>
							<div class="mb-3"><?php echo e(Auth::guard('admin')->user()->email); ?></div>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item">
								<i class="fas fa-user-cog mr-2"></i> Settings								
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item">
								<i class="fas fa-lock mr-2"></i> Change Password
							</a>
							<div class="dropdown-divider"></div>
							<a href="<?php echo e(url('admin/logout')); ?>" class="dropdown-item text-danger">
								<i class="fas fa-sign-out-alt mr-2"></i> Logout							
							</a>							
						</div>
					</li>
				</ul>
			</nav>
			<!-- /.navbar -->
		<?php echo $__env->make('admin.layouts.sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
			<div class="content-wrapper">
				<?php echo $__env->yieldContent('content'); ?>
			</div>
			<!-- /.content-wrapper -->
			<footer class="main-footer">
				
				<strong>Copyright &copy; 2014-2022 AmazingShop All rights reserved.
			</footer>
			
		</div>
		<!-- ./wrapper -->
		<!-- jQuery -->
		<script src="<?php echo e(url('adminassets/plugins/jquery/jquery.min.js')); ?>"></script>
		<!-- Bootstrap 4 -->
		<script src="<?php echo e(url('adminassets/plugins/bootstrap/js/bootstrap.bundle.min.js')); ?>"></script>
		<!-- AdminLTE App -->
		<script src="<?php echo e(url('adminassets\plugins\dropzone\min\dropzone.min.js')); ?>"></script>

		<script src="<?php echo e(url('adminassets/js/adminlte.min.js')); ?>"></script>
		<script type="text/javascript">
			$.ajaxSetup({
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});
	</script>
	
	
		<!-- AdminLTE for demo purposes -->
		<script src="<?php echo e(url('adminassets/js/demo.js')); ?>"></script>
		<?php echo $__env->yieldContent('customjs'); ?>
			
	</body>
</html><?php /**PATH C:\Users\SHAHZAIB IMTIAZ\Desktop\laravel-ecommerce-shop\resources\views/admin/layouts/app.blade.php ENDPATH**/ ?>