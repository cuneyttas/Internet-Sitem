<?php

$siteBaslik = "Cüneyt TAŞ Kişisel İnternet Sitesi";

// Head etiketi fonksiyonu başı
function tema_head($baslik = "") {
	global $siteBaslik;

	if ($baslik == "Anasayfa") {

		$baslik = $siteBaslik;

	} else {

		$baslik = $baslik." | ".$siteBaslik;

	}

?>

<head>

 	<title><?=$baslik?></title>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
 	<meta name="title" content="<?=$siteBaslik?>">
 	<meta name="description" content="<?=$siteBaslik?>">
 	<meta name="keywords" content="cüneyt, taş, web tasarım, bilgisayar mühendisi">
 	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
 	<link rel="stylesheet" href="css/bicim.css">
 	<link rel="stylesheet" href="css/mobil.css">
 	<link rel="stylesheet" href="css/font-awesome.min.css">
 	<link rel="stylesheet" href="js/colorbox/colorbox.css" />
 	<link href='https://fonts.googleapis.com/css?family=Ubuntu&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
 	<link rel="shortcut icon" type="image/x-icon" href="resim/favicon.ico">
 	<script src="js/jquery-2.1.4.min.js"></script>
 	<script src="js/colorbox/jquery.colorbox-min.js"></script>
 	<script src="js/senaryo.js"></script>

	</head>

<?php

} // Head etiketi fonksiyonu sonu



// Sol Sütun fonksiyonu başı
function tema_solSutun() {

?>

<section class="solSutun sutun-3">

	<div class="maviAlan">

 	<img class="cuneyt" src="resim/cuneyt.jpg" alt="Cüneyt TAŞ">

		<div class="bilgi">

 		<h1 class="isim">Cüneyt TAŞ</h1>
 		<p class="baslik">Bilgisayar Mühendisi</p>
 		<hr class="cizgi">
 		<p class="tanitim">Konuşmak hoşuna giderse sus, susmak hoşuna giderse konuş. (Bişr-i Hafî) </p>

		</div> <!-- bilgi sonu -->

		<div class="sosyal">

 		<span>Sosyal Hesaplar</span>
 		<hr class="cizgi">
 		<a href="https://tr.linkedin.com/in/cuneyttas" target="_blank"><img src="resim/linkedin.jpg" alt="Linkedin Logo"></a>

		</div> <!-- sosyal sonu -->

	</div> <!-- maviAlan sonu -->

</section> <!-- solSutun sonu -->

<?php

} // Sol sütun fonksiyonu sonu




// Menü fonksiyonu başı
function tema_menu($sayfa) {

	$siteIsmi = htmlspecialchars($_SERVER["HTTP_HOST"]);
	$anasayfaBaglantisi = $siteIsmi == "localhost" ? "/cuneyttas/" : "/";

?>

<nav class="menu satir">

<ul class="sutun-12">

	<li><a class="<?php if ($sayfa == "Anasayfa" ) echo "aktif" ?>" href="<?= $anasayfaBaglantisi ?>"><i class="fa fa-user fa-3x menu-ikon"></i><br>Profil</a></li>
	<li><a class="<?php if ($sayfa == "Özgeçmiş" ) echo "aktif" ?>" href="ozgecmis.php"><i class="fa fa-file-text fa-3x menu-ikon"></i><br>Özgeçmiş</a></li>
	<li><a class="<?php if ($sayfa == "Galeri" ) echo "aktif" ?>" href="galeri.php"><i class="fa fa-picture-o fa-3x menu-ikon"></i><br>Galeri</a></li>
	<li><a class="<?php if ($sayfa == "Blog" ) echo "aktif" ?>" href="blog.php"><i class="fa fa-commenting fa-3x menu-ikon"></i><br>Blog</a></li>
	<li><a class="<?php if ($sayfa == "İletişim" ) echo "aktif" ?>" href="iletisim.php"><i class="fa fa-envelope fa-3x menu-ikon"></i><br>İletişim</a></li>
	<li class="acMenu">

		<a href="#" class="diger"><i class="fa fa-bars fa-3x menu-ikon"></i><br>Diğer</a>

			<ul>

				<li><a href="#">Okuduğum Kitaplar (YAKINDA)</a></li>
				<li><a href="#">Beğendiğim Filmler (YAKINDA)</a></li>

			</ul>

	</li>

</ul>
<div class="temizle"></div>

</nav> <!-- menu sonu -->

<?php

}// Menü fonksiyonu sonu




// Alt Kısım fonksiyonu başı
function tema_altKisim() {

?>

<div class="altKisim satir">

	<footer class="sutun-12">

		<p>Telif Hakkı © 2015-2016 Cüneyt TAŞ</p>

	</footer>

</div> <!-- altKisim satir sonu -->

<?php

}// Alt Kısım fonksiyonu sonu



function tema_sablon($sayfa) {
?>
<!DOCTYPE html>
<html lang="tr">

	<?php tema_head($sayfa); ?>

	<body>

	<div class="ana satir">

		<?php tema_solSutun(); ?>

 		<section class="sagSutun sutun-9">

 			<?php tema_Menu($sayfa); ?>

 			<div class="icerik satir">

	 			<?php sayfaIcerigi(); ?>

 			</div> <!-- icerik sonu -->

 			<?php tema_altKisim(); ?>

 		</section>	<!-- sagSutun sonu -->

 	</div>	<!-- ana sonu -->

	</body>

</html>



<?php
}
?>

