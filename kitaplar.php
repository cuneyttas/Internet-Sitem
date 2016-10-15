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

		<li class="sutun-4">

		<div class="kitAlani">

			<img src="resim/kitap/od.jpg" alt="Od" width="202" height="250px">

			<div class="kitBilgi">
			<h2 class="kitIsmi">Hz. Muhammed Hayatı ve Örnek Kişiliği</h2>
		    <ul class="profil">

				<li class="satir"><label class="proBaslik sutun-6">Yazar Adı:</label><span class="proBilgi sutun-6">Hatice Tatlı - Hasan İpek</span></li>
				<li class="satir"><label class="proBaslik sutun-6">Sayfa Sayısı:</label><span class="proBilgi sutun-6">359</span></li>
				<li class="satir"><label class="proBaslik sutun-6">Basım Yılı:</label><span class="proBilgi sutun-6">?</span></li>
				<li class="satir"><label class="proBaslik sutun-6">Bitirdiğim Tarih:</label><span class="proBilgi sutun-6">15 Şubat 2016</span></li>

			</ul>
			</div> <!-- Kitap Bilgi Alanının Sonu -->

		</div> <!-- Kitap Alanının Sonu -->


		</li>
		<li class="sutun-4"></li>
		<li class="sutun-4"></li>
		<li class="sutun-4"></li>
		<li class="sutun-4"></li>
		<li class="sutun-4"></li>
		<li class="sutun-4"></li>
		<li class="sutun-4"></li>
		<li class="sutun-4"></li>


	</div>


</div> <!-- iceriğin sağ tarafının sonu -->

<?php
}

tema_sablon( $sayfa );

?>