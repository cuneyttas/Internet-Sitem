<?php

get_header();

echo "<div class='sutun-12'>";

if (have_posts()) :

	while (have_posts()) : the_post();
?>

		<article class="blog">

			<h1 id="basaDon"><?php the_title(); ?></h1>
			<figure class="blogResim">

				<?php the_post_thumbnail( 'blog' ); ?>

			</figure>
			<?php the_content(); ?>

		</article>
		<div class="temizle"></div>
		<div class="blogAlt satir">

			<div class="blogBilgi">

				<span class="blogBilgi"><?php the_date(); ?> |

				<?php

					$kategoriler = get_the_category();
					$ayrac = ", ";
					$yazim = "";

					if ($kategoriler) {

						foreach ($kategoriler as $kategori) {

							$yazim .='<a href="'.get_category_link($kategori->term_id).'"> '.$kategori->cat_name.'</a>'.$ayrac;

						}

						echo trim($yazim, $ayrac); //En sondaki virgülü kaldırmak için

					}

				?>
				</span>

			</div> <!-- blogBilgi sonu -->
			<div class="blogMenu">

				<!-- Bloglar Düğmesi -->
				<a class="buton" href="<?= site_url('blog') ?>"><i class="fa fa-arrow-left okIkonu"></i>Bloglar</a>

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

?>