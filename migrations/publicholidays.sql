/*
SQLyog Enterprise v13.1.1 (64 bit)
MySQL - 10.4.27-MariaDB : Database - propertymanager
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/*Table structure for table `publicholidays` */

DROP TABLE IF EXISTS `publicholidays`;

CREATE TABLE `publicholidays` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `holidayname` VARCHAR(100) DEFAULT NULL,
  `date` DATE DEFAULT NULL,
  `repeatsannually` TINYINT(1) DEFAULT NULL,
  `skipweekends` TINYINT(1) DEFAULT NULL,
  `dateadded` DATETIME DEFAULT NULL,
  `addedby` INT(11) DEFAULT NULL,
  `deleted` TINYINT(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `publicholidays` */

insert  into `publicholidays`(`id`,`holidayname`,`date`,`repeatsannually`,`skipweekends`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(1,'New Mashujaa Day','2024-10-10',1,1,'2024-06-04 19:24:26',5,1,'2024-06-04 19:44:08',5),
(2,'Jamuhuri Day','2024-12-12',1,1,'2024-06-04 19:38:28',5,0,NULL,NULL),
(3,'Christmas Day','2024-12-25',1,0,'2024-06-04 19:47:57',5,0,NULL,NULL),
(4,'Boxing Day','2024-12-26',1,1,'2024-06-04 19:48:12',5,0,NULL,NULL),
(5,'New Years Day','2025-01-01',1,1,'2024-06-04 19:48:30',5,0,NULL,NULL);

/* Procedure structure for procedure `sp_checkpublicholiday` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkpublicholiday` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkpublicholiday`($id int,$holidaydate date,$holidayname varchar(50))
BEGIN
		if exists(select * from `publicholidays` where `id`!=$id and `holidayname`=$holidayname and `deleted`=0 and date_format($holidaydate,'%Y-%m-%d')>=$holidaydate) then
			select 'holiday exists' as description;
		elseif exists(SELECT * FROM `publicholidays` WHERE `id`!=$id AND `date`=$holidaydate AND `deleted`=0) then 
			select 'date exists' as description;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deletepublicholiday` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deletepublicholiday` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletepublicholiday`($id int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			update `publicholidays`
			set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid
			where `id`=$id;
			
			select concat('Deleted public holiday id ',$id,' name: ',holidayname)
			into @narration
			from `publicholidays`
			where `id`=$id;
			
			CALL `sp_saveaudittrailentry`($userid,'Delete',@narration,$platform,'','',NULL); 
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpublicholidaydetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpublicholidaydetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpublicholidaydetails`($id int)
BEGIN
		select * 
		from `publicholidays`
		where `id`=$id;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpublicholidays` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpublicholidays` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpublicholidays`($holidaystatus varchar(50))
BEGIN
		if $holidaystatus='current' then
			select h.*, concat(`firstname`,' ',`middlename`,' ',`lastname`) addedbyname
			from `publicholidays` h
			inner join `user` u on u.userid=h.addedby
			where DATE_FORMAT(DATE,'%Y-%m-%d')>=DATE_FORMAT(NOW(),'%Y-%m-%d')
			and h.deleted=0
			order by `date`;
		else
			SELECT h.*, CONCAT(`firstname`,' ',`middlename`,' ',`lastname`) addedbyname
			FROM `publicholidays` h
			INNER JOIN `user` u ON u.userid=h.addedby
			WHERE date_format(DATE,'%Y-%m-%d')<date_format(NOW(),'%Y-%m-%d')
			AND h.deleted=0
			ORDER BY `date`;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpublicholidaysbetweendates` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpublicholidaysbetweendates` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpublicholidaysbetweendates`($startdate date,$enddate date)
BEGIN
		DECLARE $currentdate DATE;
		DECLARE $totaldays INT;
		DECLARE $day_of_week INT;
		declare $publicholidays int;
		declare $weekendcount int;
		
		SET $weekendcount = 0;
		SET $currentdate = $startdate;
		SET $totaldays = DATEDIFF($enddate, $startdate);

		WHILE $totaldays >= 0 DO
		    SET $day_of_week = DAYOFWEEK($currentdate);
		    IF $day_of_week = 1 OR $day_of_week = 7 THEN
		      SET $weekendcount = $weekendcount + 1;
		    END IF;
		    SET $currentdate = DATE_ADD($currentdate, INTERVAL 1 DAY);
		    SET $totaldays = $totaldays - 1;
		END WHILE;
		
		-- count public holidays in between
		select count(*) into $publicholidays
		from `publicholidays`
		where `date` between $startdate and $enddate and `deleted`=0;
		
		-- add public holidays to weekends
		set $totaldays=$totaldays+ifnull($publicholidays,0);
		
		-- return public holidays and weekend count
		select $totaldays as weekendspublicholidays;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savepublicholiday` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savepublicholiday` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savepublicholiday`($holidayid int,$holidayname varchar(50),$holidaydate date,
	$repeatsannually bool, $skipweekends bool,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			if $holidayid=0 then
				insert into `publicholidays`(`holidayname`,`date`,`repeatsannually`,`skipweekends`,`dateadded`,`addedby`)
				values($holidayname,$holidaydate,$repeatsannually,$skipweekends,now(),$userid);
				
				select max(`id`) into $holidayid from `publicholidays`;
				
				select concat('Created a new public holiday id: ',$holidayid,' name: ',$holidayname,' date: ',format($holidaydate,'%d-%b-%Y'))
				into @narration;
				
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
			else
				-- get field values before edit
				CALL `sp_gettabledata`('publicholidays','id',$holidayid,@originalvalues);
				-- update fields
				UPDATE `publicholidays`
				SET `holidayname`=$holidayname,`date`=$holidaydate,`repeatsannually`=$repeatsannually,`skipweekends`=$skipweekends
				WHERE `id`=$holidayid;
				-- get values after edit
				CALL `sp_gettabledata`('publicholidays','id',$holidayid,@currentvalues);
				-- generate audit trail narrative
				SELECT CONCAT('Updated holiday details for id :',$holidayid)
				INTO @narration;
				
				-- add audut trail entry
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;
			
			end if;
		commit;
	END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
