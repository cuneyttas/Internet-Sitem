<aside class="solSutun sutun-3 golge">

	<div class="maviAlan">

 		<span class="kalemSimgesi" id="profilResimAlani"></span>
 		<img class="cuneyt kivrikKose" src="<?php echo wp_get_attachment_url(get_theme_mod('profilResmiDegisimi')) ?>" alt="Cüneyt TAŞ">

		<div class="bilgi">

	 		<h1 class="isim"><a href="<?= home_url() ?>"></a><?= get_theme_mod('isimDegisimi') ?><span class="kalemSimgesi" id="profilIsimAlani"></span></h1>
	 		<p class="baslik"><?= get_theme_mod('unvanDegisimi') ?><span class="kalemSimgesi" id="profilUnvanAlani"></span></p>
	 		<hr class="cizgi">

			<p class="yorumum">
				<?php

				$sonGonderiler = wp_get_recent_posts(array('post_type'=>'durum_mesaji'))[0]['post_content'];
				$gonderiID = wp_get_recent_posts(array('post_type'=>'durum_mesaji'))[0]['ID'];

				$zaman = '( '.human_time_diff( get_the_time('U', $gonderiID), current_time('timestamp') ) . ' oldu )';

				echo nl2br($sonGonderiler); // nl2br fonksiyonu satır atlamaları ve boşlukları algılatıyor

			    ?>
			</p>
	 		<p class="yorumumZaman">
		 		<?= $zaman ?>
			</p>

		</div> <!-- bilgi sonu -->

		<div class="sosyal">
 		<?php

 		// Bileşen (widget) alanı
	 	if ( is_active_sidebar( 'mavi-alan' ) )
			dynamic_sidebar( 'mavi-alan' );

	 	?>

		</div> <!-- sosyal sonu -->

	</div> <!-- maviAlan sonu -->

</aside> <!-- solSutun sonu -->