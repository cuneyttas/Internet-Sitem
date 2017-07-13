<?php

get_header();

echo "<div class='sutun-12'>";

if (have_posts()) :

?>

	<h2 class="aramaBasligi"><?php

		if(is_category()) {

			echo single_cat_title()." Kategorisi";

		} elseif (is_tag()) {

			echo single_tag_title()." Etiketi";

		} elseif (is_day()) {

			echo "Günlük Arşiv: ".get_the_date();

		} elseif (is_month()) {

			echo "Aylık Arşiv: ".get_the_date('F Y');

		} elseif (is_year()) {

			echo "Yıllık Arşiv: ".get_the_date('Y');

		} else {

			echo "Arşivler: ";

		}

	 ?>
	 </h1>

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