<?php

function versiyonGuncelle() {

$ayar = [
    'http' => [
        'method' => 'GET',
        'header' => ['User-Agent: PHP']
    ]
];
$ayarDuzeni = stream_context_create($ayar);
$json = file_get_contents("https://api.github.com/repos/cuneyt-tas/Internet-Sitem/releases", false, $ayarDuzeni);
$veri = json_decode($json, TRUE)[0];

return $veri['tag_name'];

}

?>