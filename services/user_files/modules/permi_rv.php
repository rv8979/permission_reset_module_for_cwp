<?php

///////////////
$i = 0;
foreach($_SESSION as $value){
    ${'session_arry'.$i} = $value;
    $i++;
    }
/////////////////////////////


if(isset($_POST['reset_btn'])) { 

$permi_rv = shell_exec("/usr/local/permi_rv/php_root $session_arry0 2>&1");
} 


$mod['u_name']= $session_arry0 ;

$mod['log']= $permi_rv ;

$mod['h_dir']=shell_exec('eval echo ~$USER');

?>
