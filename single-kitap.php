<?php

$yildiz = get_post_meta($post->ID, 'puanAnahtari', true);
get_header();

echo "<div class='sutun-12'>";

if (have_posts()) :

	while (have_posts()) : the_post();
?>

		<section class="kitapIcerik satir">

			<h2> Okuduğum Kitaplar - <?php the_title(); ?></h2>
			<figure class="kitapAnaResim kivrikKose sutun-4">

				<?php the_post_thumbnail(); ?>


			</figure>

			<article class="sutun-8">

				<ul class="profil">

					<li class="satir"><label class="proBaslik sutun-4">Yazar Adı:</label><span class="proBilgi sutun-8"><?= kategoriGetir($post->ID, 'yazarlar', $ayrac = '<br>') ?></span></li>
					<li class="satir"><label class="proBaslik sutun-4">Kategori:</label><span class="proBilgi sutun-8"><?= kategoriGetir($post->ID, 'kitaplar', $ayrac = ', ') ?></span></li>
					<li class="satir"><label class="proBaslik sutun-4">Sayfa Sayısı:</label><span class="proBilgi sutun-8"><?= get_post_meta($post->ID, 'sayfaSayisiAnahtari', true) ?></span></li>
					<li class="satir"><label class="proBaslik sutun-4">Basım Yılı:</label><span class="proBilgi sutun-8"><?php

						if(get_post_meta($post->ID, 'hatirlamaBasimYiliAnahtari', true) == 'Hatırlamıyorum') {

						    echo '?';

						} else {

							echo get_post_meta($post->ID, 'basimYiliAnahtari', true);

					 	} ?>
					 </span></li>
					<li class="satir"><label class="proBaslik sutun-4">Bitirdiğim Tarih:</label><span class="proBilgi sutun-8"><?php

						if(get_post_meta($post->ID, 'hatirlamaTarihAnahtari', true) == 'Hatırlamıyorum') {

						    echo '?';

						} else {

							echo zamanDuzenle( get_post_meta($post->ID, 'tarihAnahtari', true) );

					 	}

					 	?>
					 </span></li>
					 <li class="satir"><label class="proBaslik sutun-4">Puanım:</label><span class="proBilgi yildizPuan sutun-8"><?= puanGoster($yildiz); ?></span></li>

				</ul>


			</article>

			<article class="sutun-12">

				<h3>Kitap Açıklaması</h3>
				<p><?= get_post_meta($post->ID, 'kitapAciklamaAnahtari', true) ?></p>


			</article>



		</section>

		<!-- <div class="temizle"></div> -->
		<div class="kitapAlt satir">

			<div class="kitapMenu">

				<!-- Bloglar Düğmesi -->
				<a class="buton" href="<?= site_url('okudugum-kitaplar') ?>"><i class="fa fa-arrow-left okIkonu"></i>Kitap Listesine Dön</a>

				<!-- Önceki Blog Düğmesi -->
				<a class="buton <?= oncekiTusu() == '#' ? 'deaktif' : '' ?>" href="<?= oncekiTusu() ?>"><i class="fa fa-arrow-left"></i></a>

				<!-- Sonraki Blog Düğmesi -->
				<a class="buton <?= sonrakiTusu() == '#' ? 'deaktif' : '' ?>" href="<?= sonrakiTusu() ?>"><i class="fa fa-arrow-right"></i></a>


			</div> <!-- blogMenu sonu -->

		</div> <!-- blogAlt sonu -->

<?php

	endwhile;

else :

	echo "<p>İçerik bulunamadı.</p>";

endif;

echo "</div>";

get_footer();
