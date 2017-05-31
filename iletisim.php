<?php
	include("fonksiyonlar.php");
	$sayfa = "İletişim";

function sayfaIcerigi() {

	function temizle($veri) {

		$veri = trim($veri);
		$veri = stripslashes($veri);
		$veri = htmlspecialchars($veri);
		return $veri;

	}

	$isimHata = $epostaHata = $mesajHata = "";
	$isim = $eposta = $konu = $mesaj = "";
	$herSeyDogru = false;
	$gonderildi = false;

	if ($_SERVER["REQUEST_METHOD"] == "POST") {

		if (empty($_POST["isim"])) {

		    $isimHata = "&bull; İsim Alanını Boş Bırakmayın!";

		} else {

		    $isim = temizle($_POST["isim"]);
			if (!preg_match("/^([a-zA-Z\s\ö\ç\ş\ı\ğ\ü\Ö\Ç\Ş\İ\Ğ\Ü]+)$/", $isim)) {

			  $isimHata = "&bull; İsim yazarken harf ve boşluk kullanın!";

			}

		}

		if (empty($_POST["eposta"])) {

		    $epostaHata = "&bull; E-Posta Alanını Boş Bırakmayın!";

		} else {

		    $eposta = temizle($_POST["eposta"]);
			if (!filter_var($eposta, FILTER_VALIDATE_EMAIL)) {

			  $epostaHata = "&bull; Geçersiz E-Posta!";

			}

		}

		if (empty($_POST["konu"])) {

		    $konu = "";

		} else {

		    $konu = temizle($_POST["konu"]);

		}

		if (empty($_POST["mesaj"])) {

		    $mesajHata = "&bull; Mesaj Alanını Boş Bırakmayın!";

		} else {

		    $mesaj = temizle($_POST["mesaj"]);

		}

		if ($isimHata == "" && $epostaHata == "" && $mesajHata == "") {

			$herSeyDogru = true;

			$kime = "cuneyttas@hotmail.com.tr";
			$epostaKonu = $konu == "" ? "$isim sana internet sitenden mesaj gönderdi!" : $konu;
			$basliklar =
			"MIME-Version: 1.0 \r\n" .
			"Content-type: text/html; charset=utf-8 \r\n" .
			"From: $isim <iletisim@cuneyt-tas.com> \r\n".
			"Reply-To: $isim <$eposta>  \r\n";

			$gonderildi = mail($kime, '=?utf-8?B?'.base64_encode($epostaKonu).'?=', $mesaj, $basliklar);

			if ($gonderildi) $isim = $eposta = $konu = $mesaj = "";
			else $hatam = print_r(error_get_last(), true);

		}

	}

?>

<div class="sutun-6">

	<h2>İletişim Bilgileri</h2>
	<ul class="profil">

		<li class="satir"><label class="proBaslik sutun-4">Adres:</label><span class="proBilgi sutun-8"><address>Çorum</address></span></li>
		<li class="satir"><label class="proBaslik sutun-4">E-posta (Hotmail):</label><span class="proBilgi sutun-8"><a href="mailto:cuneyttas@hotmail.com.tr">cuneyttas@hotmail.com.tr</a></span></li>
		<li class="satir"><label class="proBaslik sutun-4">E-posta (Gmail):</label><span class="proBilgi sutun-8"><a href="mailto:tascuneyd@gmail.com">tascuneyd@gmail.com</a></span></li>

	</ul>

</div> <!-- sutun-6 sonu -->
<div class="sutun-6">

	<h2>Bana Mesaj Gönderin</h2>
	<ul class="hataMesajlari">

		<li><?= $isimHata ?></li>
		<li><?= $epostaHata ?></li>
		<li><?= $mesajHata ?></li>

	</ul>
	<?php
	if ($herSeyDogru) {

		if ($gonderildi){

			echo "<span class='iletimDurumu gitti'>&bull; Mesajınız İletildi.</span>";

		} else {

			echo "<span class='iletimDurumu gitmedi'>&bull; Mesajınız iletilirken hata oluştu. E-posta adresimden göndermeyi deneyin.</span>";
			//echo "<span class='iletimDurumu gitmedi'>".$hatam."</span>";

		}
	}
	?>
	<form action="<?= htmlspecialchars($_SERVER["PHP_SELF"]) ?>" method="post" class="formMesaj" accept-charset="utf-8">

		<input class="girisKutusu" id="mesajAdi" type="text" value="<?= $isim ?>" name="isim" placeholder="İsim..." required>
		<input class="girisKutusu" id="mesajEposta" type="email" value="<?= $eposta ?>" name="eposta" placeholder="E-posta..." required>
		<input class="girisKutusu" id="mesajKonu" type="text" value="<?= $konu ?>" name="konu" placeholder="Konu...">
		<textarea class="girisKutusu" id="mesajAlani" name="mesaj" placeholder="Mesaj..." required><?= $mesaj ?></textarea>
		<input class="girisKutusu" id="mesajTemizle" type="reset" value="Temizle">
		<input class="girisKutusu" id="mesajGonder" type="submit" value="Gönder">

	</form>

</div> <!-- sutun-6 sonu -->
<div class="satir">

	<div class="harita sutun-12">

		<h2>Haritada Neredeyim?</h2>
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d97033.06191721145!2d34.87186368446919!3d40.535332322622175!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40872a9f1a35ab71%3A0xa34943cf02a0f8d5!2zw4dvcnVtLCDDh29ydW0gTWVya2V6L8OHb3J1bQ!5e0!3m2!1str!2str!4v1448044459103" width="770" height="463" frameborder="0" style="border:0; width: 100%" allowfullscreen></iframe>

	</div>	<!-- harita sonu -->

</div> <!-- sutun-12 sonu -->
<?php
}

tema_sablon( $sayfa );

?>