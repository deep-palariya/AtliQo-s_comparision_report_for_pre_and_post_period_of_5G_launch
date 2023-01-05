-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: codebasics
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `code`
--

DROP TABLE IF EXISTS `code`;
/*!50001 DROP VIEW IF EXISTS `code`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `code` AS SELECT 
 1 AS `city_name`,
 1 AS `city_code`,
 1 AS `date`,
 1 AS `before/after_5g`,
 1 AS `time_period`,
 1 AS `month_name`,
 1 AS `company`,
 1 AS `total_revenue`,
 1 AS `arpu`,
 1 AS `active_users`,
 1 AS `unsubscibed_users`,
 1 AS `tmv_city_crores`,
 1 AS `ms_pct`,
 1 AS `all_company`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `code1`
--

DROP TABLE IF EXISTS `code1`;
/*!50001 DROP VIEW IF EXISTS `code1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `code1` AS SELECT 
 1 AS `city_name`,
 1 AS `city_code`,
 1 AS `date`,
 1 AS `before/after_5g`,
 1 AS `time_period`,
 1 AS `month_name`,
 1 AS `company`,
 1 AS `total_revenue`,
 1 AS `arpu`,
 1 AS `active_users`,
 1 AS `unsubscibed_users`,
 1 AS `tmv_city_crores`,
 1 AS `ms_pct`,
 1 AS `all_company`,
 1 AS `plan`,
 1 AS `plan_description`,
 1 AS `plan_revenue_crores`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `code`
--

/*!50001 DROP VIEW IF EXISTS `code`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `code` AS select `t1`.`city_name` AS `city_name`,`t1`.`city_code` AS `city_code`,`t2`.`date` AS `date`,`t2`.`before/after_5g` AS `before/after_5g`,`t2`.`time_period` AS `time_period`,`t2`.`month_name` AS `month_name`,`t4`.`company` AS `company`,`t4`.`atliqo_revenue_crores` AS `total_revenue`,`t4`.`arpu` AS `arpu`,`t4`.`active_users_lakhs` AS `active_users`,`t4`.`unsubscribed_users_lakhs` AS `unsubscibed_users`,`t5`.`tmv_city_crores` AS `tmv_city_crores`,`t5`.`ms_pct` AS `ms_pct`,`t5`.`company` AS `all_company` from (`fact_market_share` `t5` left join ((`dim_date` `t2` left join `fact_atliqo_metrics` `t4` on((`t2`.`date` = `t4`.`date`))) left join `dim_cities` `t1` on((`t4`.`city_code` = `t1`.`city_code`))) on(((`t4`.`date` = `t5`.`date`) and (`t4`.`city_code` = `t5`.`city_code`) and (`t4`.`company` = `t5`.`company`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `code1`
--

/*!50001 DROP VIEW IF EXISTS `code1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `code1` AS select `code`.`city_name` AS `city_name`,`code`.`city_code` AS `city_code`,`code`.`date` AS `date`,`code`.`before/after_5g` AS `before/after_5g`,`code`.`time_period` AS `time_period`,`code`.`month_name` AS `month_name`,`code`.`company` AS `company`,`code`.`total_revenue` AS `total_revenue`,`code`.`arpu` AS `arpu`,`code`.`active_users` AS `active_users`,`code`.`unsubscibed_users` AS `unsubscibed_users`,`code`.`tmv_city_crores` AS `tmv_city_crores`,`code`.`ms_pct` AS `ms_pct`,`code`.`all_company` AS `all_company`,`b`.`plan` AS `plan`,`b`.`plan_description` AS `plan_description`,`a`.`plan_revenue_crores` AS `plan_revenue_crores` from ((`fact_plan_revenue` `a` left join `code` on(((`a`.`date` = `code`.`date`) and (`a`.`city_code` = `code`.`city_code`)))) left join `dim_plan` `b` on((`a`.`plans` = `b`.`plan`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-05 23:27:31
