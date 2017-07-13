<?php

get_header();

?>

	<div class='sutun-12'>

		<div class="arama">

			<?php get_search_form(); ?>

		</div>

<?php if (have_posts()) : ?>

		<h2 class="aramaBasligi">"<b><i><?php the_search_query(); ?></i></b>" için Arama Sonuçları</h2>

<?php

	while (have_posts()) : the_post();

		get_template_part("icerikler/icerik", get_post_format());

	endwhile;

	echo paginate_links();

else :

	echo "<p>İçerik bulunamadı.</p>";

endif;

echo "</div>";

get_footer();

?>