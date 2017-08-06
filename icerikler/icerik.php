<article class="ozet satir">

	<figure class="ozetResim sutun-4">

		<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail( 'blog-liste' ); ?></a>

	</figure> <!-- ozetResim sonu -->
	<div class="blogOzet sutun-8">

		<h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
		<p><?php the_excerpt(); ?></p>

		<span class="blogBilgi"><?php the_date(); ?> | <?= kategoriGetir($post->ID, 'category', $ayrac = ', ') ?></span>
		<a class="buton" href="<?php the_permalink(); ?>">Devamını Oku</a>

	</div> <!-- blogOzet sonu -->

</article>
