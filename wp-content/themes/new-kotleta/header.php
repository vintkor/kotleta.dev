<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?php wp_title('&#8594;', true, 'right');?> &#9749;&#9749;&#9749; <? echo get_bloginfo('name');?> &#9749;&#9749;&#9749; <? echo get_bloginfo('description') ?></title>
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/app/css/libs.min.css">
	<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	<?php wp_head(); ?>
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/app/css/main.css">
</head>
<body <?php body_class(); ?>>
<div class="wrapper">

	<div class="content">
		<div class="header">
			
			<div class="header-wrap">
				<div class="top-nav">
					<div class="container">
						<div class="col-sm-5 left">
							<?php wp_nav_menu( array('theme_location' => 'top-left-menu') ); ?>
						</div>
						<div class="col-sm-2 center">
							<div class="logo-absolute">
								<div class="logo"><a href="/"></a></div>
							</div>
						</div>
						<div class="col-sm-5 right">
							<?php wp_nav_menu( array('theme_location' => 'top-right-menu') ); ?>
						</div>
					</div>
				</div>