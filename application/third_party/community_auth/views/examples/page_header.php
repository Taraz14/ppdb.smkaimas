<!DOCTYPE html>
<html lang="en" >
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="apple-touch-icon" sizes="57x57" href="<?= base_url()?>assets/image/fav/apple-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="<?= base_url()?>assets/image/fav/apple-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="<?= base_url()?>assets/image/fav/apple-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="<?= base_url()?>assets/image/fav/apple-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="<?= base_url()?>assets/image/fav/apple-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="<?= base_url()?>assets/image/fav/apple-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="<?= base_url()?>assets/image/fav/apple-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="<?= base_url()?>assets/image/fav/apple-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="<?= base_url()?>assets/image/fav/apple-icon-180x180.png">
	<link rel="icon" type="image/png" sizes="192x192"  href="<?= base_url()?>assets/image/fav/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="<?= base_url()?>assets/image/fav/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="<?= base_url()?>assets/image/fav/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="<?= base_url()?>assets/image/fav/favicon-16x16.png">
	<link rel="manifest" href="<?= base_url()?>assets/image/fav/manifest.json">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="<?= base_url()?>assets/image/fav/ms-icon-144x144.png">
	<meta name="theme-color" content="#ffffff">
	<title>SMK Negeri 1 Kabupaten Sorong</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 3.3.7 -->
	<link rel="stylesheet" href="<?= base_url(); ?>assets/5b43112/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="<?= base_url(); ?>assets/5b43112/bower_components/font-awesome/css/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="<?= base_url(); ?>assets/5b43112/bower_components/Ionicons/css/ionicons.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="<?= base_url(); ?>assets/5b43112/dist/css/AdminLTE.min.css">
	<!-- iCheck -->
	<link rel="stylesheet" href="<?= base_url(); ?>assets/5b43112/plugins/iCheck/square/blue.css">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

	<!-- Google Font -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
	<!-- <style>
		body{background:#fee;}
		#menu{float:left;width:100%;background:pink;}
		@media only screen and ( min-width:801px ){
			#menu{float:right;width:25%;}
		}
	</style> -->
	<?php
		// Add any javascripts
		if( isset( $javascripts ) )
		{
			foreach( $javascripts as $js )
			{
				echo '<script src="' . $js . '"></script>' . "\n";
			}
		}

		if( isset( $final_head ) )
		{
			echo $final_head;
		}
	?>
</head>
<body class="hold-transition login-page">
		<!-- <?php
			// $link_protocol = USE_SSL ? 'https' : NULL;

			// if( $this->router->default_controller == 'auth/home' )
			// 	echo '<li>' . anchor( site_url('', $link_protocol ),'Home') . '</li>';
		?>
		<li>
			<?php
			// echo isset( $auth_user_id )
			// 	? logout_anchor('auth/logout', 'Logout'): login_anchor('auth', 'Login', 'id="login-link"' );
		?>
		</li>
		<li>
			<?php echo anchor( site_url('auth/create_user', $link_protocol ),'Create User'); ?>
		</li> -->
<?php

/* End of file page_header.php */
/* Location: /community_auth/views/examples/page_header.php */