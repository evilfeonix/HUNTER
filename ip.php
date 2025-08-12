<?php
date_default_timezone_set("Africa/Lagos");
if(!empty($_SERVER['HTTP_CLIENT_IP'])){
    $ips=$_SERVER['HTTP_CLIENT_IP'];}elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
        $ips=$_SERVER['HTTP_X_FORWARDED_FOR'];}else{$ips=$_SERVER['REMOTE_ADDR'];}

$date=date("d-m-Y");
$time=date("h:i:sa");
$folder="$ips/$date/";
$wfile=fopen("./ip.txt","w");
if(!is_dir($folder)){mkdir($folder,0755,true);}

fwrite($wfile,'time');fwrite($wfile,"=");fwrite($wfile,$time);fwrite($wfile,"\r\n");
fwrite($wfile,'date');fwrite($wfile,"=");fwrite($wfile,$date);fwrite($wfile,"\r\n");
fwrite($wfile,'ip');fwrite($wfile,"=");fwrite($wfile,$ips);fwrite($wfile,"\r\n");

if(!empty($_SERVER['HTTP_USER_AGENT'])){$deviceInfo=$_SERVER['HTTP_USER_AGENT'];
    $deviceInfo=preg_replace("/ /i","_",$deviceInfo);
    fwrite($wfile,'agent');fwrite($wfile,"=");fwrite($wfile,$deviceInfo);fwrite($wfile,"\r\n");}
fwrite($wfile,"\r\n");fclose($wfile);
?>
