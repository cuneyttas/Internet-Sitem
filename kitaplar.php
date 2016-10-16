<?php
	include("fonksiyonlar.php");
	include("kitap_veriler.php");
	$sayfa = "Okuduğum Kitaplar";

function sayfaIcerigi() {

	global $kitaplar;

?>
<div class="sutun-12">

	<h2>Okumuş Olduğum Kitaplar</h2>
	<ul class="satir kitaplik">

		<?php

		foreach ($kitaplar as $kitapNo => $kitapBilgi) {

		?>
		<li class="sutun-4">

		<div class="kitAlani">

			<img src="resim/kitap/<?= $kitapBilgi["resim"] ?>" alt="<?= $kitapBilgi["isim"] ?>" width="250" height="310">

			<div class="kitBilgi">
			<h2 class="kitIsmi"><?= $kitapBilgi["isim"] ?></h2>
		    <ul class="profil">

				<li class="satir"><label class="proBaslik sutun-6">Yazar Adı:</label><span class="proBilgi sutun-6"><?= $kitapBilgi["yazar"] ?></span></li>
				<li class="satir"><label class="proBaslik sutun-6">Sayfa Sayısı:</label><span class="proBilgi sutun-6"><?= $kitapBilgi["sayfa_no"] ?></span></li>
				<li class="satir"><label class="proBaslik sutun-6">Basım Yılı:</label><span class="proBilgi sutun-6"><?= $kitapBilgi["basim_yili"] ?></span></li>
				<li class="satir"><label class="proBaslik sutun-6">Bitirdiğim Tarih:</label><span class="proBilgi sutun-6"><?= $kitapBilgi["bitis_tarihi"] ?></span></li>

			</ul>
			</div> <!-- Kitap Bilgi Alanının Sonu -->

		</div> <!-- Kitap Alanının Sonu -->

		</li>
		<?php
		}
		?>
	</ul>

</div> <!-- iceriğin sağ tarafının sonu -->

<?php
}

tema_sablon( $sayfa );

?>