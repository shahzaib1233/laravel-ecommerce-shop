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
		<!-- Theme style -->
		<link rel="stylesheet" href="<?php echo e(url('adminassets/css/adminlte.min.css')); ?>">
		<link rel="stylesheet" href="<?php echo e(url('adminassets/css/custom.css')); ?>">
	</head>
	<body class="hold-transition login-page">
		<div class="login-box">
		

			<?php echo $__env->make('admin.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
			<!-- /.login-logo -->
			<div class="card card-outline card-primary">
			  	<div class="card-header text-center">
					<a href="#" class="h3">Administrative Panel</a>
			  	</div>
			  	<div class="card-body">
					<p class="login-box-msg">Sign in to start your session</p>
					<form action="<?php echo e(route('admin.authenticate')); ?>" method="post">
						<?php echo csrf_field(); ?>	
				  		<div class="input-group mb-3">
							<input type="email" value="<?php echo e(old('email')); ?>" name="email" class="form-control <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" placeholder="Email">
							<div class="input-group-append">
					  			<div class="input-group-text">
									<span class="fas fa-envelope"></span>
									
									
									
					  			</div>
							</div>
				  		</div>

						  <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
						  <p class=" invalidfieldback" style="color: red;">
							  <?php echo e($message); ?>

						  </p>
						  <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
				  		<div class="input-group mb-3">
							<input type="password" name="password" class="form-control <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>""  placeholder="Password">
							<div class="input-group-append">
					  			<div class="input-group-text">
									<span class="fas fa-lock"></span>
					  			</div>
							</div>
				  		</div>
						  <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
						  <p class=" invalidfieldback" style="color: red;">
							  <?php echo e($message); ?>

						  </p>
						  <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
				  		<div class="row">
							<!-- <div class="col-8">
					  			<div class="icheck-primary">
									<input type="checkbox" id="remember">
									<label for="remember">
						  				Remember Me
									</label>
					  			</div>
							</div> -->
							<!-- /.col -->
							<div class="col-4">
					  			<button type="submit" class="btn btn-primary btn-block">Login</button>
							</div>
							<!-- /.col -->
				  		</div>
					</form>
		  			<p class="mb-1 mt-3">
				  		<a href="forgot-password.html">I forgot my password</a>
					</p>					
			  	</div>
			  	<!-- /.card-body -->
			</div>
			<!-- /.card -->
		</div>
		<!-- ./wrapper -->
		<!-- jQuery -->
		<script src="<?php echo e(url('adminassets/plugins/jquery/jquery.min.js')); ?>"></script>
		<!-- Bootstrap 4 -->
		<script src="<?php echo e(url('adminassets/plugins/bootstrap/js/bootstrap.bundle.min.js')); ?>"></script>
		<!-- AdminLTE App -->
		<script src="<?php echo e(url('adminassets/js/adminlte.min.js')); ?>"></script>
		<!-- AdminLTE for demo purposes -->
		<script src="<?php echo e(url('adminassets/js/demo.js')); ?>"></script>
	</body>
</html><?php /**PATH C:\Users\SHAHZAIB IMTIAZ\Desktop\laravel-ecommerce-shop\resources\views/admin/login.blade.php ENDPATH**/ ?>