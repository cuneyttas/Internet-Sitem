<?php
include("fonksiyonlar.php");


//Sayfa başlığını (title) ayarlıyoruz
if ( !isset($_GET['blog']) || !is_numeric($_GET['blog']) ) {

	$sayfaBasligi = "Blog";

} else {

	$sayfaBasligi = stripslashes($bloglar[$_GET['blog']]['blog_adi']);

}

function sayfaIcerigi() {

	global $baglanti;

	function zamanDuzenle($zaman) { // Zaman formatını düzenleme

		return strftime( '%e %B %Y', strtotime($zaman) );

	}

	function resimGetir($resimID) {

		global $baglanti;

		$resim = $baglanti->query('SELECT resim FROM Resimler WHERE resim_ID = '.$resimID, PDO::FETCH_ASSOC)->fetchAll();
		$resimTamAdi = $resim[0]["resim"]; // Örnek: resim.jpg
		$resimAdi = explode(".", $resimTamAdi); // resim ve jpg'nin ayrı ayrı tutulduğu dizi
		$resimUzanti = $resimAdi[1]; // Örnek: jpg
		$resimAdi = $resimAdi[0]; // Örnek: resim

		return array(

			"dosyaAdi" => $resimAdi,
			"uzanti" => $resimUzanti

		);

	}

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



// Blogların listelendiği sayfa
if ( !isset($blogNo) ) {

	$birSayfadakiBlog = 3;
	// offset: Sayfalamada bir sonraki sayfanın verilerinin nereden itibaren başlayacağını gösterir.
	$offset = ($sayfaNo - 1) * $birSayfadakiBlog;
	$dahaSayfaVar = false;


	//Veritabanından verileri çekiyoruz
	try {

		$ifade = $baglanti->prepare("SELECT blog_ID, blog_adi, blog_ozet, blog, blog_tarih, resim_ID FROM Bloglar ORDER BY blog_tarih DESC LIMIT $birSayfadakiBlog OFFSET $offset");
		$ifade->execute();
		$sonuc = $ifade->setFetchMode(PDO::FETCH_ASSOC);
		$bloglar = $ifade->fetchAll();
		$toplamBlog = $baglanti->query('SELECT COUNT(*) FROM Bloglar')->fetchColumn();

	} catch(PDOException $i) {

		echo "Blog listesi verileri çekilemedi: " . $i->getMessage();

	}


	// Bir sonraki sayfanın olup olmadığını sorgular
	if ($toplamBlog - $birSayfadakiBlog * $sayfaNo > 0) $dahaSayfaVar = true;

	if (count($bloglar) == 0) echo "HİÇ BLOG BULUNAMADI";


	// Blogların listelendiği döngünün başı
	foreach ( $bloglar as $blog ) {

?>
		<article class="ozet satir">

			<div class="ozetResim sutun-4">

				<figure>

					<a href="?blog=<?=$blog["blog_ID"]?>"><img src="resim/<?=resimGetir($blog["resim_ID"])["dosyaAdi"]?>_thumb_k.<?=resimGetir($blog["resim_ID"])["uzanti"]?>" alt="<?=$blog["blog_adi"]?>"></a>

				</figure>

			</div> <!-- ozetResim sonu -->
			<div class="blogOzet sutun-8">

				<h2><a href="?blog=<?=$blog["blog_ID"]?>"><?=$blog["blog_adi"]?></a></h2>
				<p><?=$blog["blog_ozet"]?></p>

				<span class="blogTarih"><?=zamanDuzenle($blog["blog_tarih"])?></span>
				<a class="buton" href="?blog=<?=$blog["blog_ID"]?>">Devamını Oku</a>

			</div> <!-- blogOzet sonu -->

		</article>
<?php

	} // Blogların listelendiği döngünün sonu

?>
	<!-- Sayfalama -->
    <div class="sayfalama satir">
    	<div class="sol sutun-6">
			<?php if ($sayfaNo > 1) echo "<a href='?sayfa=".($sayfaNo-1)."'>< ÖNCEKİ SAYFA</a>"; ?>
		</div>
		<div class="sag sutun-6">
			<?php if ($dahaSayfaVar) echo "<a href='?sayfa=".($sayfaNo+1)."'>SONRAKİ SAYFA ></a>"; ?>
		</div>
	</div>

<?php

// Her bir bloğun gösterildiği sayfa
} else {

	//Veritabanından verileri çekiyoruz
	try {

		$ifade = $baglanti->prepare("SELECT blog_ID, blog_adi, blog, blog_tarih, resim_ID FROM Bloglar WHERE blog_ID = $blogNo");
		$ifade->execute();
		$sonuc = $ifade->setFetchMode(PDO::FETCH_ASSOC);
		$blog = $ifade->fetchAll()[0];

	} catch(PDOException $i) {

		echo "Blog içerik verileri çekilemedi: " . $i->getMessage();

	}

	echo "<pre>";
	print_r($bloglar);
	echo "</pre>";

?>

<article class="blog">

	<h1 id="basaDon"><?=stripslashes($blog['blog_adi'])?></h1>
	<figure class="blogResim">

		<img src="resim/<?=resimGetir($blog["resim_ID"])["dosyaAdi"]?>_thumb_b.<?=resimGetir($blog["resim_ID"])["uzanti"]?>">

	</figure>
	<?=stripslashes($blog['blog'])?>

</article>
<div class="temizle"></div>
<div class="blogAlt satir" style="margin-top: 50px;">

	<div class="blogBilgi sutun-9">

		<span class="blogTarih"><?=zamanDuzenle($blog['blog_tarih'])?></span>

	</div> <!-- blogBilgi sonu -->
	<div class="blogMenu sutun-3">

		<!-- Bloglar Düğmesi -->
		<a class="buton" href="blog.php"><i class="fa fa-arrow-left blog-ikon"></i>Bloglar</a>

<?php

	$ilkBlogId = $baglanti->query('SELECT blog_ID FROM Bloglar ORDER BY blog_tarih LIMIT 1', PDO::FETCH_ASSOC)->fetchAll()[0]["blog_ID"];
	$sonBlogId = $baglanti->query('SELECT blog_ID FROM Bloglar ORDER BY blog_tarih DESC LIMIT 1', PDO::FETCH_ASSOC)->fetchAll()[0]["blog_ID"];
	$oncekiBlogId = $baglanti->query("SELECT blog_ID FROM Bloglar WHERE blog_ID = (SELECT MAX(blog_ID) from Bloglar where blog_ID < $blogNo)", PDO::FETCH_ASSOC)->fetchAll()[0]["blog_ID"];
	$sonrakiBlogId = $baglanti->query("SELECT blog_ID FROM Bloglar WHERE blog_ID = (SELECT MIN(blog_ID) from Bloglar where blog_ID > $blogNo)", PDO::FETCH_ASSOC)->fetchAll()[0]["blog_ID"];

?>

		<!-- Önceki Blog Düğmesi -->
		<a class="buton <?php if ($blogNo==$ilkBlogId) echo "deaktif"; ?>" href="<?php if ($blogNo==$ilkBlogId) echo "#"; else echo "?blog=".$oncekiBlogId; ?>"><i class="fa fa-arrow-left"></i></a>

		<!-- Sonraki Blog Düğmesi -->
		<a class="buton <?php if ($blogNo==$sonBlogId) echo "deaktif"; ?>" href="<?php if ($blogNo==$sonBlogId) echo "#"; else echo "?blog=".$sonrakiBlogId; ?>"><i class="fa fa-arrow-right"></i></a>


	</div> <!-- blogMenu sonu -->

</div> <!-- blogAlt sonu -->
<?php

}

?>

</div> <!-- sutun-12 sonu -->

<?php

}

tema_sablon( $sayfaBasligi );

?>