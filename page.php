<?php

get_header();

echo "<div class='sutun-12'>";

if (have_posts()) :

	while (have_posts()) : the_post();
?>

		<h2><?php the_title(); ?></h2>
		<?php the_content(); ?>

<?php

	endwhile;

else :

	echo "<p>İçerik bulunamadı.</p>";

endif;

echo "</div>";

get_footer();

?>