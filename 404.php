<?php

get_header();

?>

	<div class='sutun-12'>

		<div class="arama">

			<?php get_search_form(); ?>

		</div>

		<h2>Sayfa Bulunamadı</h2>

		<figure class="sayfaYok">

			<img src="<?= get_stylesheet_directory_uri() ?>/images/mummysboyegg.png" alt="icerik yok" width="256" height="256">

		</figure>

		<p class="yokUst">Aradığınız sayfa bulunamadı!</p>
		<p class="yokAlt">Yukarıdaki arama kutusu belki işinize yarayabilir</p>

	</div>

<?php

get_footer();

?>