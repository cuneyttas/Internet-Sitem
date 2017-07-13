<!DOCTYPE html>
<html <?php language_attributes(); ?>>

	<head>

	 	<meta http-equiv="Content-Type" content="text/html; charset=<?php bloginfo('charset'); ?>">
	 	<meta charset="<?php bloginfo('charset'); ?>">
	 	<meta name="title" content="<?php bloginfo('name'); ?>">
	 	<meta name="description" content="<?php bloginfo('name'); ?>">
	 	<meta name="author" content="Cüneyt TAŞ">
	 	<meta name="keywords" content="cüneyt, taş, cüneyt taş, web tasarım, bilgisayar mühendisi, bilgisayar mühendisliği, çorum">
	 	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	 	<link rel="shortcut icon" type="image/x-icon" href="<?= get_stylesheet_directory_uri() ?>/images/favicon.ico">
	 	<?php wp_head(); ?>

	</head>

	<body <?php body_class(); ?>>

		<div class="ana satir">

		<?php get_sidebar(); ?>

 		<section class="sagSutun sutun-9">

 			<nav class="menu satir">

 				<?php

		 			$args = [

			 			'theme_location' => 'primary',
			 			'menu_class' => 'sutun-12',
			 			'menu_id' => 'ust_menu',
			 			'container' => 'none', // none'ı rastgele yazdık. CSS'leri engelleyen bir div'i kaldırmak için
 			 			//'link_before' => '<i class="fa fa-user fa-3x menu-ikon"></i><br>'

		 			];

		 			wp_nav_menu($args);

		 		?>

				<div class="temizle"></div>

			</nav> <!-- menu sonu -->

 			<div class="icerik satir golge kivrikKose">