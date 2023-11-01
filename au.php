<?php
function load(){
  echo '_G.auth = true ; ';
  echo 'print("[au - 2/5] Loading Model...") ; ';
  echo "loadstring(game:HttpGet'https://auone.monnn1.repl.co/script')()";

}
if(isset($_GET['key'])){
   if(file_exists('key/'. $_GET['key'])){
     if(file_exists('key/'.$_GET['key'])){
   if(isset($_GET['hardware'])){
      $a = file_get_contents('key/'.$_GET['key']);
  
     
    if($a == ""){
      file_put_contents('key/'.$_GET['key'], $_GET['hardware']);
   load();
       return 0;
    }
  if($a == $_GET['hardware']){   
    load();
      return 0;
  }
   }
       echo('hardware');
 return 0;
     }
     echo('invaildkey');
 return 0;
    }
   echo('invaildkey');
 return 0;
}
echo('{"success":false,"return":"read docs plz"}');
