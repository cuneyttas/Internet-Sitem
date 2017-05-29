-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 29 May 2017, 14:51:53
-- Sunucu sürümü: 5.6.35
-- PHP Sürümü: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `cuneyt-tas`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Bloglar`
--

CREATE TABLE `Bloglar` (
  `blog_ID` int(5) NOT NULL,
  `blog_adi` varchar(100) NOT NULL,
  `blog_ozet` varchar(500) NOT NULL,
  `blog` longtext NOT NULL,
  `blog_tarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blog_kaynaklar` varchar(500) NOT NULL,
  `resim_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `Bloglar`
--

INSERT INTO `Bloglar` (`blog_ID`, `blog_adi`, `blog_ozet`, `blog`, `blog_tarih`, `blog_kaynaklar`, `resim_ID`) VALUES
(1, 'İnternet Sitem Artık Yayında', '2015 senesinin yaz mevsiminde yapımına başladığım kişisel internet sitem nihayet 13 Ekim 2016’da kullanıma açıldı...', '<p>2015 senesinin yaz mevsiminde yapımına başladığım kişisel internet sitem nihayet 13 Ekim 2016’da kullanıma açıldı. Uzun zamandır üzerinde çalıştığım bu site şu an görünümde diğer kişisel sitelerden pek de farklı görünmese de gitgide farklı bir yol izlemeye başlayacak. Facebook, Twitter gibi sosyal ağlardan paylaşımlar yapmak yerine kendi internet sitemden benzer paylaşımlar yapacağım. Tek kullanacağım sosyal iş ağı, LinkedIn olacak. Öncelikli hedefim paylaşımların daha çok kişiye ulaşması olmadığından siteme kaç kişinin girdiği, ne kadar durduğu, ne gibi yorumlar yaptığı gibi hususlar beni pek ilgilendirmeyecek. Bu siteyi geliştirmekteki asıl amacım, internet programlamadaki bilgilerimi tazelemek ve bu site üzerinden test etmek olacak. HTML, CSS, JavaScript, Jquery, PHP ve daha bir çok teknolojiyi bu site üzerinden öğrenip uygulama yapacağım. Dışardan gelen kullanıcılar sitenin bazı sayfalarında gördüğü tuhaf uygulamalara anlam veremeyebilirler. Ama aslında o anlamsız gibi görünen yerler benim test sayfam olabilecek.</p>\r\n\r\n	<p>Bu site hakkında detaylı bilgi vererek başlayalım. Kişisel internet sitemi yapmak için öncelikle internette satışı yapılan hazır şablon siteleri inceledim. Ücretli olanları özellikle inceledim ki ücretsiz olanlara göre daha kaliteli internet sitelerini inceleyebiliyim. Amacım hazır olarak bu sitelerin birisini alıp onun üzerinde değişiklik yapıp kişisel internet sitemi oluşturmak değildi. Bunlardan bir tanesini seçip, onun tasarımına benzeterek sıfırdan yeni bir internet sitesi inşa etmekti. Öyle de yaptım. O zaman hoşuma giden bir tanesini örnek alarak HTML, CSS, JavaScript ve PHP kodlamalarıyla tıpkısının aynısı olmasa da kendime göre bu hale getirdim. Tabi kardeşim <a href=\'http://www.bilaltas.net/\' title=\'Kardeşimin Kişisel İnternet Sitesi\' target=\'_blank\'>Bilal TAŞ</a>’ın yardımlarından da faydalandığımı söylemeden de olmaz. Kendisi internet tasarımcı ve programlayıcısı olan kardeşim de bana yardımlarını ve desteklerini esirgemediği için buradan bir daha teşekkürlerimi sunuyorum. </p>\r\n\r\n	<p>Dikkat ederseniz blog yazımdan ve sitemin diğer yerlerinden de görüleceği gibi mümkün olduğunca İngilizce kelimelerden kaçınmaya çalışıyorum. Bilgisayar alanında  çalışırken İngilizce kelimelerden kaçmak her ne kadar zor olsa da yine de “Web Sitem” yerine “İnternet Sitem” gibi kullanımları tercih ediyorum. İleride açık kaynak olarak sitemin kodlarını yayınlayacağım zaman görürsünüz. Mümkün olduğunca değişkenler, fonksiyon isimleri, dosya ve sayfa isimleri gibi kelimeleri %90 oranında Türkçe yazmaya gayret ettim. Çünkü dilimizin İngilizce gibi dillerin boyunduruğu altına girmesine karşıyım. Yanlış anlaşılmasın, İngilizce öğrenilmesine karşı değilim. Ben de öğreniyorum. Ama Türkçe konuşup yazarken, İngilizce kelimelerin araya girmesinden hoşlanmıyorum. </p>\r\n\r\n	<p>Sitemin sayfaları Profil, Özgeçmiş, Galeri ve İletişim isimli ana sayfalardan oluşuyor. Yardımcı sayfaları da günden güne ekleyeceğim. Şimdilik okuduğum kitapları listelediğim bir sayfam var. <a href=\'http://www.cuneyt-tas.com/\' title=\'Profil Sayfası\' target=\'_blank\'>Profil</a> sayfasını daha interaktif hale getirmeyi düşünüyorum. Son güncellemelerin özeti burada gösterilecek. <a href=\'http://www.cuneyt-tas.com/ozgecmis.php\' title=\'Özgeçmiş Sayfası\' target=\'_self\'>Özgeçmiş</a>’te benim özgeçmişimin abartılı bir şekilde fazlasını görebilirsiniz. Abartıyı seviyorum. :) <a href=\'http://www.cuneyt-tas.com/galeri.php\' title=\'Galeri Sayfası\' target=\'_parent\'>Galeri</a>‘ye beğendiğim ve paylaşmak istediğim genellikle kendi çektiğim fotoğrafları koyacağım. <a href=\'http://www.cuneyt-tas.com/iletisim.php\' title=\'İletişim Sayfası\' target=\'_top\'>İletişim</a>’den benle iletişime geçmek için e-posta gönderebilirsiniz. <a href=\'http://www.cuneyt-tas.com/blog.php\' title=\'Blog Sayfası\' target=\'_blank\'>Blog</a> sayfamda da her konudan yazılarımı sizlerle paylaşacağım. Sitemin tasarımından çok da memnun olmasamda her şey rayına oturana kadar bu şekilde devam edecek. Siteye yaptığım her bir yenilikle sürüm numarasını 0.1 oranında artırıyorum.</p>\r\n\r\n	<p>İlk blog yazımın da sonuna gelmiş bulunuyoruz. Yeni bir yazıyla görüşmek üzere hoşçakalın.</p>', '2017-04-23 21:00:00', '', 38),
(2, 'Vatan-Millet-Sakarya', 'Bu bloğu hem askerlik serüvenim için hatırat, hem de askere gidecekler için yol gösterici rehber olması için yazmaya karar verdim...', '<p>Askerlik görevi, ülkemizde zorunlu olarak uygulanan en önemli vatanî görevlerden biridir. Kimimiz işe başlamak için bir engel olarak görür onu, kimimiz “Askere gtimeyene kız verilmez.” sözüne binaen evlilik hayallerini askerlikten sonraya bırakır. Bir an önce askerliği yapıp önümüzdeki en büyük engeli ortadan kaldırmak isteriz. Yine de ülkemiz tarihinde yüzyıllardan beri süregelen bu vatanî görevimizin kutsallığının farkında olup peygamber ocağı dediğimiz bu vazifeye saygımızı da her daim gösteririz. Gerekirse bu uğurda şehit düşer veya gazi olup sakat kalırız. Bu bloğu hem askerlik serüvenim için <cite>hatırat</cite>, hem de askere gideceklere yol gösterici rehber olması için yazmaya karar verdim. Askerliğimi kısa dönem olarak yaptığım için, bir kısa dönem askerin gözüyle notlar düşeceğim.</p>\r\n\r\n	<p>Üniversiteden 2015 yılında mezun olduktan sonra askerlik şubesine gidip askerliğimi 2017 yılına kadar tecil ettirmiştim. Bu arada bir işe girip tecrübe edinme fikri vardı. Aynı zamanda boş kaldığım vakitte KPSS’ye de çalışacaktım. İşler benim umduğum gibi gitmedi. Askerlik her iş ilanında benim için büyük bir engel görünüyordu. Gireceğim işlerde de zaman geldiğinde askere gitmek için ayrılmam gerekecekti. Çok fazla umduğum gibi işler çıkmayınca mayıs ayındaki KPSS 2016 sınavından sonra tecili bozdurup o yıl askere gitmeyi planlamıştım. Haziranın ortaları gibi askerlik şubesine gidip tecili bozdurduğumda Kasım celbine asker olacağım söylenmişti. Ağustos celbini yaklaşık 15 günle kaçırmış, 5 ay sürecek uzun bir bekleyişe girmiş olacaktım. Buna çok dikkat etmeniz gerekiyor. Bir senede Şubat, Mayıs, Ağustos ve Kasım olmak üzere 4 celp dönemi var. Her bir dönemin de son başvuru tarihi var. Bu tarihleri geçirdiğinizde otomatik olarak bir sonraki celp dönemine sarkıyor.</p>\r\n\r\n	<p>Bu 5 aylık süre içerisinde ülke hain 15 Temmuz darbe girişimiyle şoka girmişti. Bu darbe girişimi Allah’ın izniyle önlenmişti. Ancak askerlik müessesinin itibarı halk nezdinde zedelenmişti. Darbeci askerlerin kendi halkına kurşun sıkması pek unutulacak bir hadise olmayacaktı. Ağustos celbine yetişemeyip kasım celbine askerliğe gitmem belki de olayların yatışması açısından hayırlı olmuştu benim için. Her ne kadar ülkede <abbr title=\'Olağanüstü Hal\'>OHAL</abbr> varken askerlik yapsam da bu benim askerliğim açısından olumsuz bir durum oluşturmamıştı.</p>\r\n\r\n	<p>Sonunda askerliğimi yapacağım acemilik ve ustalık birliklerimin yerleri açıklandı: Acemi birliğim, İzmir’in Narlıdere ilçesinde İstihkam Okulu ve Eğitim Merkezi Komutanlığı olurken usta birliğimin yeri olarak da Sakarya’nın merkez Adapazarı ilçesindeki şu destansı isim yazıyordu: 1. Motorlu Piyade Tugayı Taşkısığı Komutan Yardımcılığı 1. Motorlu Piyade Taburu Karargâh ve Karargâh Bölüğü Elmasağa Emniyet ve Muhafız Takım Komutanlığı.</p>\r\n\r\n	<p>Bu yazımda kışlalardaki kurallar, düzenler ve buraların tanıtımı hakkında bilgi veremeyeceğim. Ama özet olarak bir kaç konuya değineyim. Acemi birliğimde acemi asker sayısı çok olduğundan hastalıklar daha fazla oluyor. Boğazı şişmeyen, gözleri kızarıp çapaklanmayan asker sayısı neredeyse yok gibiydi. Mümkün olduğunca burada temizliğe dikkat etmeniz gerekiyor. Acemilikte 3 hafta boyunca askerî eğitimden çok tören yürüyüşü yaptık. Yemeklere ve diğer eğitim alanlarına hep marşlar, sloganlarla uygun adım eşliğinde yürüdük. Bu yüzden acemilikte oluşan ve hala 6 aydır geçmeyen ayak başparmaklarımda uyuşukluk oluştu. Acemilik bir bakıma 3 hafta sonraki yemin töreninize hazırlık eğitimi gibi geçiyor. Ben bu yürüyüş eğitimi yerine bize verilecek askerî eğitimleri tercih ederdim.</p>\r\n\r\n	<p>Yemin töreninden sonra Narlıdere’ye veda ettiğimde asıl birliğimin heyecanı sarmıştı beni. Sakarya yolculuğu başlamıştı. Akşam üzeri zor da olsa kışlayı bulmuştuk. 1 gün geç katılım yapmıştım. Terhis olacağım zaman da 1 gün geç çıkacaktım. Usta birliğimde çok ilginç, çeşitli tevafuklar yaşadım. Silah mazgal numaramın Çorum’un plaka numarası olan 19’un düşmesi gibi. Benim için en önemli ve hayret verici tevafuk ise kışladaki en rütbeli komutan olan kışla komutanının isminin de Cüneyt olmasıydı. Kendisi de benden 10 gün önce bu kışlaya kışla komutanı olarak atanmıştı. Bununla da kalmayıp, Cüneyt komutanın aslen Çorumlu olması sadece beni değil tüm arkadaşları da şaşırtmıştı. İhtimallere vurulduğunu düşünürsek; Türkiye’deki 81 il ve yüzlerce kışla arasında Sakarya’ya düşmem, Sakarya’daki 4-5 kışla içinde Elmasağa’ya düşmem ve kışla komutanı olarak buraya tayin olabilecek komutanlar arasında ismi Cüneyt olup, aynı zamanda memleketi Çorum olan birinin buraya düşmesi belki milyon ihtimalde bir olacak. Komutanımız bana bu durumdan dolayı özel ilgi göstermedi. Diğer arkadaşlardan farklı davranmadı. Olması gereken de bu olmalıydı zaten. Ben de böyle olmasını isterdim. Belki arkadaşların ismi unutabilirim, fakat komutanımızın ismini hiç unutamayacağım.</p>\r\n\r\n	<p>134 günüm silahlık ve santral görevlisi olarak geçti. Son bir haftamda nöbet mangasına geçerek yeni arkadaşlara devrettim görevi. İleriye baktığımızda bitmeyecek gibi görünen günler geçmiş, sonlara doğru <q>Ne de çabuk geçmiş 5 buçuk ay</q> dediğimiz günlere girmiştik. Böyle böyle askerliğin sonuna iyi-kötü ulaşmıştık. Değişik değişik insanlar, değişik değişik karakterler tanımıştık. Askeriyede işlerin hala ne kadar ağır işlediğinin farkına varmıştık. 2016 yılına gelinmesine rağmen 30-40 sene öncesinin mantığıyla bir grup askerin iktidara darbe yapıp, onu illegal yollarla devirebileceklerini düşünmelerini hiç kimse akıl sır erdiremezken, oraya gidince daha iyi anladık.</p>\r\n\r\n	<p>Artık Türkiye terörden çok çekti. Ne zaman şaha kalkmaya çalışsa ayaklarına çelme takmaya çalıştılar. Bunun için Türk Silahlı Kuvvetlerine, devletin yöneticilerine ve Türk halkına büyük iş düşüyor. <abbr title=\'Türk Silahlı Kuvvetleri\'>TSK</abbr> revizyona gitmeli, çağın gerektirdikleri yenilliklere ayak uydurmalı. Zorunlu askerlik yerine artık profesyonel ordu kurulmalı. Bütün silahlarımız, aletlerimiz, cihazlarımız, araçlarımız, tanklarımız, uçaklarımız yerli olmalı. Askerimiz seve seve yapmalı işini. Askerler eğitimlerini en iyi şekilde almalı. Bu işi meslek olarak yapıp, hakettikleri maaşları da verilirse yaptıkları işleri daha çok benimser ve işlerinde daha uzman olurlar. Belki o zaman daha güçlü bir askerî yapımız olur kanaatindeyim.</p>\r\n\r\n	<p>Daha yazacak çok şey vardı. Yazmak isteyip de yazamadıklarım, birbirinden değerli silah arkadaşlarım, komutanlarım, daha bir çok askerlik anılarım… Ama şimdilik bu yazımı Necip Fazıl\'ın Sakarya Türküsünden bir kesitle bitiriyorum, hoşçakalın.\r\n	<pre>\r\n\r\n	\\\"İnsan bu, su misali, kıvrım kıvrım akar ya;\r\n	Bir yanda akan benim, öbür yanda Sakarya.\r\n	Su iner yokuşlardan, hep basamak basamak;\r\n	Benimse alın yazım, yokuşlarda susamak.\r\n	Her şey akar, su, tarih, yıldız, insan ve fikir;\r\n	Oluklar çift; birinden nur akar; birinden kir.\r\n	Akışta demetlenmiş, büyük, küçük, kâinat;\r\n	Şu çıkan buluta bak, bu inen suya inat!\r\n	Fakat Sakarya başka, yokuş mu çıkıyor ne,\r\n	Kurşundan bir yük binmiş, köpükten gövdesine;\r\n	Çatlıyor, yırtınıyor yokuşu sökmek için.\r\n	Hey Sakarya, kim demiş suya vurulmaz perçin?\r\n	Rabbim isterse, sular büklüm büklüm burulur,\r\n	Sırtına Sakaryanın, Türk tarihi vurulur.\r\n	Eyvah, eyvah, Sakaryam, sana mı düştü bu yük?\r\n	Bu dâva hor, bu dâva öksüz, bu dâva büyük! ..\r\n\r\n	Ne ağır imtihandır, başındaki, Sakarya!\r\n	Binbir başlı kartalı nasıl taşır kanarya?\r\n\r\n	...										\\\"\r\n\r\n	</pre>\r\n	</p>\r\n\r\n	<a href=\'#basaDon\' style=\'float:right; border:1px solid #2288BB; padding:5px;\'>Başa Dön</a>', '2017-04-28 21:00:00', '', 39);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Is_Deneyimi`
--

CREATE TABLE `Is_Deneyimi` (
  `is_ID` int(2) NOT NULL,
  `unvan` varchar(100) NOT NULL,
  `is_baslama_tarihi` date NOT NULL,
  `is_bitis_tarihi` date NOT NULL,
  `sirket` varchar(100) NOT NULL,
  `gorev_tanimi` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `Is_Deneyimi`
--

INSERT INTO `Is_Deneyimi` (`is_ID`, `unvan`, `is_baslama_tarihi`, `is_bitis_tarihi`, `sirket`, `gorev_tanimi`) VALUES
(1, 'Stajyer', '2013-07-08', '2013-08-02', 'OSOA Yazılım ve Danışmanlık', 'C# programlama dili üzerine çalışarak bununla ilgili uygulamalar yaptım.'),
(2, 'Stajyer', '2014-06-30', '2014-07-25', 'Çorum Valiliği Bilgi İşlem Müdürlüğü', 'Sunucuya Windows Server 2008 işletim sisteminin kurulumunun öğrenilmesi; DNS, DHCP ve Active Directory kurulumu, Labris UTM-52 Güvenlik Cihazının Kontrolü, IP Dağıtma gibi işlemler yaptım.'),
(3, 'Stajyer', '2014-08-04', '2014-08-29', 'Hitit Üniversitesi Eğitim ve Araştırma Hastanesi Bilgi İşlem Birimi', 'Birimler arası ağ kablolama ve teknik destek gibi alanlarda çalıştım.'),
(4, 'Bilgi Teknolojileri Uzman Yardımcısı', '2015-12-28', '2016-02-29', 'Greyder Bilgi Teknolojileri Departmanı', 'Çorum Merkez ve İskilip Greyder fabrikalarının sunucu ve bilgisayarlarının bakım ve onarımı, ülke genelindeki mağazalara uzaktan teknik destek gibi işlerden sorumluydum.'),
(5, 'Web Geliştiricisi', '2017-05-29', '0000-00-00', 'Twelve12', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Kitaplar`
--

CREATE TABLE `Kitaplar` (
  `kitap_ID` int(4) NOT NULL,
  `kitap_adi` varchar(50) NOT NULL,
  `kitap_yazar` varchar(200) NOT NULL,
  `kitap_sayfa` int(5) NOT NULL,
  `kitap_basim_yili` year(4) NOT NULL,
  `kitap_bitis_tarihi` varchar(10) NOT NULL,
  `resim_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `Kitaplar`
--

INSERT INTO `Kitaplar` (`kitap_ID`, `kitap_adi`, `kitap_yazar`, `kitap_sayfa`, `kitap_basim_yili`, `kitap_bitis_tarihi`, `resim_ID`) VALUES
(1, 'Öğretmenin Not Defteri 1', 'Vehbi Vakkasoğlu', 204, 2004, '?', 40),
(2, 'Öğretmenin Not Defteri 2', 'Vehbi Vakkasoğlu', 175, 2004, '?', 41),
(3, 'Figan', 'Ahmed Günbay Yıldız', 253, 1995, '?', 42),
(4, 'Kalem Sırra Dokundu', 'Mehmet Erdoğan', 182, 2003, '?', 43),
(5, 'Hızırla Kol Kola', 'Mehmet Erdoğan', 192, 2004, '?', 44),
(6, 'Hayret! Dünya Dönüyor!', 'Ali Ünlü', 274, 0000, '?', 45),
(7, 'Kavak Yelleri', 'Reşat Nuri Güntekin', 381, 0000, '?', 46),
(8, 'Yahudileri Tanıyalım', 'M. Şahap Tan', 187, 0000, '?', 47),
(9, 'Hain Futbol', 'Michael Coleman', 160, 0000, '?', 48),
(10, 'Ketçap, Mayonez ve Sindirim', 'Nick Arnold', 156, 0000, '?', 49),
(11, 'Paradokslar ve Mantık Oyunları', 'Serhan Büyükkeçeci', 160, 0000, '?', 50),
(12, 'Türkiye Çocuk Rehber İlmihâli', 'Hasan Yavaş', 518, 1986, '?', 51),
(13, 'Ağrı Dağı Efsanesi', 'Yaşar Kemal', 114, 2003, '2017-05-25', 52),
(14, 'Tutuklu Yürek', 'Osman Çeviksoy', 128, 2003, '2017-05-25', 53),
(15, 'Yerim Seni ÖSS', 'Erdal Demirkıran', 228, 0000, '2017-05-25', 54),
(16, 'Sürücü Eğitim Rehberi', 'Hatice Tatlı, Melih Yılmaztürk, Hasan İpek', 512, 2007, '2017-05-25', 55),
(17, 'Doğru ve Güzel Konuşma', 'Birol Vural', 320, 2007, '2017-05-25', 56),
(18, 'Akılalmaz Yapılar', 'Michael Cox', 159, 0000, '2017-05-25', 57),
(19, 'Cerrah', 'Tess Gerritsen', 296, 2006, '2017-05-25', 58),
(20, 'Çırak', 'Tess Gerritsen', 390, 2008, '2017-05-25', 59),
(21, 'Da Vinci Şifresi', 'Dan Brown', 495, 2006, '2017-05-25', 60),
(22, 'İffeti Yaşayanlar', 'Said Demirtaş', 139, 2009, '2017-05-25', 61),
(23, 'Gölgelerle Oyun', 'Hülya Yakut Üstündağ', 238, 1997, '2017-05-25', 62),
(24, 'Sol Ayağım', 'Christy Brown', 160, 2006, '2017-05-25', 63),
(25, 'İnsan Denen Mucize', 'Ahmet Yakut', 86, 1996, '2017-05-25', 64),
(26, 'İslam ve Fizik ', 'Şaban Döğen', 163, 1995, '2017-05-25', 65),
(27, 'Olasılıksız', 'Adam Fawer', 472, 2007, '2017-05-25', 66),
(28, 'Türkleri Anlama Kılavuzu 2', 'Zeki Kayahan Coşkun', 155, 0000, '2017-05-25', 67),
(29, 'Farz Et Ki Öldün', 'Ebu Abdullah Haris El-Muhasibi', 96, 0000, '2017-05-25', 68),
(30, 'Minyeli Abdullah', 'Hekimoğlu İsmail', 237, 1979, '2017-05-25', 69),
(31, 'İki Darbe Arasında', 'İskender Pala', 265, 2010, '2017-05-25', 70),
(32, 'Sözmetre', 'Lilay Koradan', 153, 2005, '2017-05-25', 71),
(33, 'Kur\'an-ı Kerim Meali', 'Muhammed Hamdi Yazır', 302, 0000, '2017-05-25', 72),
(34, 'Etkili Konuşma', 'Cristina Stuart', 290, 1999, '2010-07-02', 73),
(35, 'Melekler ve Şeytanlar', 'Dan Brown', 575, 0000, '2010-07-07', 74),
(36, 'Peygamberimizin İnsan Kazanma Metodu', 'Mehmet Dikmen', 191, 1992, '2010-07-07', 75),
(37, 'Alacakaranlık', 'Stephenie Meyer', 407, 2009, '2010-07-14', 76),
(38, 'Fatih Sultan Mehmet ve Fetih', 'Mustafa Uslu', 174, 2005, '2010-07-17', 77),
(39, 'Empati', 'Adam Fawer', 639, 2008, '2010-08-01', 78),
(40, 'İlimlerin Diliyle Allah', 'Şaban Döğen', 398, 1995, '2010-08-30', 319),
(41, 'Muhafız', 'Selman Kayabaşı', 283, 2009, '2010-09-02', 320),
(42, 'Senin İçin', 'Hülya Kartal', 222, 2001, '2010-09-09', 321),
(43, 'Kayıp Sembol', 'Dan Brown', 527, 2009, '2010-09-17', 322),
(44, 'Yeniay', 'Stephenie Meyer', 440, 2009, '2010-10-14', 323),
(45, 'Dünya Düzdür', 'Thomas Loren Friedman', 459, 2010, '2010-11-12', 324),
(46, 'Çorum Evliyaları', 'Ethem Erkoç', 82, 0000, '2010-11-28', 325),
(47, 'Hz. Muhammed Hayatı ve Örnek Kişiliği', 'Mehmet Mahfuz Söylemez', 62, 2005, '2010-12-20', 326),
(48, '2012 Kristal Kafatası', 'Manda Scott', 448, 2010, '2011-02-08', 327),
(49, 'Altın Prensipler', 'Zübeyir Gündüzalp', 84, 1994, '2011-02-09', 328),
(50, 'Senaryo Romanları', 'Necip Fazıl Kısakürek', 357, 0000, '2011-02-15', 329),
(51, 'Gençlerle Söyleşi', 'Mehmet Erdoğan', 68, 2003, '2011-02-18', 330),
(52, 'Öldürücü Matematik', 'Kjartan Poskitt', 160, 0000, '2011-07-04', 331),
(53, 'Gözüpek Kâşifler', 'Anita Ganeri', 208, 0000, '2011-07-10', 332),
(54, 'Huzur', 'Ahmet Hamdi Tanpınar', 356, 0000, '2011-07-27', 333),
(55, 'Zamanı Değerlendirme San\'atı', 'Muhsin Abay', 35, 1995, '2011-07-30', 334),
(56, 'Cennet Çocukları', 'Seyfettin Bulut', 175, 2001, '2011-08-05', 335),
(57, 'İslâm ve İlim', 'Şaban Döğen', 281, 2000, '2011-10-22', 336),
(58, '2050', 'David Passig', 387, 2011, '2011-12-10', 337),
(59, 'İnsanca Yaşamak', 'Şaban Döğen', 139, 1996, '2012-08-15', 338),
(60, 'Alevîlik Bektaşilik Üzerine…', 'Mürsel Şahinbaş', 148, 1992, '2012-09-08', 339),
(61, 'Aklından Bir Sayı Tut', 'John Verdon', 475, 0000, '2012-09-17', 340),
(62, 'Ülkemizde Cuma Namazı Farzdır', 'Mürsel Şahinbaş', 138, 1993, '2012-11-12', 341),
(63, 'Gözlerini Sımsıkı Kapat', 'John Verdon', 567, 0000, '2013-04-02', 342),
(64, 'Destanlaşan Çanakkale', 'Mustafa Turan', 181, 2007, '2013-07-30', 343),
(65, 'Dünya Sinema Sanayii', 'Giovanni Scognamillo', 251, 1997, '2013-09-04', 344),
(66, 'Mehdix', 'Turgay Güler', 236, 0000, '2013-09-06', 345),
(67, 'Sır Küpü', 'Turgay Güler', 259, 2013, '2013-09-14', 346),
(68, 'Canlı Bomba', 'Yakup Kadri Öztürk', 160, 2008, '2013-09-17', 347),
(69, 'Adnan Menderes', 'Veli Sırım', 143, 2008, '2013-09-19', 348),
(70, 'Virüs Saldırıyor', 'Wendy Barnaby', 247, 2003, '2013-10-17', 349),
(71, 'Günahkar', 'Tess Gerritsen', 409, 0000, '2013-10-25', 350),
(72, 'Kod Adı: Kılıçbalığı', 'Mustafa Aydın', 240, 2006, '2013-11-05', 351),
(73, 'Dip Dalga Davutoğlu', 'Fatih Bayhan', 243, 2012, '2013-11-11', 352),
(74, 'İkna Odası', 'Yıldız Ramazanoğlu', 156, 2008, '2013-11-19', 353),
(75, 'II. Attila', 'Kamuran Tümay Yıldız', 488, 2010, '2013-11-29', 354),
(76, 'Kamikaze Operasyonu', 'Atilla Akar', 382, 2006, '2014-01-03', 355),
(77, 'Benim Türkiyem', 'Elvan Küçük', 440, 2013, '2014-02-09', 356),
(78, 'Huzur Sokağı', 'Şule Yüksel Şenler', 552, 2013, '2014-03-05', 357),
(79, 'İkiz Bedenler', 'Tess Gerritsen', 448, 2013, '2014-03-21', 358),
(80, 'Siliniş', 'Tess Gerritsen', 464, 0000, '2014-04-16', 359),
(81, 'Şah Mat', 'Mario Mazzanti', 512, 2012, '2014-06-10', 360),
(82, 'Cehennem', 'Dan Brown', 574, 0000, '2014-08-03', 361),
(83, 'Simya', 'Kubilay Aktaş', 191, 2012, '2014-08-07', 362),
(84, 'Türkçe\'nin Adı Var!', 'Sırrı Er', 168, 2005, '2014-08-11', 363),
(85, 'Örümcekler Ağlarına Neden Yapışmazlar?', 'Robert Matthews', 327, 2012, '2014-08-22', 364),
(86, 'İmamın Manken Kızı', 'Emine Şenlikoğlu', 222, 2013, '2014-08-26', 365),
(87, 'Namazla Yeniden Doğdum', 'Yaşar Alptekin', 143, 2007, '2014-08-29', 366),
(88, 'Aysel', 'Halit Ertuğrul', 182, 0000, '2014-09-02', 367),
(89, 'Kediniz Konuşuyor', 'Gülay Kabasakal Ertürk', 79, 0000, '2014-10-02', 368),
(90, 'Şeytanı Uyandırma', 'John Verdon', 536, 0000, '2014-10-12', 369),
(91, 'Google Hikâyesi', 'David A. Vise, Mark Malseed', 408, 0000, '2014-11-06', 370),
(92, 'Her Güne 1 Ayet Hadis Dua', 'Nazlı Hilal Kızılkaya', 401, 2010, '2015-01-01', 371),
(93, 'Celcelutiye, Sufilerin Saklı Hazinesi', 'Kubilay Aktaş', 400, 2013, '2015-09-29', 372),
(94, 'Türkiye’nin Ünlüleri', 'Önder Güney', 339, 2012, '2015-10-07', 373),
(95, 'Oku', 'Hüseyin Tuluk', 121, 2015, '2015-10-09', 374),
(96, 'Risale Okumaları Keşif Yolculukları', 'Metin Karabaşoğlu', 160, 2010, '2015-10-24', 375),
(97, 'Dost Ateşi', 'Şener Berkman', 542, 2007, '2015-11-25', 376),
(98, 'Benim Yolum', 'Christina Daniels', 352, 2015, '2016-01-21', 377),
(99, 'Od', 'İskender Pala', 359, 0000, '2016-02-15', 378),
(100, 'Psiko Analist', 'John Katzenbach', 491, 2015, '2016-06-17', 379),
(101, 'Nuriye Ana', 'Hülya Yakut Üstündağ', 310, 2014, '2016-09-21', 380),
(102, 'İngilizce Dilbilgisi', 'Bahire Şerif', 560, 1986, '2016-10-06', 381),
(103, 'Sherlock Holmes Kuşku', 'Sir Arthur Conan Doyle', 353, 2012, '2016-10-16', 382),
(104, 'Uzun Beyaz Bulut Gelibolu', 'Buket Uzuner', 323, 2007, '2016-11-10', 383),
(105, 'İlahî Program, Kader', 'İsmail Mutlu', 160, 1992, '2016-12-10', 384),
(106, 'Cumhuriyet Çocuğu', 'Hekimoğlu İsmail', 190, 2006, '2016-12-17', 385),
(107, 'Karabasan', 'Wulf Dorn', 397, 2016, '2016-12-26', 386),
(108, 'Bıçak Sırtı', 'Tess Gerritsen', 367, 2014, '2017-01-14', 387),
(109, 'Türklerin Hataları', 'Tarih ve Düşünce', 383, 2016, '2017-02-12', 388),
(110, 'Metal Fırtına', 'Orkun Uçar - Burak Turna', 302, 2005, '2017-03-05', 389),
(111, 'İlluminati, Entrika Çemberi', 'Texe Marrs', 287, 2005, '2017-03-22', 390),
(112, 'Kendini Arayan Adam', 'Halit Ertuğrul', 123, 2011, '2017-03-26', 391);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Resimler`
--

CREATE TABLE `Resimler` (
  `resim_ID` int(10) NOT NULL,
  `r_kat_ID` int(3) NOT NULL,
  `resim_baslik` varchar(300) NOT NULL,
  `resim_tarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resim` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `Resimler`
--

INSERT INTO `Resimler` (`resim_ID`, `r_kat_ID`, `resim_baslik`, `resim_tarih`, `resim`) VALUES
(1, 1, 'Bağ Evi', '2016-09-30 21:00:00', 'bag_evi.jpg'),
(2, 1, 'Mısır Bitkisi', '2016-09-30 21:00:00', 'misir_bitkisi.jpg'),
(3, 2, 'Balığın Suyunu İçen Tavşan :)', '2016-09-30 21:00:00', 'baligin_suyunu_icen_tavsan.jpg'),
(4, 2, 'Beyaz Güvercin Misafirimiz Oldu', '2016-09-30 21:00:00', 'beyaz_guvercin_misafirimiz_oldu.jpg'),
(5, 2, 'Kafesin Üstündeki Tavşan', '2016-09-30 21:00:00', 'kafesin_ustundeki_tavsan.jpg'),
(6, 2, 'Kara ve Kızıl Karınca Avlarını Paylaşamıyor', '2016-09-30 21:00:00', 'kara_ve_kizil_karinca_avlarini_paylasamiyor.jpg'),
(7, 2, 'Tavşanların Meşhur Kleopatra Oturuşu', '2016-09-30 21:00:00', 'kleopatra_oturusu.jpg'),
(8, 2, 'Ninja Kurbağa', '2016-09-30 21:00:00', 'ninja_kurbaga.jpg'),
(9, 2, 'Kum Banyosu', '2016-09-30 21:00:00', 'kum_banyosu.jpg'),
(10, 2, 'Penceremizin Önündeki 3 Kedi', '2016-09-30 21:00:00', 'penceremizin_onundeki_3_kedi.jpg'),
(11, 2, 'Siyah Beyaz Desenli Kelebek', '2016-09-30 21:00:00', 'siyah_beyaz_desenli_kelebek.jpg'),
(12, 2, 'Tavşanın Kum Keyfi', '2016-09-30 21:00:00', 'tavsanin_kum_keyfi.jpg'),
(13, 2, 'Tırtılın Güzelliği', '2016-09-30 21:00:00', 'tirtilin_guzelligi.jpg'),
(14, 2, 'Uykudan Uyartmışım', '2016-09-30 21:00:00', 'uykudan_uyartmisim.jpg'),
(15, 2, 'Yaramaz Tavşan', '2016-09-30 21:00:00', 'yaramaz_tavsan.jpg'),
(16, 3, 'Saldırsam Ayıp Olacak :)', '2016-09-30 21:00:00', 'saldirsam_ayip_olacak.jpg'),
(17, 3, 'Yaşlı Prenses :)', '2016-09-30 21:00:00', 'yasli_prenses.jpg'),
(18, 3, 'Bunu Unutmayacak :)', '2016-09-30 21:00:00', 'bunu_unutmayacak.jpg'),
(19, 3, 'Bakış Açısı :)', '2016-09-30 21:00:00', 'bakis_acisi.jpg'),
(20, 3, 'Serap :)', '2016-09-30 21:00:00', 'serap.jpg'),
(21, 3, 'Atatürk Şiiri :)', '2016-09-30 21:00:00', 'ataturk_siiri.jpg'),
(22, 3, 'Yaşam Döngüsü', '2016-09-30 21:00:00', 'yasam_dongusu.jpg'),
(23, 3, 'Psikopat :)', '2016-09-30 21:00:00', 'psikopat.jpg'),
(24, 3, 'Alternatif Tıpçılar :)', '2016-09-30 21:00:00', 'alternatif_tipcilar.jpg'),
(25, 3, 'Her Şeyin Başı Sağlık :)', '2016-09-30 21:00:00', 'her_seyin_basi_saglik.jpg'),
(26, 3, 'Minik Kuş Nerede? :)', '2016-09-30 21:00:00', 'minik_kus_nerede.jpg'),
(27, 3, 'Annelere Göre Evlatlar :)', '2016-09-30 21:00:00', 'annelere_gore_evlatlar.jpg'),
(28, 3, 'Evlendikten Sonra Ferhat :)', '2016-09-30 21:00:00', 'evlendikten_sonra_ferhat.jpg'),
(29, 3, 'Geah Billy Billy! :)', '2016-09-30 21:00:00', 'geah_billy_billy.jpg'),
(30, 3, 'Google Çeviri Müdürü :)', '2016-09-30 21:00:00', 'google_ceviri_muduru.jpg'),
(31, 3, 'Hurilerle Aldatmak :)', '2016-09-30 21:00:00', 'hurilerle_aldatmak.jpg'),
(32, 3, 'İneklerin Eğlencesi :)', '2016-09-30 21:00:00', 'ineklerin_eglencesi.jpg'),
(33, 3, 'Moral Bozan Adam :)', '2016-09-30 21:00:00', 'moral_bozan_adam.jpg'),
(34, 3, 'Tavuk Zoruyla Doktor Tavsiyesi :)', '2016-09-30 21:00:00', 'tavuk_zoruyla_tavsiye.jpg'),
(35, 3, 'Uyanık Tavuk :)', '2016-09-30 21:00:00', 'uyanik_tavuk.jpg'),
(36, 3, 'Veterinerlik Adabı', '2016-09-30 21:00:00', 'veterinerlik_adabi.jpg'),
(37, 3, 'Yaşlı Köpek', '2016-09-30 21:00:00', 'yasli_kopek.jpg'),
(38, 4, 'İnternet Sitem Artık Yayında', '2017-04-23 21:00:00', 'internet_sitem.jpg'),
(39, 4, 'Vatan-Millet-Sakarya', '2017-04-28 21:00:00', 'elmasaga_kislasi.jpg'),
(40, 5, 'Öğretmenin Not Defteri 1', '2016-10-16 21:00:00', 'ogretmenin_not_defteri_1.jpg'),
(41, 5, 'Öğretmenin Not Defteri 2', '2016-10-16 21:00:00', 'ogretmenin_not_defteri_2.jpg'),
(42, 5, 'Figan', '2016-10-16 21:00:00', 'figan.jpg'),
(43, 5, 'Kalem Sırra Dokundu', '2016-10-16 21:00:00', 'kalem_sirra_dokundu.jpg'),
(44, 5, 'Hızırla Kol Kola', '2016-10-16 21:00:00', 'hizirla_kol_kola.jpg'),
(45, 5, 'Hayret! Dünya Dönüyor!', '2016-10-16 21:00:00', 'hayret_dunya_donuyor.jpg'),
(46, 5, 'Kavak Yelleri', '2016-10-16 21:00:00', 'kavak_yelleri.jpg'),
(47, 5, 'Yahudileri Tanıyalım', '2016-10-16 21:00:00', 'yahudileri_taniyalim.jpg'),
(48, 5, 'Hain Futbol', '2016-10-16 21:00:00', 'hain_futbol.jpg'),
(49, 5, 'Ketçap, Mayonez ve Sindirim', '2016-10-16 21:00:00', 'ketcap_mayonez_ve_sindirim.jpg'),
(50, 5, 'Paradokslar ve Mantık Oyunları', '2016-10-16 21:00:00', 'paradokslar_ve_mantik_oyunlari.jpg'),
(51, 5, 'Türkiye Çocuk Rehber İlmihâli', '2016-10-16 21:00:00', 'turkiye_cocuk_rehber_ilmihali.jpg'),
(52, 5, 'Ağrı Dağı Efsanesi', '2016-10-16 21:00:00', 'agri_dagi_efsanesi.jpg'),
(53, 5, 'Tutuklu Yürek', '2016-10-16 21:00:00', 'tutuklu_yurek.jpg'),
(54, 5, 'Yerim Seni ÖSS', '2016-10-16 21:00:00', 'yerim_seni_oss.jpg'),
(55, 5, 'Sürücü Eğitim Rehberi', '2016-10-16 21:00:00', 'surucu_egitim_rehberi.jpg'),
(56, 5, 'Doğru ve Güzel Konuşma', '2016-10-16 21:00:00', 'dogru_ve_guzel_konusma.jpg'),
(57, 5, 'Akılalmaz Yapılar', '2016-10-16 21:00:00', 'akilalmaz_yapilar.jpg'),
(58, 5, 'Cerrah', '2016-10-16 21:00:00', 'cerrah.jpg'),
(59, 5, 'Çırak', '2016-10-16 21:00:00', 'cirak.jpg'),
(60, 5, 'Da Vinci Şifresi', '2016-10-16 21:00:00', 'da_vinci_sifresi.jpg'),
(61, 5, 'İffeti Yaşayanlar', '2016-10-16 21:00:00', 'iffeti_yasayanlar.jpg'),
(62, 5, 'Gölgelerle Oyun', '2016-10-16 21:00:00', 'golgelerle_oyun.jpg'),
(63, 5, 'Sol Ayağım', '2016-10-16 21:00:00', 'sol_ayagim.jpg'),
(64, 5, 'İnsan Denen Mucize', '2016-10-16 21:00:00', 'insan_denen_mucize.jpg'),
(65, 5, 'İslam ve Fizik', '2016-10-16 21:00:00', 'islam_ve_fizik.jpg'),
(66, 5, 'Olasılıksız', '2016-10-16 21:00:00', 'olasiliksiz.jpg'),
(67, 5, 'Türkleri Anlama Kılavuzu 2', '2016-10-16 21:00:00', 'turkleri_anlama_kilavuzu_2.jpg'),
(68, 5, 'Farz Et Ki Öldün', '2016-10-16 21:00:00', 'farz_et_ki_oldun.jpg'),
(69, 5, 'Minyeli Abdullah', '2016-10-16 21:00:00', 'minyeli_abdullah.jpg'),
(70, 5, 'İki Darbe Arasında', '2016-10-16 21:00:00', 'iki_darbe_arasinda.jpg'),
(71, 5, 'Sözmetre', '2016-10-16 21:00:00', 'sozmetre.jpg'),
(72, 5, 'Kur\'an-ı Kerim Meali', '2016-10-16 21:00:00', 'kurani_kerim_meali.jpg'),
(73, 5, 'Etkili Konuşma', '2016-10-16 21:00:00', 'etkili_konusma.jpg'),
(74, 5, 'Melekler ve Şeytanlar', '2016-10-16 21:00:00', 'melekler_ve_seytanlar.jpg'),
(75, 5, 'Peygamberimizin İnsan Kazanma Metodu', '2016-10-16 21:00:00', 'peygamberimizin_insan_kazanma_metodu.jpg'),
(76, 5, 'Alacakaranlık', '2016-10-16 21:00:00', 'alacakaranlik.jpg'),
(77, 5, 'Fatih Sultan Mehmet ve Fetih', '2016-10-16 21:00:00', 'fatih_sultan_mehmet_ve_fetih.jpg'),
(78, 5, 'Empati', '2016-10-16 21:00:00', 'empati.jpg'),
(319, 5, 'İlimlerin Diliyle Allah', '2016-10-16 21:00:00', 'ilimlerin_diliyle_allah.jpg'),
(320, 5, 'Muhafız', '2016-10-16 21:00:00', 'muhafiz.jpg'),
(321, 5, 'Senin İçin', '2016-10-16 21:00:00', 'senin_icin.jpg'),
(322, 5, 'Kayıp Sembol', '2016-10-16 21:00:00', 'kayip_sembol.jpg'),
(323, 5, 'Yeniay', '2016-10-16 21:00:00', 'yeniay.jpg'),
(324, 5, 'Dünya Düzdür', '2016-10-16 21:00:00', 'dunya_duzdur.jpg'),
(325, 5, 'Çorum Evliyaları', '2016-10-16 21:00:00', 'corum_evliyalari.jpg'),
(326, 5, 'Hz. Muhammed Hayatı ve Örnek Kişiliği', '2016-10-16 21:00:00', 'hz_muhammed_hayati_ve_ornek_kisiligi.jpg'),
(327, 5, '2012 Kristal Kafatası', '2016-10-16 21:00:00', '2012_kristal_kafatasi.jpg'),
(328, 5, 'Altın Prensipler', '2016-10-16 21:00:00', 'altin_prensipler.jpg'),
(329, 5, 'Senaryo Romanları', '2016-10-16 21:00:00', 'senaryo_romanlari.jpg'),
(330, 5, 'Gençlerle Söyleşi', '2016-10-16 21:00:00', 'genclerle_soylesi.jpg'),
(331, 5, 'Öldürücü Matematik', '2016-10-16 21:00:00', 'oldurucu_matematik.jpg'),
(332, 5, 'Gözüpek Kâşifler', '2016-10-16 21:00:00', 'gozupek_kasifler.jpg'),
(333, 5, 'Huzur', '2016-10-16 21:00:00', 'huzur.jpg'),
(334, 5, 'Zamanı Değerlendirme San\'atı', '2016-10-16 21:00:00', 'zamani_degerlendirme_sanati.jpg'),
(335, 5, 'Cennet Çocukları', '2016-10-16 21:00:00', 'cennet_cocuklari.jpg'),
(336, 5, 'İslâm ve İlim', '2016-10-16 21:00:00', 'islam_ve_ilim.jpg'),
(337, 5, '2050', '2016-10-16 21:00:00', '2050.jpg'),
(338, 5, 'İnsanca Yaşamak', '2016-10-16 21:00:00', 'insanca_yasamak.jpg'),
(339, 5, 'Alevîlik Bektaşilik Üzerine…', '2016-10-16 21:00:00', 'alevilik_bektasilik_uzerine.jpg'),
(340, 5, 'Aklından Bir Sayı Tut', '2016-10-16 21:00:00', 'aklindan_bir_sayi_tut.jpg'),
(341, 5, 'Ülkemizde Cuma Namazı Farzdır', '2016-10-16 21:00:00', 'ulkemizde_cuma_namazi_farzdir.jpg'),
(342, 5, 'Gözlerini Sımsıkı Kapat', '2016-10-16 21:00:00', 'gozlerini_simsiki_kapat.jpg'),
(343, 5, 'Destanlaşan Çanakkale', '2016-10-16 21:00:00', 'destanlasan_canakkale.jpg'),
(344, 5, 'Dünya Sinema Sanayii', '2016-10-16 21:00:00', 'dunya_sinema_sanayii.jpg'),
(345, 5, 'Mehdix', '2016-10-16 21:00:00', 'mehdix.jpg'),
(346, 5, 'Sır Küpü', '2016-10-16 21:00:00', 'sir_kupu.jpg'),
(347, 5, 'Canlı Bomba', '2016-10-16 21:00:00', 'canli_bomba.jpg'),
(348, 5, 'Adnan Menderes', '2016-10-16 21:00:00', 'adnan_menderes.jpg'),
(349, 5, 'Virüs Saldırıyor', '2016-10-16 21:00:00', 'virus_saldiriyor.jpg'),
(350, 5, 'Günahkar', '2016-10-16 21:00:00', 'gunahkar.jpg'),
(351, 5, 'Kod Adı: Kılıçbalığı', '2016-10-16 21:00:00', 'kod_adi_kilicbaligi.jpg'),
(352, 5, 'Dip Dalga Davutoğlu', '2016-10-16 21:00:00', 'dip_dalga_davutoglu.jpg'),
(353, 5, 'İkna Odası', '2016-10-16 21:00:00', 'ikna_odasi.jpg'),
(354, 5, 'II. Attila', '2016-10-16 21:00:00', 'II_attila.jpg'),
(355, 5, 'Kamikaze Operasyonu', '2016-10-16 21:00:00', 'kamikaze_operasyonu.jpg'),
(356, 5, 'Benim Türkiyem', '2016-10-16 21:00:00', 'benim_turkiyem.jpg'),
(357, 5, 'Huzur Sokağı', '2016-10-16 21:00:00', 'huzur_sokagi.jpg'),
(358, 5, 'İkiz Bedenler', '2016-10-16 21:00:00', 'ikiz_bedenler.jpg'),
(359, 5, 'Siliniş', '2016-10-16 21:00:00', 'silinis.jpg'),
(360, 5, 'Şah Mat', '2016-10-16 21:00:00', 'sah_mat.jpg'),
(361, 5, 'Cehennem', '2016-10-16 21:00:00', 'cehennem.jpg'),
(362, 5, 'Simya', '2016-10-16 21:00:00', 'simya.jpg'),
(363, 5, 'Türkçe\'nin Adı Var!', '2016-10-16 21:00:00', 'turkcenin_adi_var.jpg'),
(364, 5, 'Örümcekler Ağlarına Neden Yapışmazlar?', '2016-10-16 21:00:00', 'orumcekler_aglarina_neden_yapismazlar.jpg'),
(365, 5, 'İmamın Manken Kızı', '2016-10-16 21:00:00', 'imamin_manken_kizi.jpg'),
(366, 5, 'Namazla Yeniden Doğdum', '2016-10-16 21:00:00', 'namazla_yeniden_dogdum.jpg'),
(367, 5, 'Aysel', '2016-10-16 21:00:00', 'aysel.jpg'),
(368, 5, 'Kediniz Konuşuyor', '2016-10-16 21:00:00', 'kediniz_konusuyor.jpg'),
(369, 5, 'Şeytanı Uyandırma', '2016-10-16 21:00:00', 'seytani_uyandirma.jpg'),
(370, 5, 'Google Hikâyesi', '2016-10-16 21:00:00', 'google_hikayesi.jpg'),
(371, 5, 'Her Güne 1 Ayet Hadis Dua', '2016-10-16 21:00:00', 'her_gune_1_ayet_hadis_dua.jpg'),
(372, 5, 'Celcelutiye, Sufilerin Saklı Hazinesi', '2016-10-16 21:00:00', 'celcelutiye_sufilerin_sakli_hazinesi.jpg'),
(373, 5, 'Türkiye’nin Ünlüleri', '2016-10-16 21:00:00', 'turkiyenin_unluleri.jpg'),
(374, 5, 'Oku', '2016-10-16 21:00:00', 'oku.jpg'),
(375, 5, 'Risale Okumaları Keşif Yolculukları', '2016-10-16 21:00:00', 'risale_okumalari_kesif_yolculuklari.jpg'),
(376, 5, 'Dost Ateşi', '2016-10-16 21:00:00', 'dost_atesi.jpg'),
(377, 5, 'Benim Yolum', '2016-10-16 21:00:00', 'benim_yolum.jpg'),
(378, 5, 'Od', '2016-10-16 21:00:00', 'od.jpg'),
(379, 5, 'Psiko Analist', '2016-10-16 21:00:00', 'psiko_analist.jpg'),
(380, 5, 'Nuriye Ana', '2016-10-16 21:00:00', 'nuriye_ana.jpg'),
(381, 5, 'İngilizce Dilbilgisi', '2016-10-16 21:00:00', 'ingilizce_dilbilgisi.jpg'),
(382, 5, 'Sherlock Holmes Kuşku', '2016-10-16 21:00:00', 'sherlock_holmes_kusku.jpg'),
(383, 5, 'Uzun Beyaz Bulut Gelibolu', '2016-10-16 21:00:00', 'uzun_beyaz_bulut_gelibolu.jpg'),
(384, 5, 'İlahî Program, Kader', '2016-10-16 21:00:00', 'ilahi_program_kader.jpg'),
(385, 5, 'Cumhuriyet Çocuğu', '2016-10-16 21:00:00', 'cumhuriyet_cocugu.jpg'),
(386, 5, 'Karabasan', '2016-10-16 21:00:00', 'karabasan.jpg'),
(387, 5, 'Bıçak Sırtı', '2016-10-16 21:00:00', 'bicak_sirti.jpg'),
(388, 5, 'Türklerin Hataları', '2016-10-16 21:00:00', 'turklerin_hatalari.jpg'),
(389, 5, 'Metal Fırtına', '2016-10-16 21:00:00', 'metal_firtina.jpg'),
(390, 5, 'İlluminati, Entrika Çemberi', '2016-10-16 21:00:00', 'illuminati_entrika_cemberi.jpg'),
(391, 5, 'Kendini Arayan Adam', '2016-10-16 21:00:00', 'kendini_arayan_adam.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Resim_Kategorileri`
--

CREATE TABLE `Resim_Kategorileri` (
  `r_kat_ID` int(3) NOT NULL,
  `r_kat_adi` varchar(100) NOT NULL,
  `r_kat_aciklama` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `Resim_Kategorileri`
--

INSERT INTO `Resim_Kategorileri` (`r_kat_ID`, `r_kat_adi`, `r_kat_aciklama`) VALUES
(1, 'Amatör Çekimler', ''),
(2, 'Hayvanlar Alemi', ''),
(3, 'Karikatür', ''),
(4, 'Blog Resimleri', ''),
(5, 'Kitap Resimleri', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Sertifikalar`
--

CREATE TABLE `Sertifikalar` (
  `sert_ID` int(2) NOT NULL,
  `sert_adi` varchar(100) NOT NULL,
  `sert_firma` varchar(100) NOT NULL,
  `sert_tarih` date NOT NULL,
  `sert_aciklamasi` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `Sertifikalar`
--

INSERT INTO `Sertifikalar` (`sert_ID`, `sert_adi`, `sert_firma`, `sert_tarih`, `sert_aciklamasi`) VALUES
(1, 'Katılım Sertifikası', 'Akınsoft', '2011-12-12', '<li>- Akınsoft Firma Profili</li>			\r\n<li>- Bilişimin İş Hayatındaki Önemi</li>\r\n<li>- Akınsoft\'ta Kariyer Olanakları</li>\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Sinavlar`
--

CREATE TABLE `Sinavlar` (
  `sinav_ID` int(2) NOT NULL,
  `sinav_adi` varchar(20) NOT NULL,
  `sinav_puani` varchar(50) NOT NULL,
  `sinav_tarihi` date NOT NULL,
  `sinav_aciklama` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `Sinavlar`
--

INSERT INTO `Sinavlar` (`sinav_ID`, `sinav_adi`, `sinav_puani`, `sinav_tarihi`, `sinav_aciklama`) VALUES
(1, 'KPSS (Ortaöğretim)', '77', '2008-09-21', 'KPSS P94 puan türü belirtilmektedir.'),
(2, 'ÖSS', 'YGS: 454, LYS: 412', '2010-06-00', 'YGS-1 ve MF-2 puan türlerinde \"alanında\" yerleştirme puanım belirtilmektedir.'),
(3, 'GUYS', '68', '2015-11-14', 'Gelir İdaresi Başkanlığının açmış olduğu Gelir Uzman Yardımcılığı Sınavı. Bu sınavdan geçmek için 70 alınması gerekiyorken 2 puanla kaçırmıştım.'),
(4, 'ALES', '74', '2016-05-08', 'ALES Sayısal Puanı belirtilmektedir.'),
(5, 'KPSS (Lisans)', '88', '2016-05-22', 'KPSS P3 puan türü belirtilmektedir.'),
(6, 'YDS', '37', '2016-03-27', 'YDS\'den başarılı sayılabilmek için en az 50 puan almak gerekiyor. Önceki sene çalışmadan girdiğim sınavdan 36 almıştım. Bu sene yaklaşık 1 hafta dil bilgisi çalıştıktan sonra 1 soru daha fazla doğru cevaplandırarak 37 puana yükseltmeyi başardım. Çalışmalarım devam ediyor.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Yetenekler`
--

CREATE TABLE `Yetenekler` (
  `yetenek_ID` int(3) NOT NULL,
  `y_kat_ID` int(2) NOT NULL,
  `yetenek_adi` varchar(50) NOT NULL,
  `seviye` tinyint(1) NOT NULL,
  `yetenek_sira` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `Yetenekler`
--

INSERT INTO `Yetenekler` (`yetenek_ID`, `y_kat_ID`, `yetenek_adi`, `seviye`, `yetenek_sira`) VALUES
(1, 3, 'PHP', 2, 1),
(2, 3, 'JSP', 3, 2),
(3, 3, 'Java', 3, 3),
(4, 3, 'PIC Assembly', 3, 4),
(5, 3, 'MIPS Assembly', 1, 5),
(6, 3, 'MATLAB', 1, 6),
(7, 3, 'VHDL', 2, 7),
(8, 3, 'C#', 1, 8),
(9, 3, 'Lisp', 1, 9),
(10, 3, 'Prolog', 1, 10),
(23, 4, 'HTML/HTML5', 5, 1),
(24, 4, 'CSS/CSS3', 5, 2),
(25, 4, 'JavaScript', 3, 3),
(26, 4, 'jQuery', 3, 4),
(27, 4, 'Bootstrap', 4, 5),
(28, 4, 'Wordpress', 1, 6),
(29, 5, 'Coda', 5, 1),
(30, 5, 'Netbeans', 4, 2),
(31, 5, 'Eclipse', 3, 3),
(32, 5, 'MPLAB', 5, 4),
(33, 5, 'Adobe Dreamweaver', 3, 5),
(34, 5, 'Xcode', 2, 6),
(35, 5, 'Microsoft Visual Studio 2010', 1, 7),
(36, 5, 'Clisp', 3, 8),
(37, 6, 'SQL', 2, 1),
(38, 6, 'MySQL', 4, 2),
(39, 6, 'phpMyAdmin', 5, 3),
(40, 6, 'MySQL Workbench', 4, 4),
(41, 6, 'SQL Server 2005', 1, 5),
(42, 7, 'Microchip PIC', 3, 1),
(43, 7, 'Proteus', 5, 2),
(44, 7, 'Electronics Workbench', 5, 3),
(45, 7, 'XBee', 3, 4),
(46, 7, 'Arduino', 3, 5),
(47, 8, 'Opnet', 2, 1),
(48, 8, 'Duyarga(Sensör) Ağları', 3, 2),
(49, 9, 'OpenGL', 1, 1),
(50, 10, 'Mac OS', 5, 1),
(51, 10, 'Windows 7 ve Sonrası', 5, 2),
(52, 10, 'Windows Server 2008', 3, 3),
(53, 10, 'Ubuntu', 2, 4),
(54, 10, 'Windows XP', 5, 5),
(55, 10, 'Windows 98', 5, 6),
(56, 10, 'Windows 3.1', 5, 7),
(57, 10, 'MS-DOS', 3, 8);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Yetenek_Kategorileri`
--

CREATE TABLE `Yetenek_Kategorileri` (
  `y_kat_ID` int(2) NOT NULL,
  `y_kat_adi` varchar(50) NOT NULL,
  `y_kat_sira` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `Yetenek_Kategorileri`
--

INSERT INTO `Yetenek_Kategorileri` (`y_kat_ID`, `y_kat_adi`, `y_kat_sira`) VALUES
(3, 'Programlama Dilleri', 1),
(4, 'Web Tasarım', 2),
(5, 'Yazılım Geliştirme Araçları', 3),
(6, 'Veritabanı', 4),
(7, 'Elektronik', 5),
(8, 'Ağlar', 6),
(9, 'Grafik', 7),
(10, 'İşletim Sistemleri', 8);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Yorumlar`
--

CREATE TABLE `Yorumlar` (
  `yorum_ID` bigint(255) NOT NULL,
  `yorum` varchar(200) NOT NULL,
  `yorum_tarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `Yorumlar`
--

INSERT INTO `Yorumlar` (`yorum_ID`, `yorum`, `yorum_tarih`) VALUES
(1, 'Askerliği de bitirdiğime göre arama-kurtarma faaliyetlerine başlamam gerek. (İş) Arama - (Kendimi) Kurtarma...', '2017-04-22 21:00:00'),
(2, 'Yaram derindir eşme,<br>\r\nAman derdimi deşme,<br>\r\nSahurda börek yoktu,<br>\r\nGözlerim oldu çeşme :)<br><br>\r\nRamazan-ı Şerifimiz Mübarek Olsun.', '2017-05-29 11:59:31');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `Bloglar`
--
ALTER TABLE `Bloglar`
  ADD PRIMARY KEY (`blog_ID`),
  ADD KEY `resim_ID` (`resim_ID`);

--
-- Tablo için indeksler `Is_Deneyimi`
--
ALTER TABLE `Is_Deneyimi`
  ADD PRIMARY KEY (`is_ID`);

--
-- Tablo için indeksler `Kitaplar`
--
ALTER TABLE `Kitaplar`
  ADD PRIMARY KEY (`kitap_ID`),
  ADD KEY `resim_ID` (`resim_ID`);

--
-- Tablo için indeksler `Resimler`
--
ALTER TABLE `Resimler`
  ADD PRIMARY KEY (`resim_ID`),
  ADD KEY `r_kat_ID` (`r_kat_ID`);

--
-- Tablo için indeksler `Resim_Kategorileri`
--
ALTER TABLE `Resim_Kategorileri`
  ADD PRIMARY KEY (`r_kat_ID`);

--
-- Tablo için indeksler `Sertifikalar`
--
ALTER TABLE `Sertifikalar`
  ADD PRIMARY KEY (`sert_ID`);

--
-- Tablo için indeksler `Sinavlar`
--
ALTER TABLE `Sinavlar`
  ADD PRIMARY KEY (`sinav_ID`);

--
-- Tablo için indeksler `Yetenekler`
--
ALTER TABLE `Yetenekler`
  ADD PRIMARY KEY (`yetenek_ID`),
  ADD KEY `y_kat_ID` (`y_kat_ID`);

--
-- Tablo için indeksler `Yetenek_Kategorileri`
--
ALTER TABLE `Yetenek_Kategorileri`
  ADD PRIMARY KEY (`y_kat_ID`),
  ADD UNIQUE KEY `y_kat_sira` (`y_kat_sira`);

--
-- Tablo için indeksler `Yorumlar`
--
ALTER TABLE `Yorumlar`
  ADD PRIMARY KEY (`yorum_ID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `Bloglar`
--
ALTER TABLE `Bloglar`
  MODIFY `blog_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `Is_Deneyimi`
--
ALTER TABLE `Is_Deneyimi`
  MODIFY `is_ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `Kitaplar`
--
ALTER TABLE `Kitaplar`
  MODIFY `kitap_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- Tablo için AUTO_INCREMENT değeri `Resimler`
--
ALTER TABLE `Resimler`
  MODIFY `resim_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;
--
-- Tablo için AUTO_INCREMENT değeri `Resim_Kategorileri`
--
ALTER TABLE `Resim_Kategorileri`
  MODIFY `r_kat_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `Sertifikalar`
--
ALTER TABLE `Sertifikalar`
  MODIFY `sert_ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `Sinavlar`
--
ALTER TABLE `Sinavlar`
  MODIFY `sinav_ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `Yetenekler`
--
ALTER TABLE `Yetenekler`
  MODIFY `yetenek_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- Tablo için AUTO_INCREMENT değeri `Yetenek_Kategorileri`
--
ALTER TABLE `Yetenek_Kategorileri`
  MODIFY `y_kat_ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Tablo için AUTO_INCREMENT değeri `Yorumlar`
--
ALTER TABLE `Yorumlar`
  MODIFY `yorum_ID` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `Bloglar`
--
ALTER TABLE `Bloglar`
  ADD CONSTRAINT `bloglar_ibfk_1` FOREIGN KEY (`resim_ID`) REFERENCES `Resimler` (`resim_ID`);

--
-- Tablo kısıtlamaları `Kitaplar`
--
ALTER TABLE `Kitaplar`
  ADD CONSTRAINT `kitaplar_ibfk_1` FOREIGN KEY (`resim_ID`) REFERENCES `Resimler` (`resim_ID`);

--
-- Tablo kısıtlamaları `Resimler`
--
ALTER TABLE `Resimler`
  ADD CONSTRAINT `resimler_ibfk_1` FOREIGN KEY (`r_kat_ID`) REFERENCES `Resim_Kategorileri` (`r_kat_ID`);

--
-- Tablo kısıtlamaları `Yetenekler`
--
ALTER TABLE `Yetenekler`
  ADD CONSTRAINT `yetenekler_ibfk_1` FOREIGN KEY (`y_kat_ID`) REFERENCES `Yetenek_Kategorileri` (`y_kat_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
