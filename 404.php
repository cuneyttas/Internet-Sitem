<?php

get_header();

?>

	<div class='sutun-12'>

		<div class="arama">

			<?php get_search_form(); ?>

		</div>

		<h2>Sayfa Bulunamadı</h2>

		<img src="<?= get_stylesheet_directory_uri() ?>/images/mummysboyegg.png" alt="icerik yok">

		<p class="yok"> Aradığınız sayfa yok! </p>

	</div>

<?php

get_footer();

?>