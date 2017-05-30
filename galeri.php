<?php
	include("fonksiyonlar.php");
	$sayfa = "Galeri";

function sayfaIcerigi() {

	global $kategoriler, $fotograflar, $baglanti;

?>

<div class="sutun-12">

	<h2>Galeri</h2>
	<ul class="kategori sekmeler">

<?php

	try {

		$ifade = $baglanti->prepare("SELECT r_kat_ID, r_kat_adi FROM Resim_Kategorileri WHERE r_kat_ID != 4 AND r_kat_ID != 5 ORDER BY r_kat_adi");
		$ifade->execute();
		$sonuc = $ifade->setFetchMode(PDO::FETCH_ASSOC);
		$resimKategorileri = $ifade->fetchAll();

	} catch(PDOException $i) {

		echo "Galeri Kategorisi verileri çekilemedi: " . $i->getMessage();

	}

	$i = 0;
	foreach($resimKategorileri as $kategori) { $i++;

?>

		<li><a href="#" class="btn grup <?= $i==1 ? "aktif" : "" ?>" data-sayfa="<?= $kategori["r_kat_ID"] ?>"><?= $kategori["r_kat_adi"] ?></a></li>

<?php

	}

?>

	</ul>
	<div class="temizle"></div>


<?php

	$i = 0;
	foreach ($resimKategorileri as $kategori) { $i++;

?>

	<ul class="resimler" data-sayfa="<?= $kategori["r_kat_ID"] ?>" style="display: <?= $i==1 ? "block" : "none" ?>;">

<?php

	try {

		$ifade = $baglanti->prepare("SELECT resim_baslik, resim FROM Resimler WHERE r_kat_ID != 4 AND r_kat_ID != 5 AND r_kat_ID = ".$kategori['r_kat_ID']);
		$ifade->execute();
		$sonuc = $ifade->setFetchMode(PDO::FETCH_ASSOC);
		$resimler = $ifade->fetchAll();

	} catch(PDOException $i) {

		echo "Galeri verileri çekilemedi: " . $i->getMessage();

	}

	foreach ($resimler as $resim) {

		$resimUzantisi = explode(".", $resim["resim"]);

?>
		<li><a href="resim/<?= $resimUzantisi[0]."_b.".$resimUzantisi[1] ?>" title="<?= $resim["resim_baslik"] ?>"><img src="resim/<?= $resimUzantisi[0]."_k.".$resimUzantisi[1] ?>" alt="<?= $resim["resim_baslik"] ?>" width="220" hight="165"></a></li>

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