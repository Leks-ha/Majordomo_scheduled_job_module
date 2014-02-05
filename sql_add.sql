CREATE TABLE `scheduled_job` (                                     
                 `scheduled_job_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,  
                 `name` varchar(100) NOT NULL,                                    
                 `crontab` varchar(200) DEFAULT NULL,                             
                 `last_run_date` datetime DEFAULT NULL,                           
                 `next_run_date` datetime DEFAULT NULL,                           
                 `status` int(11) NOT NULL DEFAULT '0',                           
                 `is_active` tinyint(1) NOT NULL DEFAULT '0',                     
                 `is_periodical` tinyint(1) NOT NULL DEFAULT '0',                 
                 PRIMARY KEY (`scheduled_job_id`)                                 
               ) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8             

               
               CREATE TABLE `scheduled_job_action` (                                     
                        `scheduled_job_action_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,  
                        `type_id` int(11) NOT NULL,                                             
                        `scheduled_job_id` int(11) NOT NULL,                                    
                        `params` varchar(200) NOT NULL,                                         
                        PRIMARY KEY (`scheduled_job_action_id`)                                 
                      ) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8                    

                      
                      
 insert into `project_modules` (`NAME`, `TITLE`, `CATEGORY`, `PARENT_NAME`, `DATA`, `HIDDEN`, `PRIORITY`, `ADDED`) values('scheduled_job','scheduled_job','<#LANG_SECTION_SYSTEM#>','','','0','0','2014-01-20 13:02:48');
 