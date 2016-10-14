$(document).ready(function(){

   // Açılır Menü Tasarımı Başlangıcı
   $("nav.menu li.acMenu").hover(function(){

	   if ( $("div.ana").width() > 768 ){

		   $(this).find("ul:hidden").slideDown("fast");
		   $(this).children("a:first").addClass("aktif");

	   }

   },function(){

	   if ( $("div.ana").width() > 768 ){

		   $(this).find("ul:visible").slideUp("fast");
		   $(this).children("a:first").removeClass("aktif");

	   }

   });

   $("nav.menu li.acMenu > a").click(function(){

	   $(this).next("ul:visible").slideUp("fast").prev().removeClass("aktif");
	   $(this).next("ul:hidden").slideDown("fast").prev().addClass("aktif");

	   return false; // Tıklama işlemini yok saymak için. Yani link olan "a" etiketinin çalışmasını engeller

   }); // Açılır Menü Tasarımı Sonu



   // Galeri Sekmeleri Başlangıcı
   $("ul.sekmeler a.grup").click(function(){

	   var sayfa = $(this).data("sayfa");

	   $("ul.resimler").hide();
	   $("ul[data-sayfa='"+sayfa+"']").show();

	   $("ul.sekmeler a.grup").removeClass("aktif");
	   $(this).addClass("aktif");

	   return false;

   }); // Galeri Sekmeleri Sonu


    // Colorbox Başlangıcı
    $("ul.resimler").each(function(){

	    var sayfa = $(this).data("sayfa");

	    $("ul.resimler[data-sayfa='"+sayfa+"'] a").colorbox({rel: sayfa, transition: "fade"});

    }); // Colorbox Sonu

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