<?php
    include 'ip.php';
     $fn=fopen("./index2.html","r");
     $td=fread($fn,500000);
     fclose($fn);
     echo $td; 
?>
