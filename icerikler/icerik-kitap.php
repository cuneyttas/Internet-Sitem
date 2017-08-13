<li class="sutun-4">

	<div class="kitAlani">

		<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail( 'kitap' ); ?></a>
		<div class="kitBilgi">

			<div class="yildizPuan">

				<?php

					$yildiz = get_post_meta($post->ID, 'puanAnahtari', true);
					puanGoster($yildiz);

				?>

			</div>
			<a href="<?php the_permalink(); ?>"><h2 class="kitIsmi"><?php the_title(); ?></h2></a>
		    <ul class="profil">

				<li class="satir"><label class="proBaslik sutun-6">Yazar Adı:</label><span class="proBilgi sutun-6"><?= kategoriGetir($post->ID, 'yazarlar', $ayrac = '<br>') ?></span></li>
				<li class="satir"><label class="proBaslik sutun-6">Kategori:</label><span class="proBilgi sutun-6"><?= kategoriGetir($post->ID, 'kitaplar', $ayrac = ', ') ?></span></li>
				<li class="satir"><label class="proBaslik sutun-6">Sayfa Sayısı:</label><span class="proBilgi sutun-6"><?= get_post_meta($post->ID, 'sayfaSayisiAnahtari', true) ?></span></li>
				<li class="satir"><label class="proBaslik sutun-6">Basım Yılı:</label><span class="proBilgi sutun-6"><?php

					if(get_post_meta($post->ID, 'hatirlamaBasimYiliAnahtari', true) == 'Hatırlamıyorum') {

					    echo '?';

					} else {

						echo get_post_meta($post->ID, 'basimYiliAnahtari', true);

				 	} ?>
				 </span></li>
				<li class="satir"><label class="proBaslik sutun-6">Bitirdiğim Tarih:</label><span class="proBilgi sutun-6"><?php

					if(get_post_meta($post->ID, 'hatirlamaTarihAnahtari', true) == 'Hatırlamıyorum') {

					    echo '?';

					} else {

						echo zamanDuzenle( get_post_meta($post->ID, 'tarihAnahtari', true) );

				 	}

				 	?>
				 </span></li>

			</ul>

		</div> <!-- Kitap Bilgi Alanının Sonu -->

	</div> <!-- Kitap Alanının Sonu -->

</li>