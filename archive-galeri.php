<?php
global $query_string;
query_posts($query_string.'&posts_per_page=16');

get_header();

echo "<div class='sutun-12'>";

?>

<h2>Galeri</h2>

<?php

get_template_part("icerikler/icerik-galeri-kategorileri");

if (have_posts()) :
?>

<ul class="resimler">

<?php
	while (have_posts()) : the_post();

		get_template_part("icerikler/icerik-galeri");

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