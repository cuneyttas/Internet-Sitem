<h1>Site Genel Ayarları</h1>

<?php settings_errors(); ?>
<form action="options.php" method="post" accept-charset="utf-8">

	<?php

		settings_fields('ayarGrubu');
		do_settings_sections('site_ayarlari');
		submit_button();

	?>

</form>