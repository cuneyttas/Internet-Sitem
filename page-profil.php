<?php

get_header();

if (have_posts()) :

	while (have_posts()) : the_post();
?>

		<div class="sutun-6">

			<h2><?php the_title(); ?> Sayfası</h2>
			<ul class="profil">

				<li class="satir"><label class="proBaslik sutun-4">İsim:</label><span class="proBilgi sutun-8"><?php echo do_shortcode('[ct]'); ?></span></li>
				<li class="satir"><label class="proBaslik sutun-4">E-posta:</label><span class="proBilgi sutun-8">cuneyttas@hotmail.com.tr</span></li>
				<li class="satir"><label class="proBaslik sutun-4">Memleket:</label><span class="proBilgi sutun-8">Çorum</span></li>

			</ul>
			<?php the_content(); ?>
			<h2>Son Gönderiler</h2>
			<?php

				$sonGonderiler = new WP_Query("posts_per_page=2");

				if ($sonGonderiler -> have_posts()) :

					while ($sonGonderiler -> have_posts()) :  $sonGonderiler -> the_post(); ?>

						<a href="<?php the_permalink(); ?>"<h3><?php the_title(); ?></h3></a>

				<?php
						the_excerpt(); echo "<br>";

					endwhile;

				else :

					echo "Gönderisi yayınlanacak post bulunamadı.";

				endif;
				wp_reset_postdata(); // Bu fonksiyon yazılmazsa aşağıdaki kod satırlarına da etki ediyor.

			?>

		</div> <!-- iceriğin sol tarafının sonu -->

		<div class="sutun-6">

			<?php the_post_thumbnail( 'ana-resim', ['class' => 'anaResim'] ); ?>

		</div> <!-- iceriğin sağ tarafının sonu -->


<?php

	endwhile;

else :

	echo "<p>İçerik bulunamadı.</p>";

endif;

get_footer();

?>