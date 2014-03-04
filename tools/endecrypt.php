<?php
$user_agent = "AUDC-IPPhone/1.6.0.44.41.3 (310HD; 00908F15A58F)";
$mac = "";
if($user_agent[strlen($user_agent)-21-1] == " ") {
			$mac = substr($user_agent,-21);
		}
echo "header:".$mac;
$mac = trim($mac,"()");
var_dump($mac);
$mac = explode("; ",$mac);
var_dump($mac);
if(count($mac)==2) echo "da lay duoc mac va phone template";
else echo "khong lay duoc";
return;
function encrypt($key,$string) {
  $result = '';
  for($i=0; $i<strlen($string); $i++) {
    $char = substr($string, $i, 1);
    $keychar = substr($key, ($i % strlen($key))-1, 1);
    $char = chr(ord($char)+ord($keychar));
    $result.=$char;
  }
  return base64_encode($result);
}

function decrypt($key,$string) {
  $result = '';
  $string = base64_decode($string);

  for($i=0; $i<strlen($string); $i++) {
    $char = substr($string, $i, 1);
    $keychar = substr($key, ($i % strlen($key))-1, 1);
    $char = chr(ord($char)-ord($keychar));
    $result.=$char;
  }

  return $result;
}

	//$iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_ECB);
   // $iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);
    $key = "DTSCTVFRGH";
    $text = "123456";
    echo "Truoc khi ma hoa: ".$text . "<br/>";

   // $crypttext = mcrypt_encrypt(MCRYPT_DES, $key, $text, MCRYPT_MODE_ECB);
   $crypttext = encrypt($key,$text);
    echo "Da ma hoa: ".$crypttext. " <br/>";
    $key = "DLFOSJQNDP";
    $crypttext="gXZ/eoSJgYmH";
    //$iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_ECB);
    //$iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);
    //$decryptext = mcrypt_decrypt(MCRYPT_DES, $key, $crypttext, MCRYPT_MODE_ECB);
    $decryptext = decrypt($key,$crypttext);
    echo "<br/>Sau khi gia ma:".$decryptext. "<br/>";
    return;
    echo phpinfo();