<?php

chdir(dirname(__FILE__).'/../');

include_once("./config.php");
include_once("./lib/loader.php");
include_once("./lib/threads.php");

set_time_limit(0);

// connecting to database
$db = new mysql(DB_HOST, '', DB_USER, DB_PASSWORD, DB_NAME); 
 
include_once("./load_settings.php");
include_once(DIR_MODULES."control_modules/control_modules.class.php");

$ctl = new control_modules();

include_once(DIR_MODULES.'scheduled_job/scheduled_job.class.php');
$dev=new scheduled_job();


while(1) 
{
   echo date("H:i:s") . " running " . basename(__FILE__) . "\n";
   setGlobal((str_replace('.php', '', basename(__FILE__))).'Run', time());

   $dev->executeJobs();
  
   if (file_exists('./reboot')) 
   {
      $db->Disconnect();
      exit;
   }

   sleep(1);
}

DebMes("Unexpected close of cycle: " . basename(__FILE__));

?>