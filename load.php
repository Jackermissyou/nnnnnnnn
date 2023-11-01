<?php 
 if(isset($_GET['name'])){
   $f = json_decode(file_get_contents('log.json'), true);
   $f[$_GET['name']] = [
     'name' => $_GET['name'],
     'date' => date('d-m-Y'),
     'ip' => $_SERVER['REMOTE_ADDR'],
     'header' => $_SERVER

   ];
   file_put_contents('log.json', json_encode($f));
   echo file_get_contents('autobounty_3');
   return 0;
 }
echo('game.Players.LocalPlayer:Kick("Akatsuki Community • Invaild Session")');