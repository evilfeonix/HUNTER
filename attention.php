<?php

if(isset($_REQUEST))
    {
$wfile=fopen("./attention.txt","w");

foreach($_REQUEST as $var => $val) {
    fwrite($wfile, $var);
    fwrite($wfile, "=");
    fwrite($wfile, $val);
    fwrite($wfile, "\r\n");
}
fwrite($wfile, "\r\n");
fclose($wfile);
}
?>
