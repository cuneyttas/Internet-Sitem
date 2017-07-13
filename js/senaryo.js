jQuery(document).ready(function($){

   // Açılır Menü Tasarımı Başlangıcı
   $("nav.menu li.menu-item-has-children").hover(function(){

	   if ( $("div.ana").width() > 768 ){

		   $(this).find("ul:hidden").slideDown("fast");
		   $(this).addClass("current-menu-item");

	   }

   },function(){

	   if ( $("div.ana").width() > 768 ){

		   $(this).find("ul:visible").slideUp("fast");
		   $(this).removeClass("current-menu-item");

	   }

   });

   $("nav.menu li.menu-item-has-children > a").click(function(){

	   $(this).next("ul:visible").slideUp("fast").prev().removeClass("aktif");
	   $(this).next("ul:hidden").slideDown("fast").prev().addClass("aktif");

	   return false; // Tıklama işlemini yok saymak için. Yani link olan "a" etiketinin çalışmasını engeller

   }); // Açılır Menü Tasarımı Sonu


    // Colorbox Başlangıcı
	$("ul.resimler > li a").colorbox({rel: "grup", transition: "fade"});

    //ColorBox Türkçeleştirme Başlangıcı
    jQuery.extend(jQuery.colorbox.settings, {

	    current: "{current} / {total}",
	    previous: "Önceki",
	    next: "Sonraki",
	    close: "Kapat",
	    xhrError: "İçerik yüklenirken hata oluştu!",
	    imgError: "Resim yüklenirken hata oluştu!"

	}); //ColorBox Türkçeleştirme Sonu



});