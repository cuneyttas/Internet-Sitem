<?php
global $wp_query;
$args = array_merge( $wp_query->query_vars, array(

	'posts_per_page' => '30',
	'meta_key' => 'tarihAnahtari',
	'orderby' => 'meta_value',
	'order' => 'DESC',

));
query_posts( $args );


get_header();

echo "<div class='sutun-12'>";

if (have_posts()) :
?>
<h2><?php single_term_title(); ?> Yazarının Okuduğum Kitapları</h2>
<ul class="satir kitaplik">


<?php

	while (have_posts()) : the_post();

		get_template_part("icerikler/icerik-kitap");

	endwhile;

?>

</ul>
<div class="temizle"></div>

<?php

	echo "<div class='sayfalama'>".paginate_links()."</div>";

else :
	echo "<p>İçerik bulunamadı.</p>";
endif;

echo "</div>";

get_footer();

?>