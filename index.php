<?php
	include("fonksiyonlar.php");
	$sayfa = "Anasayfa";

function sayfaIcerigi() {
?>
<div class="sutun-6">

	<h2>Profil Sayfası</h2>
	<ul class="profil">

		<li class="satir"><label class="proBaslik sutun-4">İsim:</label><span class="proBilgi sutun-8">Cüneyt TAŞ</span></li>
		<li class="satir"><label class="proBaslik sutun-4">E-posta:</label><span class="proBilgi sutun-8">cuneyttas@hotmail.com.tr</span></li>
		<li class="satir"><label class="proBaslik sutun-4">Memleket:</label><span class="proBilgi sutun-8">Çorum</span></li>

	</ul>
	<p>Kişisel internet siteme hoşgeldiniz.</p>
	<p>Bu sitede blog yazıları, makaleler, paylaşımlar, fotoğraflar, okuyup beğendiğim kitaplar, önerdiğim filmler, özgeçmişime dair bilgiler ve daha bir çok şeyi sizlerle paylaşmayı düşünüyorum. Facebook ve Twitter hesaplarımı kapatalı yıllar oldu. Bu tür sosyal ağlar yerine kendi sitemden paylaşımlar yapmış olacağım, hem de internet sitemi sürekli geliştirerek internet programlama ve tasarımı bilgilerimi de bununla beraber geliştirmeyi düşünüyorum.</p>

	<!-- <h2>Başlık</h2>
	<p>

		<i class="fa fa-quote-left"></i>
		<i class="fa fa-quote-right"></i>
		<span class="yazar"></span>

	</p> -->

</div> <!-- iceriğin sol tarafının sonu -->

<div class="sutun-6">

	<img class="anaResim" src="resim/turk-kedisi.jpg" alt="Kedi Karikatürü" width="370" height="414">

</div> <!-- iceriğin sağ tarafının sonu -->

<?php
}

tema_sablon( $sayfa );

?>