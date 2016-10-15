<?php
	include("fonksiyonlar.php");
	include("galeri_veriler.php");
	$sayfa = "Galeri";

function sayfaIcerigi() {

	global $kategoriler, $fotograflar;

?>

<div class="sutun-12">

	<h2>Galeri</h2>
	<ul class="kategori sekmeler">

		<?php
		$i = 0;
		foreach($kategoriler as $kategNo => $kategBilgi) { $i++;
		?>

			<li><a href="#" class="btn grup <?= $i==1 ? "aktif" : "" ?>" data-sayfa="<?= $kategNo ?>"><?= $kategBilgi["isim"] ?></a></li>

		<?php
		}
		?>

	</ul>
	<div class="temizle"></div>

    <?php
	$i = 0;
	foreach ($kategoriler as $kategNo => $kategBilgi) { $i++;
	?>

	<ul class="resimler" data-sayfa="<?= $kategNo ?>" style="display: <?= $i==1 ? "block" : "none" ?>;">

		<?php

		foreach ($fotograflar as $fotoNo => $fotoBilgi) {

			if ($fotoBilgi["kategori_no"] != $kategNo ) continue;

		?>
		<li><a href="resim/<?= $fotoBilgi["dosya_ismi"]."_b.".$fotoBilgi["dosya_uzantisi"] ?>" title="<?= $fotoBilgi["aciklama"] ?>"><img src="resim/<?= $fotoBilgi["dosya_ismi"]."_k.".$fotoBilgi["dosya_uzantisi"] ?>" alt="<?= $fotoBilgi["aciklama"] ?>" width="220" hight="165"></a></li>
		<?php
		}
		?>

	</ul>

	<?php
	}
	?>

</div>

<?php
}

tema_sablon( $sayfa );

?>