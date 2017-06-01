<?php
	include("fonksiyonlar.php");
	$sayfa = "Okuduğum Kitaplar";

function sayfaIcerigi() {

	global $baglanti;

?>
<div class="sutun-12">

	<h2>Okumuş Olduğum Kitaplar</h2>
	<ul class="satir kitaplik">

<?php

	function zamanDuzenle($zaman) { // Zaman formatını düzenleme

				return strftime( '%e %B %Y', strtotime($zaman) );

			}

	function resimGetir($resimID) {

		global $baglanti;

		$resim = $baglanti->query('SELECT resim FROM Resimler WHERE resim_ID = '.$resimID, PDO::FETCH_ASSOC)->fetchAll();
		$resimTamAdi = $resim[0]["resim"]; // Örnek: resim.jpg

		return $resimTamAdi;

	}

	//Veritabanından verileri çekiyoruz
	try {

		$ifade = $baglanti->prepare("SELECT kitap_adi, kitap_yazar, kitap_sayfa, kitap_basim_yili, kitap_bitis_tarihi, resim_ID FROM Kitaplar ORDER BY kitap_ID DESC");
		$ifade->execute();
		$sonuc = $ifade->setFetchMode(PDO::FETCH_ASSOC);
		$kitaplar = $ifade->fetchAll();

	} catch(PDOException $i) {

		echo "Blog listesi verileri çekilemedi: " . $i->getMessage();

	}

	foreach ($kitaplar as $kitap) {

?>
		<li class="sutun-4">

		<div class="kitAlani">

			<img src="resim/kitap/<?= resimGetir($kitap["resim_ID"]) ?>" alt="<?= $kitap["kitap_adi"] ?>" width="250" height="310">

			<div class="kitBilgi">
			<h2 class="kitIsmi"><?= $kitap["kitap_adi"] ?></h2>
		    <ul class="profil">

				<li class="satir"><label class="proBaslik sutun-6">Yazar Adı:</label><span class="proBilgi sutun-6"><?= $kitap["kitap_yazar"] ?></span></li>
				<li class="satir"><label class="proBaslik sutun-6">Sayfa Sayısı:</label><span class="proBilgi sutun-6"><?= $kitap["kitap_sayfa"] ?></span></li>
				<li class="satir"><label class="proBaslik sutun-6">Basım Yılı:</label><span class="proBilgi sutun-6"><?= $kitap["kitap_basim_yili"] == "0000" ? "?" : $kitap["kitap_basim_yili"] ?></span></li>
				<li class="satir"><label class="proBaslik sutun-6">Bitirdiğim Tarih:</label><span class="proBilgi sutun-6"><?= $kitap["kitap_bitis_tarihi"] == "?" ? "?" : zamanDuzenle($kitap["kitap_bitis_tarihi"]) ?></span></li>

			</ul>
			</div> <!-- Kitap Bilgi Alanının Sonu -->

		</div> <!-- Kitap Alanının Sonu -->

		</li>

<?php } ?>

	</ul>

</div> <!-- iceriğin sağ tarafının sonu -->

<?php
}

tema_sablon( $sayfa );

?>