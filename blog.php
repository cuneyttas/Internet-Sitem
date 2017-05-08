<?php
include("fonksiyonlar.php");
include("blog_veriler.php");





if ( !isset($_GET['blog']) || !is_numeric($_GET['blog']) ) {

	$sayfa = "Blog";

} else {

	$sayfa = $bloglar[$_GET['blog']]['baslik'];

}

function sayfaIcerigi() {
	global $bloglar;
?>

<div class="sutun-12">
<?php

if ( isset($_GET['sayfa']) && is_numeric($_GET['sayfa']) && !isset($_GET['blog']) ) {
	$sayfaNo = $_GET['sayfa'];
} elseif ( !isset($_GET['sayfa']) && !isset($_GET['blog']) ) {
	$sayfaNo = 1;
} elseif ( !isset($_GET['sayfa']) && isset($_GET['blog']) && is_numeric($_GET['blog']) ) {
	$blogNo = $_GET['blog'];
} else {
	$sayfaNo = 1;
}


if ( !isset($blogNo) ) {

	$birSayfadakiBlog = 5;
	$i = 0;
	$dahaSayfaVar = false;
	krsort($bloglar);

	foreach ( $bloglar as $blogNo => $blogBilgi ) {

		$i++;

		if ( $i <= $birSayfadakiBlog * ($sayfaNo-1) ) continue;
?>
<article class="ozet satir">

	<div class="ozetResim sutun-4">

		<figure>

			<a href="?blog=<?=$blogNo?>"><img src="resim/<?=$blogBilgi["resim"]?>_thumb_k.jpg" alt="<?=$blogBilgi["baslik"]?>"></a>

		</figure>

	</div> <!-- ozetResim sonu -->
	<div class="blogOzet sutun-8">

		<h2><a href="?blog=<?=$blogNo?>"><?=$blogBilgi["baslik"]?></a></h2>
		<p><?=$blogBilgi["kisa_icerik"]?></p>

		<span class="blogTarih"><?=$blogBilgi["tarih"]?></span>
		<a class="buton" href="?blog=<?=$blogNo?>">Devamını Oku</a>

	</div> <!-- blogOzet sonu -->

</article>

<?php

		if ( $i == $birSayfadakiBlog * $sayfaNo ) {

			if (count($bloglar) > $i) $dahaSayfaVar = true;
			break;
		}

	}

	if ($i == 0) echo "HİÇ BLOG BULUNAMADI";

	?>

    <div class="sayfalama satir">
    	<div class="sol sutun-6">
			<?php if ($sayfaNo > 1) echo "<a href='?sayfa=".($sayfaNo-1)."'>< ÖNCEKİ SAYFA</a>"; ?>
		</div>
		<div class="sag sutun-6">
			<?php if ($dahaSayfaVar) echo "<a href='?sayfa=".($sayfaNo+1)."'>SONRAKİ SAYFA ></a>"; ?>
		</div>
	</div>

<?php
} else {
?>

<article class="blog">

	<h1 id="basaDon"><?=$bloglar[$blogNo]['baslik']?></h1>
	<figure class="blogResim">

		<img src="resim/<?=$bloglar[$blogNo]['resim']?>_thumb_b.jpg">

	</figure>
	<?=$bloglar[$blogNo]['uzun_icerik']?>
	<?php

		if($_GET['blog']==0) include("deneme.php");

	?>

</article>
<div class="temizle"></div>
<div class="blogAlt satir" style="margin-top: 50px;">

	<div class="blogBilgi sutun-9">

		<span class="blogTarih"><?=$bloglar[$blogNo]['tarih']?></span>

	</div> <!-- blogBilgi sonu -->
	<div class="blogMenu sutun-3">
		<?php

			$blogNolari = array_keys($bloglar); // Blogların sadece anahtarlarının (ID'lerinin) alınması. Örnek: [3] => a, [4] => b ... [3,4]
			$blogNolariCevrimi = array_flip($blogNolari); // Anahtar ve değerlerinin yer değiştirilmesi. Örnek: [0] => 1 ... [1] => 0
			$oncekiBlogSira = $blogNolariCevrimi[$blogNo]-1;
			$blogNolariTersi = array_reverse($blogNolari); // Değerlerin tersten sıralanması. Örnek: [0] => a, [1] => b ... [0] => b, [1] => a
			$sonrakiBlogSira = $blogNolariCevrimi[$blogNo]+1;

/*
			$blogNolari
				(
				    Sıra   ID
				    [0] => 1
				    [1] => 2
				    [2] => 4
				)

			$blogNolariÇevrimi
				(
					ID     SIRA
				    [1] => 0
				    [2] => 1
				    [4] => 2
				)

			$blogNolariTersi
				(
				    Sıra   ID
				    [0] => 4
				    [1] => 2
				    [2] => 1
				)


*/
		?>
		<!-- Bloglar Düğmesi -->
		<a class="buton" href="blog.php"><i class="fa fa-arrow-left blog-ikon"></i>Bloglar</a>

		<!-- Önceki Blog Düğmesi -->
		<a class="buton <?php if ($blogNolari[0]==$blogNo) echo "deaktif"; ?>" href="<?php if ($blogNolari[0]==$blogNo) echo "#"; else echo "?blog=".($blogNolari[$oncekiBlogSira]); ?>"><i class="fa fa-arrow-left"></i></a>

		<!-- Sonraki Blog Düğmesi -->
		<a class="buton <?php if ($blogNolariTersi[0]==$blogNo) echo "deaktif"; ?>" href="<?php if ($blogNolariTersi[0]==$blogNo) echo "#"; else echo "?blog=".($blogNolari[$sonrakiBlogSira]); ?>"><i class="fa fa-arrow-right"></i></a>


	</div> <!-- blogMenu sonu -->

</div> <!-- blogAlt sonu -->
<?php

}

?>



</div> <!-- sutun-12 sonu -->

<?php
}

tema_sablon( $sayfa );

?>