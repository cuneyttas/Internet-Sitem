<?php

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


		$args = array(
			'post_type' => 'mesaj',
			'post_title'   => $konu,
		    'post_content' => $isim." diyor ki: ".$mesaj,
		    'post_status'  => 'publish',
		    'post_author'  => 1, // Ana Kullanıcı
		    'meta_input'   => array(
		        '_epostaAnahtari' => $eposta,
		    ),
		);
		$gonderiID = wp_insert_post($args);
		if (!is_wp_error($gonderiID)) {

		  	// Eğer gönderi eklendiyse, e-posta gönder

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


		} else {

			// Eğer gönderi eklenemediyse hata mesajı yaz.
			$hatam = $gonderiID->get_error_message();

		}

	}

}




get_header();

if (have_posts()) :

	while (have_posts()) : the_post();
?>

		<div class="sutun-6">

			<h2>İletişim Bilgileri</h2>
			<ul class="profil">

			<?php

				$adresDegeri=esc_attr(get_option('adres'));
				$birincilEpostaDegeri=esc_attr(get_option('birincilEposta'));
				$ikincilEpostaDegeri=esc_attr(get_option('ikincilEposta'));
				$haritaBilgisiDegeri=get_option('haritaBilgisi');

			?>

				<li class="satir"><label class="proBaslik sutun-4">Adres:</label><span class="proBilgi sutun-8"><address><?= $adresDegeri ?></address></span></li>
				<li class="satir"><label class="proBaslik sutun-4">E-posta (Hotmail):</label><span class="proBilgi sutun-8"><a href="mailto:cuneyttas@hotmail.com.tr"><?= $birincilEpostaDegeri ?></a></span></li>
				<li class="satir"><label class="proBaslik sutun-4">E-posta (Gmail):</label><span class="proBilgi sutun-8"><a href="mailto:tascuneyd@gmail.com"><?= $ikincilEpostaDegeri ?></a></span></li>

			</ul>

		</div> <!-- sutun-6 sonu -->
		<div class="sutun-6">

			<h2>Buradan Mesaj Gönderebilirsiniz</h2>
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
					echo "<span class='iletimDurumu gitmedi'>".$hatam."</span>";

				}
			}
			?>
			<form action="" method="post" class="formMesaj" accept-charset="utf-8">

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

				<h2>Şu An Neredeyim?</h2>
				<?= $haritaBilgisiDegeri ?>

			</div>	<!-- harita sonu -->

		</div> <!-- sutun-12 sonu -->

<?php

	endwhile;

else :

	echo "<p>İçerik bulunamadı.</p>";

endif;

get_footer();

?>