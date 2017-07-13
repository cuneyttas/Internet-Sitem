<?php

// Yönetici Sayfası Ayarları
function yoneticiSayfasiEkle() {

	// Sayfayı Oluşturma
	add_menu_page('Tema Ayarları', 'Cüneyt TAŞ', 'manage_options', 'site_ayarlari', 'sayfaOlustur', 'dashicons-admin-generic', 110);
	// İkon "get_template_directory_uri().'/images/favicon.ico' " benzeri şekilde de eklenebilir.

	// Alt sayfaları oluşturma
	add_submenu_page('site_ayarlari', 'Tema Ayarları', 'Genel Ayarlar', 'manage_options', 'site_ayarlari', 'sayfaOlustur');
	add_submenu_page('site_ayarlari', 'CSS Ayarları', 'CSS Ayarları', 'manage_options', 'site_ayarlari_css', 'ayarSayfasiOlustur');

	// Ayarları etkinleştirme
	add_action('admin_init', 'adminAyarlari');

}

add_action('admin_menu', 'yoneticiSayfasiEkle');

function adminAyarlari() {

	register_setting('ayarGrubu', 'adres');
	register_setting('ayarGrubu', 'birincilEposta');
	register_setting('ayarGrubu', 'ikincilEposta');
	register_setting('ayarGrubu', 'haritaBilgisi');
	add_settings_section('iletisimSecenekleri', 'İletişim Sayfası Ayarları', 'iletisimAyarlari', 'site_ayarlari');
	add_settings_field('adres', 'Adres:', 'adresAlaniEkle', 'site_ayarlari', 'iletisimSecenekleri');
	add_settings_field('birincilEposta', 'Birincil E-posta:', 'birincilEpostaAlaniEkle', 'site_ayarlari', 'iletisimSecenekleri');
	add_settings_field('ikincilEposta', 'İkincil E-posta:', 'ikincilEpostaAlaniEkle', 'site_ayarlari', 'iletisimSecenekleri');
	add_settings_field('haritaBilgisi', 'Harita Bilgisi:', 'haritaBilgisiEkle', 'site_ayarlari', 'iletisimSecenekleri');

}

function iletisimAyarlari() {

	echo 'İletişim bilgileri ayarlarını buradan güncelleyebilirsin.';

}

function adresAlaniEkle() {

	$adresDegeri = esc_attr(get_option('adres'));  // 'adres' yukarıdaki register_setting'deki 'adres' değeri ile aynı
	echo '<input type="text" name="adres" value="'.$adresDegeri.'" placeholder="Adresi gir">';

}

function birincilEpostaAlaniEkle() {

	$birincilEpostaDegeri = esc_attr(get_option('birincilEposta'));
	echo '<input type="text" name="birincilEposta" value="'.$birincilEpostaDegeri.'" placeholder="Birincil E-posta Adresi" size="25"><p class="description">Birincil e-posta adresinizi girmeniz zorunludur.</p>';

}

function ikincilEpostaAlaniEkle() {

	$ikincilEpostaDegeri = esc_attr(get_option('ikincilEposta'));
	echo '<input type="text" name="ikincilEposta" value="'.$ikincilEpostaDegeri.'" placeholder="İkincil E-posta Adresi" size="25">';

}

function haritaBilgisiEkle() {

	$haritaBilgisiDegeri = get_option('haritaBilgisi');
	echo '<textarea rows="4" cols="50" name="haritaBilgisi" placeholder="Konum değerlerini buraya yapıştır">'.$haritaBilgisiDegeri.'</textarea>';

}


// Yönetici Sayfasını Oluşturma
function sayfaOlustur() {

	require_once(get_template_directory().'/admin.php');

}

function ayarSayfasiOlustur() {

	echo '<h1>Site CSS Ayarları</h1>';

}
















?>