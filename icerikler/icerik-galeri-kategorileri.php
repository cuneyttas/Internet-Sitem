<ul class="kategori sekmeler">
	<li><a href="<?= site_url('/galeri') ?>" class="btn grup <?= is_tax() ? "" : "aktif" ?>">Tümü</a></li>

<?php
$terimler = get_terms([  //terim = term
	'taxonomy' => 'album',
	'hide_empty' => false
]);

foreach($terimler as $terim) {

	$suAnkiTerim = single_term_title("", false);

?>

	<li><a href="<?= get_term_link($terim) ?>" class="btn grup <?= $suAnkiTerim == $terim->name ? "aktif" : "" ?>"><?= $terim->name ?></a></li>

<?php } ?>

</ul>
<div class="temizle"></div>