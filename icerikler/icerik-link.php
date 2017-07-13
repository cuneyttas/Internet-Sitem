<article class="blogBaglanti ozet satir">

	<?php // İleride kullanırsam blogBaglanti class'ının biçimini değiştiririm. Şu an kullanılmıyor. ?>
	<a href="<?php echo get_the_content() ?>"><?php the_title(); ?></a>
	<?php the_content(); ?>

</article>