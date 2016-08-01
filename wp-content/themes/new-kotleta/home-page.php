<?php
/*
Template Name: Главная
*/
?>

<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>&#9749;&#9749;&#9749; <? echo get_bloginfo('name');?> &#9749;&#9749;&#9749; <? echo get_bloginfo('description') ?></title>	
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/app/css/libs.min.css">
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/app/css/main.css">
	<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body <?php body_class(); ?>>
<div class="wrapper">
	<div class="content">	
		<div class="header">
			<div id="video-wrap">
				<video id="my-video" preload="metadata" autoplay loop>
					<source src="<?php echo get_template_directory_uri(); ?>/app/video/Food.mp4" type="video/mp4">
					<source src="<?php echo get_template_directory_uri(); ?>/app/video/Food.webm" type="video/webm">
				</video>
				<div class="absolute-wrapper">
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
				</div>
				<div class="bounce"><a id="bounce" href="#section1"></a></div>
			</div>
		</div>

		<div id="section1" class="section1 ">
			<div class="container egg" style="background-image: url(img/egg.png)">
				<div class="row">
					<div class="col-sm-6 cook">
						<img src="img/cooking-890885_1920.png">
					</div>
					<div class="col-sm-6">
					<h2>А вы знаете кто наш шеф-повар?</h2>
					<p>Да-да! Это <strong>тот самый участник</strong> первого сезона известного и любимого телевизионного шоу<strong>«Мастер Шеф»</strong></p>
					<p>Поэтому вы даже можете и не сомневаться о качестве и вкустности нашего меню. У нас даже самые простые и банальные блюда превращаются в <strong>шедевр кулинарии</strong>.</p>
					</div>
				</div>
			</div>
		</div>
	</div>

<?php get_footer(); ?>