-- MySQL dump 10.13  Distrib 9.5.0, for macos26.0 (arm64)
--
-- Host: 127.0.0.1    Database: sample-database-file
-- ------------------------------------------------------
-- Server version	8.0.29
-- QuickBooks Enterprise 2024

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ABMC_TSAFE`
--

DROP TABLE IF EXISTS `ABMC_TSAFE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABMC_TSAFE` (
  `ADMIN_NAME` varchar(256) NOT NULL,
  `ADMIN_KEY` varchar(1024) NOT NULL,
  `challenge_text` varchar(257)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CF_SYSINFO`
--

DROP TABLE IF EXISTS `CF_SYSINFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CF_SYSINFO` (
  `sysinfo_name` varchar(256) NOT NULL,
  `sysinfo_value` varchar(256) NOT NULL,
  `sysinfo_pk` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`sysinfo_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DB_INTERNAL`
--

DROP TABLE IF EXISTS `DB_INTERNAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DB_INTERNAL` (
  `internal_name` varchar(256) NOT NULL,
  `internal_value` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GLOBAL_LOCKS`
--

DROP TABLE IF EXISTS `GLOBAL_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GLOBAL_LOCKS` (
  `lock_key` varchar(512) NOT NULL,
  `lock_userid` int NOT NULL,
  `lock_count` int NOT NULL,
  KEY (`lock_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I_ATTRIBUTES`
--

DROP TABLE IF EXISTS `I_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `I_ATTRIBUTES` (
  `key_fld` int NOT NULL,
  `rec_num` int NOT NULL,
  `data_size` int NOT NULL,
  `data_fld` varbinary(32767) NOT NULL,
  KEY (`key_fld`,`rec_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I_CHAOS_BANK_PROFILE`
--

DROP TABLE IF EXISTS `I_CHAOS_BANK_PROFILE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `I_CHAOS_BANK_PROFILE` (
  `key_fld` int NOT NULL,
  `rec_num` int NOT NULL,
  `data_size` int NOT NULL,
  `data_fld` varbinary(32767) NOT NULL,
  KEY (`key_fld`,`rec_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I_DATADICT`
--

DROP TABLE IF EXISTS `I_DATADICT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `I_DATADICT` (
  `key_fld` int NOT NULL,
  `rec_num` int NOT NULL,
  `data_size` int NOT NULL,
  `data_fld` varbinary(32767) NOT NULL,
  KEY (`key_fld`,`rec_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I_EFILEP60DATA`
--

DROP TABLE IF EXISTS `I_EFILEP60DATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `I_EFILEP60DATA` (
  `key_fld` int NOT NULL DEFAULT 0,
  `rec_num` int NOT NULL DEFAULT 0,
  `data_size` int NOT NULL DEFAULT 0,
  `data_fld` varbinary(32767) NOT NULL,
  KEY (`key_fld`,`rec_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I_EFILEPRDATA`
--

DROP TABLE IF EXISTS `I_EFILEPRDATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `I_EFILEPRDATA` (
  `key_fld` int NOT NULL DEFAULT 0,
  `rec_num` int NOT NULL DEFAULT 0,
  `data_size` int NOT NULL DEFAULT 0,
  `data_fld` varbinary(32767) NOT NULL,
  KEY (`key_fld`,`rec_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I_EXTERNAL_DATA`
--

DROP TABLE IF EXISTS `I_EXTERNAL_DATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `I_EXTERNAL_DATA` (
  `key_fld` varchar(256) NOT NULL,
  `rec_num` int NOT NULL,
  `data_size` int NOT NULL,
  `data_fld` varbinary(32767) NOT NULL,
  KEY (`key_fld`,`rec_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I_EXTERNAL_FILES_BACKUP`
--

DROP TABLE IF EXISTS `I_EXTERNAL_FILES_BACKUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `I_EXTERNAL_FILES_BACKUP` (
  `key_fld` int NOT NULL,
  `rec_num` int NOT NULL,
  `data_size` int NOT NULL,
  `data_fld` varbinary(32767) NOT NULL,
  KEY (`key_fld`,`rec_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I_GENERAL`
--

DROP TABLE IF EXISTS `I_GENERAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `I_GENERAL` (
  `key_fld` int NOT NULL,
  `rec_num` int NOT NULL,
  `data_size` int NOT NULL,
  `data_fld` varbinary(32767) NOT NULL,
  KEY (`key_fld`,`rec_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I_LISTCOLUMNINFO`
--

DROP TABLE IF EXISTS `I_LISTCOLUMNINFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `I_LISTCOLUMNINFO` (
  `key_fld` int NOT NULL,
  `rec_num` int NOT NULL,
  `data_size` int NOT NULL,
  `data_fld` varbinary(32767) NOT NULL,
  KEY (`key_fld`,`rec_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I_OLB_ALIASES`
--

DROP TABLE IF EXISTS `I_OLB_ALIASES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `I_OLB_ALIASES` (
  `key_fld` varchar(256) NOT NULL,
  `rec_num` int NOT NULL,
  `data_size` int NOT NULL,
  `data_fld` varbinary(32767) NOT NULL,
  KEY (`key_fld`,`rec_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I_RECONCILIATION_DISCREPANCY_TRACKER`
--

DROP TABLE IF EXISTS `I_RECONCILIATION_DISCREPANCY_TRACKER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `I_RECONCILIATION_DISCREPANCY_TRACKER` (
  `key_fld` varchar(256) NOT NULL,
  `rec_num` int NOT NULL,
  `data_size` int NOT NULL,
  `data_fld` varbinary(32767) NOT NULL,
  KEY (`key_fld`,`rec_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I_SPECIAL`
--

DROP TABLE IF EXISTS `I_SPECIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `I_SPECIAL` (
  `key_fld` int NOT NULL,
  `rec_num` int NOT NULL,
  `data_size` int NOT NULL,
  `data_fld` varbinary(32767) NOT NULL,
  KEY (`key_fld`,`rec_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I_TRIPRECORDS`
--

DROP TABLE IF EXISTS `I_TRIPRECORDS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `I_TRIPRECORDS` (
  `key_fld` int NOT NULL,
  `rec_num` int NOT NULL,
  `data_size` int NOT NULL,
  `data_fld` varbinary(32767) NOT NULL,
  KEY (`key_fld`,`rec_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I_USER_WINDATA`
--

DROP TABLE IF EXISTS `I_USER_WINDATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `I_USER_WINDATA` (
  `key_fld` int NOT NULL,
  `rec_num` int NOT NULL,
  `data_size` int NOT NULL,
  `data_fld` varbinary(32767) NOT NULL,
  KEY (`key_fld`,`rec_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I_USER_WINPOS`
--

DROP TABLE IF EXISTS `I_USER_WINPOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `I_USER_WINPOS` (
  `key_fld` int NOT NULL,
  `rec_num` int NOT NULL,
  `data_size` int NOT NULL,
  `data_fld` varbinary(32767) NOT NULL,
  KEY (`key_fld`,`rec_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I_USER_WINTEMPDATA`
--

DROP TABLE IF EXISTS `I_USER_WINTEMPDATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `I_USER_WINTEMPDATA` (
  `key_fld` int NOT NULL,
  `rec_num` int NOT NULL,
  `data_size` int NOT NULL,
  `data_fld` varbinary(32767) NOT NULL,
  KEY (`key_fld`,`rec_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I_USER_WINTEMPPOS`
--

DROP TABLE IF EXISTS `I_USER_WINTEMPPOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `I_USER_WINTEMPPOS` (
  `key_fld` int NOT NULL,
  `rec_num` int NOT NULL,
  `data_size` int NOT NULL,
  `data_fld` varbinary(32767) NOT NULL,
  KEY (`key_fld`,`rec_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LOCKS`
--

DROP TABLE IF EXISTS `LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOCKS` (
  `lock_recval` int NOT NULL,
  `lock_key` varchar(512) NOT NULL,
  `lock_userid` varchar(256) NOT NULL,
  KEY (`lock_recval`,`lock_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LOCK_TRACE`
--

DROP TABLE IF EXISTS `LOCK_TRACE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOCK_TRACE` (
  `locktr_userid` int NOT NULL,
  `locktr_type` varchar(10),
  `locktr_count` int,
  `locktr_recval` int,
  `locktr_key` varchar(512) NOT NULL,
  `locktr_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QBIM_Prefs`
--

DROP TABLE IF EXISTS `QBIM_Prefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QBIM_Prefs` (
  `prefs_name` varchar(256) NOT NULL,
  `prefs_user_name` varchar(256) NOT NULL,
  `prefs_value` varchar(256) NOT NULL,
  KEY (`prefs_name`,`prefs_user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_abm_id`
--

DROP TABLE IF EXISTS `abmc_abm_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_abm_id` (
  `id_type` int NOT NULL,
  `abm_id` varchar(17) NOT NULL,
  KEY (`abm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_account_association`
--

DROP TABLE IF EXISTS `abmc_account_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_account_association` (
  `edlist_item_id` int NOT NULL,
  `edlist_type` smallint NOT NULL,
  `account_id` int NOT NULL,
  `amount` decimal(20,5),
  `originator_text_id` int NOT NULL,
  `force_prefill_bool` tinyint(1) NOT NULL DEFAULT 0,
  `count_to_use_before_prefill` int NOT NULL,
  `account_association_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `display_order` int NOT NULL,
  KEY (`edlist_item_id`,`edlist_type`,`account_id`,`display_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_account_ending_balance`
--

DROP TABLE IF EXISTS `abmc_account_ending_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_account_ending_balance` (
  `account_id` int NOT NULL,
  `review_ending_date` date NOT NULL,
  `cash_basis_amt` decimal(20,5),
  `accrual_basis_amt` decimal(20,5),
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `account_ending_balance_abm_id` varchar(17) NOT NULL,
  `company_id` int NOT NULL,
  `review_start_date` date NOT NULL,
  KEY (`account_id`,`review_ending_date`,`review_start_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_account_internal`
--

DROP TABLE IF EXISTS `abmc_account_internal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_account_internal` (
  `account_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `modtimestamp_tms` int,
  `ending_balance_amt` decimal(20,5),
  `check_to_send_bool` tinyint(1) NOT NULL,
  `special_type` smallint,
  `cc_payment_account_id` int,
  `cc_payee_id` int,
  `service_charge_class_id` int,
  `interest_account_id` int,
  `interest_class_id` int,
  `service_charge_account_id` int,
  `last_statement_date` date,
  `last_matched_trans_date` date,
  `reconcile_statement_date` date,
  `interest_date` date,
  `service_charge_date` date,
  `interest_amt` decimal(20,5),
  `service_charge_amt` decimal(20,5),
  `reconcile_statement_amt` decimal(20,5),
  `last_hand_doc` varchar(21),
  `cc_memo` varchar(100),
  `company_id` int,
  `tax_agency_id` int,
  `ending_balance_home_amt` decimal(20,5),
  `service_charge_exch_rate` float NOT NULL DEFAULT 1.0,
  `interest_exch_rate` float NOT NULL DEFAULT 1.0,
  `balance_adjustment_exch_rate` float NOT NULL DEFAULT 1.0,
  `display_index_next` int NOT NULL DEFAULT 0,
  KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_account_user`
--

DROP TABLE IF EXISTS `abmc_account_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_account_user` (
  `account_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(32),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `reimbursed_account_id` int,
  `attributes_id` int,
  `parent_id` int,
  `sublevel` smallint,
  `tax_line_id_num` int,
  `color_r` smallint,
  `color_g` smallint,
  `color_b` smallint,
  `type` smallint,
  `is_reimbursed_bool` tinyint(1) NOT NULL,
  `is_online_bool` tinyint(1) NOT NULL,
  `show_online_tab_bool` tinyint(1) NOT NULL,
  `account_num` varchar(8),
  `bank_number` varchar(257),
  `description` varchar(201),
  `last_print_doc` varchar(21),
  `account_abm_id` varchar(17),
  `work_paper_reference` varchar(33),
  `company_id` int,
  `sales_tax_code_id` int,
  `tool_tip_description` varchar(301),
  `save_all_matched_bool` tinyint(1) NOT NULL DEFAULT 0,
  `save_all_valid_new_bool` tinyint(1) NOT NULL DEFAULT 0,
  `bank_statement_date` date,
  `routing_number` varchar(257),
  `account_type` smallint,
  `currency_id` int,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `class_id` int,
  `sort_code` varchar(9),
  `account_holder_name` varchar(29),
  `building_soc_ref` varchar(19),
  KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_admin_master_key`
--

DROP TABLE IF EXISTS `abmc_admin_master_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_admin_master_key` (
  `admin_master_key_id` int NOT NULL,
  `admin_encrypt_master_key` varchar(257) NOT NULL,
  `admin_master_key_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  KEY (`admin_master_key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_alias`
--

DROP TABLE IF EXISTS `abmc_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_alias` (
  `alias_id` int NOT NULL AUTO_INCREMENT,
  `alias_name` varchar(256) NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `customer_id` int,
  `vendor_id` int,
  `employee_id` int,
  `other_id` int,
  `cname_timestamp_tms` int NOT NULL,
  `alias_type_id` int NOT NULL,
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `alias_abm_id` varchar(17) NOT NULL,
  `company_id` int NOT NULL,
  `QB_Conditions_Actions_XML` varchar(4000),
  PRIMARY KEY (`alias_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_application`
--

DROP TABLE IF EXISTS `abmc_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_application` (
  `company_id` int,
  `application_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `certificate_issuer` varchar(512),
  `serial_number` varchar(512),
  `application_name` varchar(512),
  `application_id` varchar(512),
  `developer_name` varchar(512),
  `is_unattended_bool` tinyint(1) NOT NULL,
  `cert_status_type` smallint,
  `certificate_issue_tms` datetime,
  `certificate_expiration_tms` datetime,
  `application_source_type` smallint,
  KEY (`application_abm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_application_instance`
--

DROP TABLE IF EXISTS `abmc_application_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_application_instance` (
  `company_id` int,
  `app_instance_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `application_abm_id` varchar(17),
  `machine_id` varchar(40),
  `subscriber_id` varchar(40),
  KEY (`app_instance_abm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_ar_credit_card_payment`
--

DROP TABLE IF EXISTS `abmc_ar_credit_card_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_ar_credit_card_payment` (
  `ar_credit_card_payment_id` int NOT NULL AUTO_INCREMENT,
  `credit_card_trans_id` varchar(25),
  `credit_card_number` varchar(26),
  `name_on_card` varchar(42),
  `credit_card_address` varchar(42),
  `credit_card_postal_code` varchar(19),
  `expiration_date` date,
  `payment_type` smallint NOT NULL DEFAULT 1,
  `payment_status` smallint NOT NULL DEFAULT 0,
  `authorization_code` varchar(13),
  `previous_credit_card_trans_id` varchar(25),
  `client_trans_id` varchar(17),
  `txn_authorization_time_tms` int DEFAULT 0,
  `avs_street_result` smallint NOT NULL DEFAULT 2,
  `avs_postal_code_result` smallint NOT NULL DEFAULT 2,
  `card_security_code_match_result` smallint NOT NULL DEFAULT 2,
  `result_code` int DEFAULT 0,
  `result_message` varchar(61),
  `transaction_mode` smallint DEFAULT 0,
  `merchant_account_number` varchar(33),
  `commercial_card_customer_code` varchar(25),
  `recon_batch_id` varchar(42),
  `txn_authorization_stamp_tms` int DEFAULT 0,
  `payment_grouping_code` smallint,
  `payment_method_name` varchar(51),
  `recon_funding_date` date,
  `recon_funding_status` smallint NOT NULL DEFAULT 0,
  `recon_funding_query_timestamp_tms` int DEFAULT 0,
  `ar_credit_card_payment_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `transaction_type` smallint,
  `request_id` varchar(51),
  `system_trace_number` int,
  `transaction_time_zone` varchar(6),
  `terminal_id` varchar(9),
  `response_code` varchar(3),
  `emv_txn_aid` varchar(255),
  `emv_txn_cvm` smallint NOT NULL DEFAULT 0,
  `emv_entry_mode` smallint NOT NULL DEFAULT 0,
  `emv_terminal_id` varchar(255),
  `emv_app_label` varchar(255),
  PRIMARY KEY (`ar_credit_card_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_ar_debit_card_payment`
--

DROP TABLE IF EXISTS `abmc_ar_debit_card_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_ar_debit_card_payment` (
  `ar_debit_card_payment_id` int NOT NULL AUTO_INCREMENT,
  `debit_card_trans_id` varchar(25),
  `debit_card_number` varchar(26),
  `expiration_date` date,
  `payment_type` smallint NOT NULL DEFAULT 1,
  `payment_status` smallint NOT NULL DEFAULT 0,
  `authorization_code` varchar(7),
  `previous_debit_card_trans_id` varchar(25),
  `client_trans_id` varchar(17),
  `transaction_time_tms` int NOT NULL DEFAULT 0,
  `result_code` int NOT NULL DEFAULT 0,
  `result_message` varchar(61),
  `merchant_account_number` varchar(33),
  `ar_debit_card_payment_abm_id` varchar(17) NOT NULL DEFAULT '',
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company_id` int,
  `transaction_type` smallint,
  `terminal_id` varchar(9),
  `debit_card_account_type` smallint,
  `system_trace_number` int,
  `transaction_time_zone` varchar(6),
  `response_code` varchar(3),
  `network_response_code` varchar(3),
  `pin_pad_result_code` int NOT NULL DEFAULT 0,
  `recon_batch_id` varchar(10),
  `txn_authorization_stamp_tms` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`ar_debit_card_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_attached_doc`
--

DROP TABLE IF EXISTS `abmc_attached_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_attached_doc` (
  `attached_doc_id` int NOT NULL AUTO_INCREMENT,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `doc_creation_date` datetime NOT NULL,
  `doc_last_access_date` datetime NOT NULL,
  `entity_kind` smallint NOT NULL,
  `entity_type` smallint,
  `entity_ident` int,
  `filename` varchar(260) NOT NULL,
  `display_filename` varchar(260) NOT NULL,
  `title` varchar(256),
  `description` varchar(360),
  `keywords` varchar(1000),
  `comments` varchar(1000),
  `X_attached_to` varchar(300),
  `attachment_size` int NOT NULL,
  `qbuser_name` varchar(100),
  `is_local` tinyint(1) NOT NULL,
  `ipp_user_ident` varchar(100),
  `ipp_record_ident` int,
  `ipp_update_id` varchar(15),
  PRIMARY KEY (`attached_doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_attributes`
--

DROP TABLE IF EXISTS `abmc_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_attributes` (
  `attributes_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `attributes_definition_id` int,
  `attributes_abm_id` varchar(17),
  `attribute` varchar(2048),
  `company_id` int,
  KEY (`attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_attributes_definition`
--

DROP TABLE IF EXISTS `abmc_attributes_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_attributes_definition` (
  `attributes_definition_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(32),
  `data_type` smallint,
  `list_access` int,
  `trans_access` int,
  `control_flags` int,
  `attributes_definition_abm_id` varchar(17),
  `owner_guid` varchar(40),
  `company_id` int,
  KEY (`attributes_definition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_audit_event`
--

DROP TABLE IF EXISTS `abmc_audit_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_audit_event` (
  `audit_event_id` int NOT NULL AUTO_INCREMENT,
  `event_tms` int NOT NULL DEFAULT 0,
  `mod_user_id` int NOT NULL DEFAULT 0,
  `mod_user_name` varchar(128),
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `event_code` int NOT NULL DEFAULT 0,
  `audit_event_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `private_data` varbinary(32767),
  PRIMARY KEY (`audit_event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_audit_header`
--

DROP TABLE IF EXISTS `abmc_audit_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_audit_header` (
  `transaction_id` int NOT NULL,
  `revision_num` int NOT NULL AUTO_INCREMENT,
  `created_timestamp_tms` int,
  `modtimestamp_tms` int,
  `transaction_date` date,
  `trans_num` int,
  `doc_num` varchar(26),
  `fob` varchar(14),
  `terms_id` int,
  `terms_name` varchar(250),
  `sales_rep_id` int,
  `sales_rep_name` varchar(250),
  `ship_via_id` int,
  `ship_via_name` varchar(250),
  `target_id` int NOT NULL,
  `num_item_targets` int,
  `ship_date` date,
  `mod_user_id` int,
  `mod_user_name` varchar(128),
  `is_audit_trail_data_bool` tinyint(1) NOT NULL,
  `is_closing_date_exception_bool` tinyint(1) NOT NULL,
  `is_deletion_bool` tinyint(1) NOT NULL,
  `delete_tms` int,
  `delete_user_id` int,
  `delete_user_name` varchar(128),
  `audit_header_abm_id` varchar(17) NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `company_id` int NOT NULL,
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `transaction_view_type` int NOT NULL DEFAULT 0,
  `transaction_customer_id` int,
  `transaction_vendor_id` int,
  `transaction_employee_id` int,
  `transaction_other_id` int,
  `transaction_name_type` smallint,
  `transaction_name_text` varchar(250),
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `sticky_note` varchar(4000),
  KEY (`transaction_id`,`revision_num`),
  KEY (`revision_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_audit_lineitem`
--

DROP TABLE IF EXISTS `abmc_audit_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_audit_lineitem` (
  `transaction_id` int NOT NULL,
  `revision_num` int NOT NULL,
  `target_line_num` int NOT NULL,
  `target_id` int NOT NULL,
  `account_id` int,
  `account_name` varchar(250),
  `class_id` int,
  `class_name` varchar(250),
  `doc_num` varchar(21),
  `lineitem_customer_id` int,
  `lineitem_vendor_id` int,
  `lineitem_employee_id` int,
  `lineitem_other_id` int,
  `lineitem_name_type` smallint,
  `lineitem_name_text` varchar(250),
  `amount_amt` decimal(20,5),
  `amount_qnty` decimal(20,5),
  `quantity_amt` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `unit_price_amt` decimal(20,5),
  `unit_price_qnty` decimal(20,5),
  `unit_price_pct` decimal(20,5),
  `item_id` int,
  `item_name` varchar(250),
  `payment_method_id` int,
  `payment_method_name` varchar(250),
  `due_date` date,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_discount_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_to_be_printed_bool` tinyint(1) NOT NULL,
  `is_groupend_row_bool` tinyint(1) NOT NULL,
  `is_audit_trail_data_bool` tinyint(1) NOT NULL,
  `is_closing_date_exception_bool` tinyint(1) NOT NULL,
  `sibling_account_id` int,
  `sibling_account_name` varchar(250),
  `transaction_view_type` smallint,
  `billed_date` date,
  `mod_user_id` int,
  `mod_user_name` varchar(128),
  `abm_id` varchar(17) NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `memo` text,
  `company_id` int NOT NULL,
  `site_id` int,
  `unit_id` int,
  `audit_header_abm_id` varchar(17) NOT NULL,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `currency_code` varchar(101),
  `foreign_amount_qnty` decimal(20,5),
  `site_name` varchar(32),
  `sn_list` text,
  `rsb_id` int,
  `unit_abbr` varchar(32),
  KEY (`transaction_id`,`revision_num`,`target_line_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_autobackup_status`
--

DROP TABLE IF EXISTS `abmc_autobackup_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_autobackup_status` (
  `adr_id` int NOT NULL AUTO_INCREMENT,
  `adr_action` varchar(26) NOT NULL,
  `adr_start_time` datetime NOT NULL,
  `adr_end_time` datetime,
  `adr_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`adr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_bar_code`
--

DROP TABLE IF EXISTS `abmc_bar_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_bar_code` (
  `record_id` int NOT NULL,
  `record_type_id` int NOT NULL,
  `bar_code` varchar(129) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`record_id`,`record_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_bill_ccard_header`
--

DROP TABLE IF EXISTS `abmc_bill_ccard_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_bill_ccard_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `vendor_id` int,
  `abm_id` varchar(17) NOT NULL,
  `contact_id` varchar(17),
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_purchase_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_arap_bool` tinyint(1) NOT NULL,
  `end_balance_amt` decimal(20,5),
  `due_date` date,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `olb_txn_id` int,
  `transaction_view_type` smallint,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `sticky_note` varchar(4000),
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_bill_ccard_lineitem`
--

DROP TABLE IF EXISTS `abmc_bill_ccard_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_bill_ccard_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `customer_id` int,
  `vendor_id` int,
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `reimbursed_type` smallint,
  `next_target_id` int,
  `class_id` int,
  `attributes_id` int,
  `contact_id` varchar(17),
  `sibling_account_id` int,
  `payment_method_id` int,
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `last_edit_by` int,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_paid_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `is_discount_bool` tinyint(1) NOT NULL,
  `is_uses_billed_date_bool` tinyint(1) NOT NULL,
  `is_applied_discount_bool` tinyint(1) NOT NULL,
  `amount_amt` decimal(20,5),
  `open_balance_amt` decimal(20,5),
  `bank_ref_name` varchar(32),
  `bank_routing_num` varchar(10),
  `bank_account_num` varchar(26),
  `bank_account_type` smallint,
  `reconcile_date` date,
  `due_date` date,
  `billed_date` date,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `net_open_balance_amt` decimal(20,5),
  `tax_open_balance_amt` decimal(20,5),
  `gross_open_balance_amt` decimal(20,5),
  `txn_line_order` int,
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_bill_check_header`
--

DROP TABLE IF EXISTS `abmc_bill_check_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_bill_check_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `vendor_id` int,
  `abm_id` varchar(17) NOT NULL,
  `contact_id` varchar(17),
  `send_account_id` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_to_be_printed_bool` tinyint(1) NOT NULL,
  `is_purchase_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_arap_bool` tinyint(1) NOT NULL,
  `due_date` date,
  `online_state_type` smallint,
  `is_transmit_memo_bool` tinyint(1) NOT NULL,
  `delivery_date` date,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `olb_txn_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `is_dd_payment_method` tinyint(1) NOT NULL DEFAULT 0,
  `direct_deposit_status` smallint,
  `direct_deposit_guid` varchar(40),
  `vendor_bank_account_id` int,
  `sticky_note` varchar(4000),
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_bill_check_lineitem`
--

DROP TABLE IF EXISTS `abmc_bill_check_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_bill_check_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `customer_id` int,
  `vendor_id` int,
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `reimbursed_type` smallint,
  `next_target_id` int,
  `class_id` int,
  `attributes_id` int,
  `sibling_account_id` int,
  `payment_method_id` int,
  `contact_id` varchar(17),
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `last_edit_by` int,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_paid_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `is_discount_bool` tinyint(1) NOT NULL,
  `is_uses_billed_date_bool` tinyint(1) NOT NULL,
  `is_applied_discount_bool` tinyint(1) NOT NULL,
  `amount_amt` decimal(20,5),
  `open_balance_amt` decimal(20,5),
  `bank_ref_name` varchar(32),
  `bank_routing_num` varchar(10),
  `bank_account_num` varchar(26),
  `bank_account_type` smallint,
  `reconcile_date` date,
  `due_date` date,
  `billed_date` date,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_suspense_bool` tinyint(1) NOT NULL DEFAULT 0,
  `net_open_balance_amt` decimal(20,5),
  `tax_open_balance_amt` decimal(20,5),
  `gross_open_balance_amt` decimal(20,5),
  `txn_line_order` int,
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_bill_header`
--

DROP TABLE IF EXISTS `abmc_bill_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_bill_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `vendor_id` int,
  `abm_id` varchar(17) NOT NULL,
  `contact_id` varchar(17),
  `terms_id` int,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `num_item_targets` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_purchase_bool` tinyint(1) NOT NULL,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_item_receipt_bool` tinyint(1) NOT NULL,
  `is_refunded_bool` tinyint(1) NOT NULL,
  `due_date` date,
  `latest_link_date` date,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `is_amt_incl_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `tax_code_id` int,
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `sticky_note` varchar(4000),
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_bill_inventory_lineitem`
--

DROP TABLE IF EXISTS `abmc_bill_inventory_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_bill_inventory_lineitem` (
  `inventory_record_id` int NOT NULL,
  `target_type` int NOT NULL,
  `target_id` int NOT NULL,
  `purchase_transaction_id` int,
  `purchase_target_id` int,
  `purchase_transaction_view_type` smallint,
  `purchase_transaction_date` date,
  `account_id` int,
  `amount_amt` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `foreign_amount_amt` decimal(20,5),
  KEY (`inventory_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_bill_line_sn`
--

DROP TABLE IF EXISTS `abmc_bill_line_sn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_bill_line_sn` (
  `target_id` int NOT NULL,
  `sn_seq` int NOT NULL AUTO_INCREMENT,
  `sn_id` int,
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`target_id`,`sn_seq`),
  KEY (`sn_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_bill_lineitem`
--

DROP TABLE IF EXISTS `abmc_bill_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_bill_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `item_id` int,
  `customer_id` int,
  `vendor_id` int,
  `employee_id` int,
  `other_id` int,
  `next_target_id` int,
  `class_id` int,
  `attributes_id` int,
  `sibling_account_id` int,
  `contact_id` varchar(17),
  `company_id` int,
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `amount_amt` decimal(20,5),
  `is_source_bool` tinyint(1) NOT NULL,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_groupend_row_bool` tinyint(1) NOT NULL,
  `is_applied_discount_bool` tinyint(1) NOT NULL,
  `is_based_on_time_act_bool` tinyint(1) NOT NULL,
  `is_receipt_bool` tinyint(1) NOT NULL,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_purchase_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `quantity_qnty` decimal(20,5),
  `reimbursed_type` smallint,
  `is_discount_bool` tinyint(1) NOT NULL,
  `is_invoiced_bool` tinyint(1) NOT NULL,
  `reconcile_date` date,
  `due_date` date,
  `cogs_amt` decimal(20,5),
  `open_qnty` decimal(20,5),
  `open_balance_amt` decimal(20,5),
  `unit_price_amt` decimal(20,5),
  `unit_price_pct` decimal(20,5),
  `unit_price_qnty` decimal(20,5),
  `is_manually_closed_bool` tinyint(1) NOT NULL,
  `is_received_bool` tinyint(1) NOT NULL,
  `bank_account_type` smallint,
  `bank_ref_name` varchar(32),
  `bank_routing_num` varchar(10),
  `bank_account_num` varchar(26),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `memo` text,
  `net_amount_amt` decimal(20,5),
  `gross_amount_amt` decimal(20,5),
  `tax_amount_amt` decimal(20,5),
  `taxable_amount_amt` decimal(20,5),
  `filed_date` date,
  `tax_code_id` int,
  `gross_unit_price_amt` decimal(20,5),
  `gross_unit_price_qnty` decimal(20,5),
  `gross_unit_price_pct` decimal(20,5),
  `is_trans_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `site_id` int,
  `unit_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `derived_OnHand_qnty` decimal(20,5),
  `taxable_amount_qnty` decimal(20,5),
  `net_open_balance_amt` decimal(20,5),
  `tax_open_balance_amt` decimal(20,5),
  `gross_open_balance_amt` decimal(20,5),
  `rsb_id` int,
  `txn_line_order` int,
  `sales_rep_id` int,
  `include_in_box4_bool` tinyint(1) NOT NULL DEFAULT 0,
  `manufacturer_part_num` varchar(32),
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_budget`
--

DROP TABLE IF EXISTS `abmc_budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_budget` (
  `account_id` int NOT NULL,
  `budget_type` smallint NOT NULL,
  `budget_year` smallint NOT NULL,
  `account_axis_type` smallint NOT NULL,
  `jan_amt` decimal(20,5),
  `feb_amt` decimal(20,5),
  `mar_amt` decimal(20,5),
  `apr_amt` decimal(20,5),
  `may_amt` decimal(20,5),
  `jun_amt` decimal(20,5),
  `jul_amt` decimal(20,5),
  `aug_amt` decimal(20,5),
  `sep_amt` decimal(20,5),
  `oct_amt` decimal(20,5),
  `nov_amt` decimal(20,5),
  `dec_amt` decimal(20,5),
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `abm_id` varchar(17) NOT NULL,
  `company_id` int NOT NULL,
  `class_id` int NOT NULL,
  `customer_id` int NOT NULL,
  KEY (`account_id`,`budget_type`,`budget_year`,`account_axis_type`,`class_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_cf_facts`
--

DROP TABLE IF EXISTS `abmc_cf_facts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_cf_facts` (
  `fact_id` int NOT NULL AUTO_INCREMENT,
  `fact_key` varchar(128) NOT NULL,
  `fact_value` text,
  `fact_type` varchar(16),
  PRIMARY KEY (`fact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_challenge_phrase`
--

DROP TABLE IF EXISTS `abmc_challenge_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_challenge_phrase` (
  `challenge_phrase_id` int NOT NULL AUTO_INCREMENT,
  `challenge_text` varchar(257) NOT NULL,
  `is_selected_bool` tinyint(1) NOT NULL,
  `challenge_phrase_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  PRIMARY KEY (`challenge_phrase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_check_header`
--

DROP TABLE IF EXISTS `abmc_check_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_check_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `customer_id` int,
  `vendor_id` int,
  `employee_id` int,
  `other_id` int,
  `abm_id` varchar(17) NOT NULL,
  `contact_id` varchar(17),
  `send_account_id` int,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `num_item_targets` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_to_be_printed_bool` tinyint(1) NOT NULL,
  `is_refunded_bool` tinyint(1) NOT NULL,
  `online_state_type` smallint,
  `is_transmit_memo_bool` tinyint(1) NOT NULL,
  `transaction_name_type` smallint,
  `delivery_date` date,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `is_amt_incl_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `tax_code_id` int,
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `olb_txn_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `is_dd_payment_method` tinyint(1) NOT NULL DEFAULT 0,
  `direct_deposit_status` smallint,
  `direct_deposit_guid` varchar(40),
  `vendor_bank_account_id` int,
  `sticky_note` varchar(4000),
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_check_inventory_lineitem`
--

DROP TABLE IF EXISTS `abmc_check_inventory_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_check_inventory_lineitem` (
  `inventory_record_id` int NOT NULL,
  `target_type` int NOT NULL,
  `target_id` int NOT NULL,
  `purchase_transaction_id` int,
  `purchase_target_id` int,
  `purchase_transaction_view_type` smallint,
  `purchase_transaction_date` date,
  `account_id` int,
  `amount_amt` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `foreign_amount_amt` decimal(20,5),
  KEY (`inventory_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_check_line_sn`
--

DROP TABLE IF EXISTS `abmc_check_line_sn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_check_line_sn` (
  `target_id` int NOT NULL,
  `sn_seq` int NOT NULL AUTO_INCREMENT,
  `sn_id` int,
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`target_id`,`sn_seq`),
  KEY (`sn_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_check_lineitem`
--

DROP TABLE IF EXISTS `abmc_check_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_check_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `item_id` int,
  `customer_id` int,
  `vendor_id` int,
  `employee_id` int,
  `other_id` int,
  `next_target_id` int,
  `class_id` int,
  `attributes_id` int,
  `sibling_account_id` int,
  `contact_id` varchar(17),
  `company_id` int,
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `amount_amt` decimal(20,5),
  `is_source_bool` tinyint(1) NOT NULL,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_applied_discount_bool` tinyint(1) NOT NULL,
  `is_based_on_time_act_bool` tinyint(1) NOT NULL,
  `is_receipt_bool` tinyint(1) NOT NULL,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_purchase_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `quantity_qnty` decimal(20,5),
  `reimbursed_type` smallint,
  `is_discount_bool` tinyint(1) NOT NULL,
  `is_invoiced_bool` tinyint(1) NOT NULL,
  `reconcile_date` date,
  `due_date` date,
  `cogs_amt` decimal(20,5),
  `open_qnty` decimal(20,5),
  `open_balance_amt` decimal(20,5),
  `unit_price_amt` decimal(20,5),
  `unit_price_pct` decimal(20,5),
  `unit_price_qnty` decimal(20,5),
  `is_manually_closed_bool` tinyint(1) NOT NULL,
  `is_received_bool` tinyint(1) NOT NULL,
  `is_groupend_row_bool` tinyint(1) NOT NULL,
  `is_dont_print_target_bool` tinyint(1) NOT NULL,
  `bank_account_type` smallint,
  `bank_ref_name` varchar(32),
  `bank_routing_num` varchar(10),
  `bank_account_num` varchar(26),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `memo` text,
  `net_amount_amt` decimal(20,5),
  `gross_amount_amt` decimal(20,5),
  `tax_amount_amt` decimal(20,5),
  `taxable_amount_amt` decimal(20,5),
  `filed_date` date,
  `tax_code_id` int,
  `gross_unit_price_amt` decimal(20,5),
  `gross_unit_price_qnty` decimal(20,5),
  `gross_unit_price_pct` decimal(20,5),
  `is_trans_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `site_id` int,
  `unit_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `epayment_txn_ident` varchar(25),
  `payment_entry_type` smallint,
  `derived_OnHand_qnty` decimal(20,5),
  `taxable_amount_qnty` decimal(20,5),
  `net_open_balance_amt` decimal(20,5),
  `tax_open_balance_amt` decimal(20,5),
  `gross_open_balance_amt` decimal(20,5),
  `rsb_id` int,
  `txn_line_order` int,
  `sales_rep_id` int,
  `manufacturer_part_num` varchar(32),
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_class`
--

DROP TABLE IF EXISTS `abmc_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_class` (
  `class_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(32),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `attributes_id` int,
  `parent_id` int,
  `sublevel` smallint,
  `was_imported_bool` tinyint(1) NOT NULL,
  `class_abm_id` varchar(17) NOT NULL,
  `company_id` int,
  `display_index_next` int NOT NULL DEFAULT 0,
  KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_comp_file_event_subscript`
--

DROP TABLE IF EXISTS `abmc_comp_file_event_subscript`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_comp_file_event_subscript` (
  `company_id` int,
  `comp_event_subscript_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `subscription_abm_id` varchar(17),
  `company_operation_type` smallint,
  KEY (`comp_event_subscript_abm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_contacts`
--

DROP TABLE IF EXISTS `abmc_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_contacts` (
  `contacts_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `name_id` int,
  `expired_date` date,
  `salutation` varchar(16),
  `first_name` varchar(26),
  `middle_initial` varchar(6),
  `last_name` varchar(26),
  `initials` varchar(4),
  `company_name` varchar(42),
  `contact1` varchar(42),
  `contact2` varchar(42),
  `telephone_num1` varchar(22),
  `telephone_num2` varchar(22),
  `cellular_num` varchar(22),
  `fax_num` varchar(22),
  `pager_num` varchar(22),
  `pager_pin` varchar(11),
  `address_line1` varchar(42),
  `address_line2` varchar(42),
  `address_line3` varchar(42),
  `address_line4` varchar(42),
  `address_line5` varchar(42),
  `city` varchar(32),
  `state` varchar(22),
  `postal_code` varchar(14),
  `country` char(32),
  `note` varchar(73),
  `email` varchar(1024),
  `emailCC` varchar(1024),
  `account_num` varchar(100),
  `company_id` int,
  `street_line1` varchar(42),
  `street_line2` varchar(42),
  `street_line3` varchar(42),
  `street_line4` varchar(42),
  `street_line5` varchar(42),
  `alternate_id` int,
  `entity_id` int,
  `contact_type` int,
  `is_primary` tinyint(1),
  `title` varchar(42),
  `additional_contacts_type` smallint NOT NULL DEFAULT 0,
  KEY (`contacts_abm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_contacts_channel`
--

DROP TABLE IF EXISTS `abmc_contacts_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_contacts_channel` (
  `channel_category_id` int NOT NULL,
  `channel_category_name` varchar(42) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `company_id` int NOT NULL DEFAULT 0,
  `db_created_tms` datetime,
  `db_modified_tms` datetime,
  KEY (`channel_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_contacts_info`
--

DROP TABLE IF EXISTS `abmc_contacts_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_contacts_info` (
  `channel_category_id` int NOT NULL,
  `field_value` varchar(254),
  `position` int NOT NULL DEFAULT -1,
  `name_id` int NOT NULL DEFAULT -1,
  `is_deleted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `company_id` int NOT NULL DEFAULT 0,
  `db_created_tms` datetime,
  `db_modified_tms` datetime,
  KEY (`name_id`,`channel_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_credit_cardcharge_header`
--

DROP TABLE IF EXISTS `abmc_credit_cardcharge_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_credit_cardcharge_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `customer_id` int,
  `vendor_id` int,
  `employee_id` int,
  `other_id` int,
  `abm_id` varchar(17) NOT NULL,
  `contact_id` varchar(17),
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `num_item_targets` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_refunded_bool` tinyint(1) NOT NULL,
  `transaction_name_type` smallint,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `is_amt_incl_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `tax_code_id` int,
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `sticky_note` varchar(4000),
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_credit_cardcharge_inventory_lineitem`
--

DROP TABLE IF EXISTS `abmc_credit_cardcharge_inventory_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_credit_cardcharge_inventory_lineitem` (
  `inventory_record_id` int NOT NULL,
  `target_type` int NOT NULL,
  `target_id` int NOT NULL,
  `purchase_transaction_id` int,
  `purchase_target_id` int,
  `purchase_transaction_view_type` smallint,
  `purchase_transaction_date` date,
  `account_id` int,
  `amount_amt` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `foreign_amount_amt` decimal(20,5),
  KEY (`inventory_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_credit_cardcharge_line_sn`
--

DROP TABLE IF EXISTS `abmc_credit_cardcharge_line_sn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_credit_cardcharge_line_sn` (
  `target_id` int NOT NULL,
  `sn_seq` int NOT NULL AUTO_INCREMENT,
  `sn_id` int,
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`target_id`,`sn_seq`),
  KEY (`sn_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_credit_cardcharge_lineitem`
--

DROP TABLE IF EXISTS `abmc_credit_cardcharge_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_credit_cardcharge_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `item_id` int,
  `customer_id` int,
  `vendor_id` int,
  `employee_id` int,
  `other_id` int,
  `next_target_id` int,
  `class_id` int,
  `attributes_id` int,
  `sibling_account_id` int,
  `contact_id` varchar(17),
  `company_id` int,
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `amount_amt` decimal(20,5),
  `is_source_bool` tinyint(1) NOT NULL,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_applied_discount_bool` tinyint(1) NOT NULL,
  `is_based_on_time_act_bool` tinyint(1) NOT NULL,
  `is_receipt_bool` tinyint(1) NOT NULL,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_purchase_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `quantity_qnty` decimal(20,5),
  `reimbursed_type` smallint,
  `is_discount_bool` tinyint(1) NOT NULL,
  `is_invoiced_bool` tinyint(1) NOT NULL,
  `reconcile_date` date,
  `due_date` date,
  `cogs_amt` decimal(20,5),
  `open_qnty` decimal(20,5),
  `open_balance_amt` decimal(20,5),
  `unit_price_amt` decimal(20,5),
  `unit_price_pct` decimal(20,5),
  `unit_price_qnty` decimal(20,5),
  `is_manually_closed_bool` tinyint(1) NOT NULL,
  `is_groupend_row_bool` tinyint(1) NOT NULL,
  `is_received_bool` tinyint(1) NOT NULL,
  `bank_account_type` smallint,
  `bank_ref_name` varchar(32),
  `bank_routing_num` varchar(10),
  `bank_account_num` varchar(26),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `memo` text,
  `net_amount_amt` decimal(20,5),
  `gross_amount_amt` decimal(20,5),
  `tax_amount_amt` decimal(20,5),
  `taxable_amount_amt` decimal(20,5),
  `filed_date` date,
  `tax_code_id` int,
  `gross_unit_price_amt` decimal(20,5),
  `gross_unit_price_qnty` decimal(20,5),
  `gross_unit_price_pct` decimal(20,5),
  `is_trans_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `site_id` int,
  `unit_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `derived_OnHand_qnty` decimal(20,5),
  `taxable_amount_qnty` decimal(20,5),
  `net_open_balance_amt` decimal(20,5),
  `tax_open_balance_amt` decimal(20,5),
  `gross_open_balance_amt` decimal(20,5),
  `rsb_id` int,
  `txn_line_order` int,
  `sales_rep_id` int,
  `manufacturer_part_num` varchar(32),
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_credit_memo_header`
--

DROP TABLE IF EXISTS `abmc_credit_memo_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_credit_memo_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `customer_id` int,
  `abm_id` varchar(17) NOT NULL,
  `contact_id` varchar(17),
  `terms_id` int,
  `sales_tax_code_id` int,
  `ship_to_id` varchar(17),
  `ship_via_id` int,
  `sales_rep_id` int,
  `custom_style_id` int,
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_to_be_printed_bool` tinyint(1) NOT NULL,
  `is_to_be_sent_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_old_tran_tax_bool` tinyint(1) NOT NULL,
  `is_sale_bool` tinyint(1) NOT NULL,
  `customer_message_id` int,
  `ship_date` date,
  `delivery_date` date,
  `due_date` date,
  `fob` varchar(14),
  `po_num` varchar(26),
  `other` varchar(30),
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `is_amt_incl_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `company_tax_number` varchar(21),
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `site_id` int,
  `sticky_note` varchar(4000),
  `transaction_sendforms_id` int,
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_credit_memo_inventory_lineitem`
--

DROP TABLE IF EXISTS `abmc_credit_memo_inventory_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_credit_memo_inventory_lineitem` (
  `inventory_record_id` int NOT NULL,
  `target_type` int NOT NULL,
  `target_id` int NOT NULL,
  `purchase_transaction_id` int,
  `purchase_target_id` int,
  `purchase_transaction_view_type` smallint,
  `purchase_transaction_date` date,
  `account_id` int,
  `amount_amt` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `foreign_amount_amt` decimal(20,5),
  KEY (`inventory_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_credit_memo_line_sn`
--

DROP TABLE IF EXISTS `abmc_credit_memo_line_sn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_credit_memo_line_sn` (
  `target_id` int NOT NULL,
  `sn_seq` int NOT NULL AUTO_INCREMENT,
  `sn_id` int,
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`target_id`,`sn_seq`),
  KEY (`sn_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_credit_memo_lineitem`
--

DROP TABLE IF EXISTS `abmc_credit_memo_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_credit_memo_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `item_id` int,
  `customer_id` int,
  `vendor_id` int,
  `next_target_id` int,
  `sales_tax_code_id` int,
  `class_id` int,
  `attributes_id` int,
  `payment_method_id` int,
  `sibling_account_id` int,
  `contact_id` varchar(17),
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `last_edit_by` int,
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_estimated_bool` tinyint(1) NOT NULL,
  `is_purchase_order_bool` tinyint(1) NOT NULL,
  `is_purchase_bool` tinyint(1) NOT NULL,
  `is_sale_bool` tinyint(1) NOT NULL,
  `is_received_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_trans_tax_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_dont_print_target_bool` tinyint(1) NOT NULL,
  `is_item_from_estimate_bool` tinyint(1) NOT NULL,
  `is_base_on_time_activity_bool` tinyint(1) NOT NULL,
  `reimbursed_type` smallint,
  `is_sales_order_bool` tinyint(1) NOT NULL,
  `is_inactive_bool` tinyint(1) NOT NULL,
  `is_invoiced_bool` tinyint(1) NOT NULL,
  `is_item_from_sales_order_bool` tinyint(1) NOT NULL,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_manually_closed_bool` tinyint(1) NOT NULL,
  `is_uses_billed_date_bool` tinyint(1) NOT NULL,
  `has_custom_fields_bool` tinyint(1) NOT NULL,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `amount_amt` decimal(20,5),
  `amount_qnty` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `unit_price_amt` decimal(20,5),
  `unit_price_pct` decimal(20,5),
  `unit_price_qnty` decimal(20,5),
  `open_balance_amt` decimal(20,5),
  `due_date` date,
  `cogs_amt` decimal(20,5),
  `open_qnty` decimal(20,5),
  `estimate_qnty` decimal(20,5),
  `estimate_amt` decimal(20,5),
  `estimate_amt_qnty` decimal(20,5),
  `previous_billed_amt` decimal(20,5),
  `previous_billed_qnty` decimal(20,5),
  `reconcile_date` date,
  `sales_order_qnty` decimal(20,5),
  `previous_invoice_qnty` decimal(20,5),
  `taxable_discount_amt` decimal(20,5),
  `service_date` date,
  `billed_date` date,
  `markup_amt` decimal(20,5),
  `markup_amt_pct` decimal(20,5),
  `markup_amt_qnty` decimal(20,5),
  `ipp_state_type` smallint,
  `is_discount_bool` tinyint(1) NOT NULL,
  `is_applied_discount_bool` tinyint(1) NOT NULL,
  `is_groupend_row_bool` tinyint(1) NOT NULL,
  `nom_total_amt` decimal(20,5),
  `other1` varchar(30),
  `other2` varchar(30),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `net_amount_amt` decimal(20,5),
  `net_amount_qnty` decimal(20,5),
  `gross_amount_amt` decimal(20,5),
  `gross_amount_qnty` decimal(20,5),
  `tax_amount_amt` decimal(20,5),
  `tax_amount_qnty` decimal(20,5),
  `taxable_amount_amt` decimal(20,5),
  `taxable_amount_qnty` decimal(20,5),
  `gross_unit_price_amt` decimal(20,5),
  `gross_unit_price_qnty` decimal(20,5),
  `gross_unit_price_pct` decimal(20,5),
  `filed_date` date,
  `site_id` int,
  `unit_id` int,
  `ar_credit_card_payment_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `foreign_amount_qnty` decimal(20,5),
  `derived_OnHand_qnty` decimal(20,5),
  `net_open_balance_amt` decimal(20,5),
  `tax_open_balance_amt` decimal(20,5),
  `gross_open_balance_amt` decimal(20,5),
  `rsb_id` int,
  `txn_line_order` int,
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_currency`
--

DROP TABLE IF EXISTS `abmc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_currency` (
  `currency_id` int NOT NULL,
  `name` varchar(65) NOT NULL DEFAULT '',
  `code` varchar(17),
  `symbol` varchar(17),
  `current_rate` float NOT NULL DEFAULT 1.0,
  `symbol_position` int NOT NULL DEFAULT 0,
  `decimal_separator` varchar(2),
  `separator` varchar(2),
  `separator_grouping` varchar(33),
  `decimal_places` int NOT NULL DEFAULT 2,
  `is_EMU_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_user_defined_currency_bool` tinyint(1) NOT NULL DEFAULT 0,
  `gain_loss_account_id` int,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `is_hidden_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_delete_pending_bool` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `currency_abm_id` varchar(17) NOT NULL,
  `company_id` int,
  KEY (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_current_users`
--

DROP TABLE IF EXISTS `abmc_current_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_current_users` (
  `user_name` varchar(128) NOT NULL,
  `conn_ip_address` varchar(64) NOT NULL,
  `process_id` varchar(64) NOT NULL,
  `connection_pool` varchar(512) NOT NULL,
  `id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `lock_userid` int,
  `qb_major_version` int,
  `qb_minor_version` int,
  `qb_release_level` int,
  `qb_release_number` int,
  `product_no_str` varchar(256),
  `license_no_str` varchar(256),
  KEY (`user_name`,`conn_ip_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_custom_field`
--

DROP TABLE IF EXISTS `abmc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_custom_field` (
  `custom_field_abm_id` varchar(17),
  `abm_id` varchar(17) NOT NULL,
  `position` int NOT NULL,
  `field` varchar(31),
  `company_id` int,
  KEY (`abm_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_custom_field_type`
--

DROP TABLE IF EXISTS `abmc_custom_field_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_custom_field_type` (
  `custom_field_type_id` int NOT NULL AUTO_INCREMENT,
  `custom_field_position` int NOT NULL,
  `custom_field_name` varchar(32) NOT NULL,
  `is_for_customer_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_for_vendor_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_for_employee_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_for_item_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_mandatory_for_txn_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_mandatory_for_list_bool` tinyint(1) NOT NULL DEFAULT 0,
  `txn_item_types` int NOT NULL DEFAULT 0,
  `list_item_types` int NOT NULL DEFAULT 0,
  `owner_guid` varchar(40),
  `data_type` int NOT NULL DEFAULT 0,
  `data_type_version` int NOT NULL DEFAULT 0,
  `data_type_name` varchar(200) NOT NULL,
  `pattern` varchar(2000) NOT NULL,
  `error_text` varchar(2000) NOT NULL,
  `hint_text` varchar(2000) NOT NULL,
  `user_picklist` text,
  `company_id` int NOT NULL DEFAULT 0,
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timestamp_tms` int NOT NULL,
  `modtimestamp_tms` int NOT NULL,
  `data_type_ext` int NOT NULL DEFAULT 0,
  `control_flags` int NOT NULL DEFAULT 0,
  `list_access` int NOT NULL DEFAULT 0,
  `txn_access` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`custom_field_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_custom_style`
--

DROP TABLE IF EXISTS `abmc_custom_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_custom_style` (
  `custom_style_id` int NOT NULL,
  `custom_style_abm_id` varchar(17),
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(42),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `style_record_id` int,
  `attributes_id` int,
  `style_view_type` smallint,
  `is_predefined_bool` tinyint(1) NOT NULL,
  `company_id` int,
  KEY (`custom_style_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_customer_credit_card_info`
--

DROP TABLE IF EXISTS `abmc_customer_credit_card_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_customer_credit_card_info` (
  `customer_credit_card_info_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `encrypt_credit_card_number` varchar(257),
  `customer_credit_card_info_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `credit_card_consent_bool` tinyint(1) NOT NULL DEFAULT 0,
  `credit_card_consent_source` smallint NOT NULL DEFAULT 0,
  KEY (`customer_credit_card_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_customer_group`
--

DROP TABLE IF EXISTS `abmc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_customer_group` (
  `group_id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(256) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int NOT NULL DEFAULT 0,
  `group_name_upper` varchar(256),
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_customer_group_member`
--

DROP TABLE IF EXISTS `abmc_customer_group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_customer_group_member` (
  `group_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`group_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_customer_internal`
--

DROP TABLE IF EXISTS `abmc_customer_internal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_customer_internal` (
  `customer_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `modtimestamp_tms` int,
  `end_balance_amt` decimal(20,5),
  `transmit_memo_bool` tinyint(1) NOT NULL,
  `open_date` date,
  `root_dependency_count` int,
  `estimate_total_amt` decimal(20,5),
  `has_unbilled_reimbursable_bool` tinyint(1) NOT NULL,
  `company_id` int,
  `end_balance_home_amt` decimal(20,5),
  `list_ident` varchar(65) NOT NULL,
  `external_ident` varchar(65),
  `display_index_next` int NOT NULL DEFAULT 0,
  KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_customer_message`
--

DROP TABLE IF EXISTS `abmc_customer_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_customer_message` (
  `customer_message_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `attributes_id` int,
  `customer_message_abm_id` varchar(17),
  `cust_message` varchar(102),
  `company_id` int,
  KEY (`customer_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_customer_refund_header`
--

DROP TABLE IF EXISTS `abmc_customer_refund_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_customer_refund_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `customer_id` int,
  `contact_id` varchar(17),
  `abm_id` varchar(17) NOT NULL,
  `payment_method_id` int,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `is_refunded_bool` tinyint(1) NOT NULL,
  `is_paid_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `memo` text,
  `company_id` int NOT NULL,
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `origin` varchar(51),
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `sticky_note` varchar(4000),
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_customer_refund_lineitem`
--

DROP TABLE IF EXISTS `abmc_customer_refund_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_customer_refund_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `customer_id` int,
  `vendor_id` int,
  `contact_id` varchar(17),
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `reimbursed_type` smallint,
  `next_target_id` int,
  `attributes_id` int,
  `sibling_account_id` int,
  `payment_method_id` int NOT NULL,
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `last_edit_by` int,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `is_paid_bool` tinyint(1) NOT NULL,
  `account_id` int,
  `open_balance_amt` decimal(20,5),
  `amount_amt` decimal(20,5),
  `reconcile_date` date,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `memo` text,
  `company_id` int NOT NULL,
  `ar_credit_card_payment_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `net_open_balance_amt` decimal(20,5),
  `tax_open_balance_amt` decimal(20,5),
  `gross_open_balance_amt` decimal(20,5),
  `ar_debit_card_payment_id` int,
  `txn_line_order` int,
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_customer_type`
--

DROP TABLE IF EXISTS `abmc_customer_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_customer_type` (
  `customer_type_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(32),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `parent_id` int,
  `sublevel` smallint,
  `customer_type_abm_id` varchar(17),
  `company_id` int,
  `display_index_next` int NOT NULL DEFAULT 0,
  KEY (`customer_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_customer_user`
--

DROP TABLE IF EXISTS `abmc_customer_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_customer_user` (
  `customer_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(42),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `customer_type_id` int,
  `terms_id` int,
  `tax_item_id` int,
  `price_level_id` int,
  `job_type_id` int,
  `payment_method_id` int,
  `sales_tax_code_id` int,
  `sales_rep_id` int,
  `attributes_id` int,
  `parent_id` int,
  `root_id` int NOT NULL,
  `sublevel` smallint,
  `has_notes_bool` tinyint(1) NOT NULL,
  `is_imported_bool` tinyint(1) NOT NULL,
  `credit_limit_amt` decimal(20,5),
  `job_status_type` smallint,
  `job_start_date` date,
  `job_projected_end_date` date,
  `job_end_date` date,
  `nonemployee_pay_period_end_date` date,
  `last_send_method_type` smallint,
  `resale_num` varchar(21),
  `customer_abm_id` varchar(17),
  `ship_to_abm_id` varchar(17),
  `job_description` varchar(100),
  `company_id` int,
  `country_num` smallint NOT NULL DEFAULT 0,
  `currency_id` int,
  `external_ident` varchar(65),
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `ipn_settings_info` int NOT NULL DEFAULT 0,
  `use_customer_tax_code_bool` tinyint(1) NOT NULL DEFAULT 0,
  `ipn_payment_option` int NOT NULL DEFAULT 0,
  `class_id` int,
  KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_deposit_header`
--

DROP TABLE IF EXISTS `abmc_deposit_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_deposit_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `customer_id` int,
  `vendor_id` int,
  `employee_id` int,
  `other_id` int,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_purchase_bool` tinyint(1) NOT NULL,
  `transaction_name_type` smallint,
  `abm_id` varchar(17) NOT NULL,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `olb_txn_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `sticky_note` varchar(4000),
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_deposit_lineitem`
--

DROP TABLE IF EXISTS `abmc_deposit_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_deposit_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `customer_id` int,
  `vendor_id` int,
  `employee_id` int,
  `other_id` int,
  `next_target_id` int,
  `class_id` int,
  `sibling_account_id` int,
  `payment_method_id` int,
  `attributes_id` int,
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `amount_amt` decimal(20,5),
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `reimbursed_type` smallint,
  `cleared_type` smallint,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `is_arap_bool` tinyint(1) NOT NULL,
  `open_balance_amt` decimal(20,5),
  `is_less_cashback_bool` tinyint(1) NOT NULL,
  `reconcile_date` date,
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `net_amount_amt` decimal(20,5),
  `tax_amount_amt` decimal(20,5),
  `gross_amount_amt` decimal(20,5),
  `net_open_balance_amt` decimal(20,5),
  `tax_open_balance_amt` decimal(20,5),
  `gross_open_balance_amt` decimal(20,5),
  `txn_line_order` int,
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_discoverability_user_nudge`
--

DROP TABLE IF EXISTS `abmc_discoverability_user_nudge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_discoverability_user_nudge` (
  `nudge_id` smallint NOT NULL,
  `user_id` int NOT NULL,
  `workflow_id` smallint NOT NULL,
  `status` smallint NOT NULL DEFAULT 0,
  `count_shown` smallint NOT NULL DEFAULT 0,
  `last_shown_tms` int NOT NULL,
  `next_shown_tms` int NOT NULL,
  `nudge_type` smallint NOT NULL DEFAULT 0,
  KEY (`nudge_id`,`user_id`,`workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_domain_state`
--

DROP TABLE IF EXISTS `abmc_domain_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_domain_state` (
  `user_id` int NOT NULL,
  `domain_name` varchar(32) NOT NULL,
  `component_name` varchar(32) NOT NULL,
  `abm_id` varchar(17) NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `company_id` int NOT NULL,
  `component_data` longtext,
  KEY (`user_id`,`domain_name`,`component_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_edlist_deletecount_map`
--

DROP TABLE IF EXISTS `abmc_edlist_deletecount_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_edlist_deletecount_map` (
  `edlist_type` smallint NOT NULL,
  `record_id` int NOT NULL,
  `delete_count` smallint NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`edlist_type`,`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_edlist_merge_log`
--

DROP TABLE IF EXISTS `abmc_edlist_merge_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_edlist_merge_log` (
  `edlist_merge_log_id` int NOT NULL AUTO_INCREMENT,
  `absorbed_element_id` int NOT NULL,
  `merged_element_id` int NOT NULL,
  `list_type` smallint NOT NULL,
  `list_view_type` smallint NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `edlist_merge_log_abm_id` varchar(17) NOT NULL,
  `company_id` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`edlist_merge_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_employee`
--

DROP TABLE IF EXISTS `abmc_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_employee` (
  `employee_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(42),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `workers_comp_code_id` int,
  `billing_rate_level_id` int,
  `class_id` int,
  `attributes_id` int,
  `has_notes_bool` tinyint(1) NOT NULL,
  `template_was_used_bool` tinyint(1) NOT NULL,
  `employee_type` smallint,
  `nonemployee_pay_period_end_date` date,
  `open_date` date,
  `employee_abm_id` varchar(17),
  `name_on_check` varchar(42),
  `company_id` int,
  `county_code` smallint,
  `is_farm_employee` tinyint(1) NOT NULL DEFAULT 0,
  `is_railroad_employee` tinyint(1) NOT NULL DEFAULT 0,
  `name_suffix` varchar(11),
  `list_ident` varchar(65) NOT NULL,
  `external_ident` varchar(65),
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `display_index_next` int NOT NULL DEFAULT 0,
  KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_entitlement`
--

DROP TABLE IF EXISTS `abmc_entitlement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_entitlement` (
  `company_id` int NOT NULL,
  `entitlement_id` int NOT NULL,
  `entitlement_abm_id` varchar(17),
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `name` varchar(65),
  `category_type` int,
  `is_visible_bool` tinyint(1) NOT NULL,
  `is_enabled_bool` tinyint(1) NOT NULL,
  `attributes_id` int,
  KEY (`entitlement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_estimate_header`
--

DROP TABLE IF EXISTS `abmc_estimate_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_estimate_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `customer_id` int,
  `sales_tax_code_id` int,
  `terms_id` int,
  `sales_rep_id` int,
  `ship_to_id` varchar(17),
  `contact_id` varchar(17),
  `custom_style_id` int,
  `customer_message_id` int,
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `last_edit_by` int,
  `is_to_be_printed_bool` tinyint(1) NOT NULL,
  `is_to_be_sent_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_arap_bool` tinyint(1) NOT NULL,
  `ship_date` date,
  `delivery_date` date,
  `is_old_tran_tax_bool` tinyint(1) NOT NULL,
  `is_sale_bool` tinyint(1) NOT NULL,
  `is_finance_charge_bool` tinyint(1) NOT NULL,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `po_num` varchar(26),
  `due_date` date,
  `fob` varchar(14),
  `abm_id` varchar(17) NOT NULL,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `other` varchar(30),
  `company_id` int,
  `memo` text,
  `is_amt_incl_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `company_tax_number` varchar(21),
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `site_id` int,
  `sticky_note` varchar(4000),
  `transaction_sendforms_id` int,
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_estimate_lineitem`
--

DROP TABLE IF EXISTS `abmc_estimate_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_estimate_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `item_id` int,
  `customer_id` int,
  `vendor_id` int,
  `next_target_id` int,
  `sales_tax_code_id` int,
  `class_id` int,
  `attributes_id` int,
  `payment_method_id` int,
  `sibling_account_id` int,
  `contact_id` varchar(17),
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `last_edit_by` int,
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_estimated_bool` tinyint(1) NOT NULL,
  `is_purchase_order_bool` tinyint(1) NOT NULL,
  `is_purchase_bool` tinyint(1) NOT NULL,
  `is_sale_bool` tinyint(1) NOT NULL,
  `is_received_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_trans_tax_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_dont_print_target_bool` tinyint(1) NOT NULL,
  `is_item_from_estimate_bool` tinyint(1) NOT NULL,
  `is_base_on_time_activity_bool` tinyint(1) NOT NULL,
  `reimbursed_type` smallint,
  `is_sales_order_bool` tinyint(1) NOT NULL,
  `is_inactive_bool` tinyint(1) NOT NULL,
  `is_invoiced_bool` tinyint(1) NOT NULL,
  `is_item_from_sales_order_bool` tinyint(1) NOT NULL,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_manually_closed_bool` tinyint(1) NOT NULL,
  `is_uses_billed_date_bool` tinyint(1) NOT NULL,
  `has_custom_fields_bool` tinyint(1) NOT NULL,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `amount_amt` decimal(20,5),
  `amount_qnty` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `unit_price_amt` decimal(20,5),
  `unit_price_pct` decimal(20,5),
  `unit_price_qnty` decimal(20,5),
  `open_balance_amt` decimal(20,5),
  `due_date` date,
  `cogs_amt` decimal(20,5),
  `open_qnty` decimal(20,5),
  `estimate_qnty` decimal(20,5),
  `estimate_amt` decimal(20,5),
  `estimate_amt_qnty` decimal(20,5),
  `previous_billed_amt` decimal(20,5),
  `previous_billed_qnty` decimal(20,5),
  `reconcile_date` date,
  `sales_order_qnty` decimal(20,5),
  `previous_invoice_qnty` decimal(20,5),
  `taxable_discount_amt` decimal(20,5),
  `service_date` date,
  `billed_date` date,
  `markup_amt` decimal(20,5),
  `markup_amt_pct` decimal(20,5),
  `markup_amt_qnty` decimal(20,5),
  `ipp_state_type` smallint,
  `is_discount_bool` tinyint(1) NOT NULL,
  `is_applied_discount_bool` tinyint(1) NOT NULL,
  `is_groupend_row_bool` tinyint(1) NOT NULL,
  `nom_total_amt` decimal(20,5),
  `other1` varchar(30),
  `other2` varchar(30),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `gross_markup_amt` decimal(20,5),
  `gross_markup_qnty` decimal(20,5),
  `gross_markup_pct` decimal(20,5),
  `gross_nom_total_amt` decimal(20,5),
  `net_amount_amt` decimal(20,5),
  `net_amount_qnty` decimal(20,5),
  `gross_amount_amt` decimal(20,5),
  `gross_amount_qnty` decimal(20,5),
  `tax_amount_amt` decimal(20,5),
  `tax_amount_qnty` decimal(20,5),
  `taxable_amount_amt` decimal(20,5),
  `taxable_amount_qnty` decimal(20,5),
  `gross_unit_price_amt` decimal(20,5),
  `gross_unit_price_qnty` decimal(20,5),
  `gross_unit_price_pct` decimal(20,5),
  `site_id` int,
  `unit_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `foreign_amount_qnty` decimal(20,5),
  `net_open_balance_amt` decimal(20,5),
  `tax_open_balance_amt` decimal(20,5),
  `gross_open_balance_amt` decimal(20,5),
  `rsb_id` int,
  `txn_line_order` int,
  `base_unit_price_qnty` decimal(20,5),
  `price_rule_note_id` int,
  `manufacturer_part_num` varchar(32),
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_exchange_rate_history`
--

DROP TABLE IF EXISTS `abmc_exchange_rate_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_exchange_rate_history` (
  `exchange_rate_history_id` int NOT NULL,
  `currency_id` int,
  `as_of_date` date,
  `exchange_rate` float DEFAULT 1.0,
  `isAutoRate` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(32),
  `is_hidden_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_delete_pending_bool` tinyint(1) NOT NULL DEFAULT 0,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `exchange_rate_history_abm_id` varchar(17) NOT NULL,
  `company_id` int,
  KEY (`exchange_rate_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_fifo_lot`
--

DROP TABLE IF EXISTS `abmc_fifo_lot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_fifo_lot` (
  `item_id` int NOT NULL,
  `sequence_number` int NOT NULL,
  `quantity` decimal(20,5) NOT NULL,
  `unit_cost` decimal(20,5) NOT NULL,
  `acquisition_target_id` int,
  `disbursement_target_id` int,
  `company_id` int,
  KEY (`item_id`,`sequence_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_general_journal_header`
--

DROP TABLE IF EXISTS `abmc_general_journal_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_general_journal_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `customer_id` int,
  `vendor_id` int,
  `employee_id` int,
  `other_id` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `last_edit_by` int,
  `is_condensed_bool` tinyint(1) NOT NULL,
  `transaction_name_type` smallint,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `abm_id` varchar(17) NOT NULL,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `is_filed_txn_bool` tinyint(1) NOT NULL DEFAULT 0,
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `olb_txn_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `is_home_currency_adjustment_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_shown_in_home_currency_bool` tinyint(1) NOT NULL DEFAULT 0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `sticky_note` varchar(4000),
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_general_journal_inventory_lineitem`
--

DROP TABLE IF EXISTS `abmc_general_journal_inventory_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_general_journal_inventory_lineitem` (
  `inventory_record_id` int NOT NULL,
  `target_type` int NOT NULL,
  `target_id` int NOT NULL,
  `purchase_transaction_id` int,
  `purchase_target_id` int,
  `purchase_transaction_view_type` smallint,
  `purchase_transaction_date` date,
  `account_id` int,
  `amount_amt` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `foreign_amount_amt` decimal(20,5),
  KEY (`inventory_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_general_journal_lineitem`
--

DROP TABLE IF EXISTS `abmc_general_journal_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_general_journal_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `item_id` int,
  `customer_id` int,
  `vendor_id` int,
  `employee_id` int,
  `other_id` int,
  `next_target_id` int,
  `class_id` int,
  `attributes_id` int,
  `sibling_account_id` int,
  `payroll_item_id` int,
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `is_split_bool` tinyint(1) NOT NULL,
  `reimbursed_type` smallint,
  `cleared_type` smallint,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_discount_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_applied_discount_bool` tinyint(1) NOT NULL,
  `is_begin_balance_bool` tinyint(1) NOT NULL,
  `is_has_payitem_bool` tinyint(1) NOT NULL,
  `is_adjustment_bool` tinyint(1) NOT NULL,
  `is_groupend_row_bool` tinyint(1) NOT NULL,
  `company_paid_attrib_type` smallint,
  `amount_amt` decimal(20,5),
  `open_balance_amt` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `unit_price_amt` decimal(20,5),
  `unit_price_pct` decimal(20,5),
  `unit_price_qnty` decimal(20,5),
  `cogs_amt` decimal(20,5),
  `reconcile_date` date,
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `filed_date` date,
  `site_id` int,
  `unit_id` int,
  `ar_credit_card_payment_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `net_amount_amt` decimal(20,5),
  `tax_amount_amt` decimal(20,5),
  `gross_amount_amt` decimal(20,5),
  `net_open_balance_amt` decimal(20,5),
  `tax_open_balance_amt` decimal(20,5),
  `gross_open_balance_amt` decimal(20,5),
  `is_sales_taxable_adjustment_bool` tinyint(1) NOT NULL DEFAULT 0,
  `tax_amount_qnty` decimal(20,5),
  `taxable_amount_amt` decimal(20,5),
  `taxable_amount_qnty` decimal(20,5),
  `txn_line_order` int,
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_grouped_items`
--

DROP TABLE IF EXISTS `abmc_grouped_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_grouped_items` (
  `item_id` int NOT NULL,
  `position` int NOT NULL,
  `quantity_qnty` decimal(20,5),
  `sub_item_id` int,
  `company_id` int,
  `unit_id` int,
  KEY (`item_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_inventory_adjust_header`
--

DROP TABLE IF EXISTS `abmc_inventory_adjust_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_inventory_adjust_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `trans_num` int,
  `last_edit_by` int,
  `is_condensed_bool` tinyint(1) NOT NULL,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `abm_id` varchar(17) NOT NULL,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `site_id` int,
  `sticky_note` varchar(4000),
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_inventory_adjust_inventory_lineitem`
--

DROP TABLE IF EXISTS `abmc_inventory_adjust_inventory_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_inventory_adjust_inventory_lineitem` (
  `inventory_record_id` int NOT NULL,
  `target_type` int NOT NULL,
  `target_id` int NOT NULL,
  `purchase_transaction_id` int,
  `purchase_target_id` int,
  `purchase_transaction_view_type` smallint,
  `purchase_transaction_date` date,
  `account_id` int,
  `amount_amt` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `foreign_amount_amt` decimal(20,5),
  KEY (`inventory_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_inventory_adjust_line_sn`
--

DROP TABLE IF EXISTS `abmc_inventory_adjust_line_sn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_inventory_adjust_line_sn` (
  `target_id` int NOT NULL,
  `sn_seq` int NOT NULL AUTO_INCREMENT,
  `sn_id` int,
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`target_id`,`sn_seq`),
  KEY (`sn_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_inventory_adjust_lineitem`
--

DROP TABLE IF EXISTS `abmc_inventory_adjust_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_inventory_adjust_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_view_type` smallint,
  `transaction_date` date,
  `item_id` int,
  `customer_id` int,
  `next_target_id` int,
  `class_id` int,
  `attributes_id` int,
  `sibling_account_id` int,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `last_edit_by` int,
  `is_split_bool` tinyint(1) NOT NULL,
  `reimbursed_type` smallint,
  `cleared_type` smallint,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_value_adjust_bool` tinyint(1) NOT NULL,
  `is_groupend_row_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `amount_amt` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `unit_price_amt` decimal(20,5),
  `unit_price_pct` decimal(20,5),
  `unit_price_qnty` decimal(20,5),
  `cogs_amt` decimal(20,5),
  `open_qnty` decimal(20,5),
  `reconcile_date` date,
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `site_id` int,
  `unit_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `derived_OnHand_qnty` decimal(20,5),
  `sn_delta_qty` decimal(20,5),
  `rsb_id` int,
  `txn_line_order` int,
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_inventory_container_header`
--

DROP TABLE IF EXISTS `abmc_inventory_container_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_inventory_container_header` (
  `container_id` int NOT NULL,
  `container_name` varchar(256) NOT NULL DEFAULT '',
  `width` decimal(20,5),
  `height` decimal(20,5),
  `depth` decimal(20,5),
  `dim_uom` smallint,
  `weight` decimal(20,5),
  `wt_uom` smallint,
  `modified_on` datetime,
  `created_by` varchar(256) NOT NULL DEFAULT '',
  `site_id` int NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `transaction_id` int NOT NULL,
  KEY (`container_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_inventory_pick_receive_data`
--

DROP TABLE IF EXISTS `abmc_inventory_pick_receive_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_inventory_pick_receive_data` (
  `transaction_id` int NOT NULL,
  `transaction_type` smallint,
  `target_id` int NOT NULL,
  `picked_received_qty` decimal(20,5),
  `sent_for_pick_receive_qty` decimal(20,5),
  `pick_receive_status` smallint,
  `pick_receive_list_id` varchar(256) NOT NULL DEFAULT '',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` varchar(256) NOT NULL DEFAULT '',
  `created_on` datetime,
  `picker_receiver_name` varchar(256) NOT NULL DEFAULT '',
  `activity_notes` varchar(2048) NOT NULL DEFAULT '',
  `uom_id` int NOT NULL DEFAULT -1,
  `site_id` int NOT NULL DEFAULT -1,
  `pick_receive_lineitem_id` int NOT NULL DEFAULT -1,
  KEY (`transaction_id`,`target_id`,`pick_receive_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_inventory_shippinginfo_header`
--

DROP TABLE IF EXISTS `abmc_inventory_shippinginfo_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_inventory_shippinginfo_header` (
  `shipinfo_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `carrier_name` varchar(256) NOT NULL DEFAULT '',
  `carrier_service_name` varchar(256) NOT NULL DEFAULT '',
  `total_shipping_cost` decimal(20,5),
  `modified_date` datetime,
  `site_id` int NOT NULL,
  KEY (`shipinfo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_inventory_shippinginfo_lineitem`
--

DROP TABLE IF EXISTS `abmc_inventory_shippinginfo_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_inventory_shippinginfo_lineitem` (
  `shipinfo_id` int NOT NULL,
  `container_id` int NOT NULL DEFAULT -1,
  `tracking_id` varchar(256) NOT NULL,
  `shipping_cost` decimal(20,5),
  KEY (`tracking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_inventory_transfer_header`
--

DROP TABLE IF EXISTS `abmc_inventory_transfer_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_inventory_transfer_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `trans_num` int,
  `last_edit_by` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `currency_id` int,
  `is_condensed_bool` tinyint(1) NOT NULL,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `abm_id` varchar(17) NOT NULL,
  `company_id` int,
  `memo` text,
  `external_ident` varchar(65),
  `sticky_note` varchar(4000),
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_inventory_transfer_line_sn`
--

DROP TABLE IF EXISTS `abmc_inventory_transfer_line_sn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_inventory_transfer_line_sn` (
  `target_id` int NOT NULL,
  `sn_seq` int NOT NULL AUTO_INCREMENT,
  `sn_id` int,
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`target_id`,`sn_seq`),
  KEY (`sn_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_inventory_transfer_lineitem`
--

DROP TABLE IF EXISTS `abmc_inventory_transfer_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_inventory_transfer_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `account_id` int,
  `sibling_account_id` int,
  `item_id` int,
  `site_id` int,
  `class_id` int,
  `next_target_id` int,
  `pair_target_id` int,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `quantity_qnty` decimal(20,5),
  `amount_amt` decimal(20,5),
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_inv_transfer_to_line_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_groupend_row_bool` tinyint(1) NOT NULL,
  `unit_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `abm_id` varchar(17) NOT NULL,
  `company_id` int,
  `memo` text,
  `derived_OnHand_qnty` decimal(20,5),
  `rsb_id` int,
  `txn_line_order` int,
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_invoice_header`
--

DROP TABLE IF EXISTS `abmc_invoice_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_invoice_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `customer_id` int,
  `abm_id` varchar(17) NOT NULL,
  `terms_id` int,
  `contact_id` varchar(17),
  `sales_tax_code_id` int,
  `ship_to_id` varchar(17),
  `ship_via_id` int,
  `sales_rep_id` int,
  `custom_style_id` int,
  `customer_message_id` int,
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_sale_bool` tinyint(1) NOT NULL,
  `is_to_be_printed_bool` tinyint(1) NOT NULL,
  `is_to_be_sent_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_finance_charge_bool` tinyint(1) NOT NULL,
  `is_opening_balance_bool` tinyint(1) NOT NULL,
  `is_old_tran_tax_bool` tinyint(1) NOT NULL,
  `is_payable_online_bool` tinyint(1) NOT NULL,
  `due_date` date,
  `fob` varchar(14),
  `cleared_type` smallint,
  `ship_date` date,
  `other` varchar(30),
  `delivery_date` date,
  `po_num` varchar(26),
  `progress_invoice_mod_tms` int,
  `sales_order_num` varchar(26),
  `paper_mailed_type` smallint,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `is_amt_incl_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `company_tax_number` varchar(21),
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `site_id` int,
  `sticky_note` varchar(4000),
  `allow_ipn_payment_bool` tinyint(1) NOT NULL DEFAULT 0,
  `ipn_payment_info` int NOT NULL DEFAULT 0,
  `transaction_sendforms_id` int,
  `icn_link` varchar(1024),
  `is_paylink_latest_bool` tinyint(1) NOT NULL DEFAULT 1,
  `show_pastdue_stamp_bool` tinyint(1) NOT NULL DEFAULT 1,
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_invoice_inventory_lineitem`
--

DROP TABLE IF EXISTS `abmc_invoice_inventory_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_invoice_inventory_lineitem` (
  `inventory_record_id` int NOT NULL,
  `target_type` int NOT NULL,
  `target_id` int NOT NULL,
  `purchase_transaction_id` int,
  `purchase_target_id` int,
  `purchase_transaction_view_type` smallint,
  `purchase_transaction_date` date,
  `account_id` int,
  `amount_amt` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `foreign_amount_amt` decimal(20,5),
  KEY (`inventory_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_invoice_line_sn`
--

DROP TABLE IF EXISTS `abmc_invoice_line_sn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_invoice_line_sn` (
  `target_id` int NOT NULL,
  `sn_seq` int NOT NULL AUTO_INCREMENT,
  `sn_id` int,
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`target_id`,`sn_seq`),
  KEY (`sn_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_invoice_lineitem`
--

DROP TABLE IF EXISTS `abmc_invoice_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_invoice_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `item_id` int,
  `customer_id` int,
  `vendor_id` int,
  `next_target_id` int,
  `sales_tax_code_id` int,
  `class_id` int,
  `attributes_id` int,
  `payment_method_id` int,
  `sibling_account_id` int,
  `contact_id` varchar(17),
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `last_edit_by` int,
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_estimated_bool` tinyint(1) NOT NULL,
  `is_purchase_order_bool` tinyint(1) NOT NULL,
  `is_purchase_bool` tinyint(1) NOT NULL,
  `is_sale_bool` tinyint(1) NOT NULL,
  `is_received_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_trans_tax_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_dont_print_target_bool` tinyint(1) NOT NULL,
  `is_item_from_estimate_bool` tinyint(1) NOT NULL,
  `is_base_on_time_activity_bool` tinyint(1) NOT NULL,
  `reimbursed_type` smallint,
  `is_sales_order_bool` tinyint(1) NOT NULL,
  `is_inactive_bool` tinyint(1) NOT NULL,
  `is_invoiced_bool` tinyint(1) NOT NULL,
  `is_item_from_sales_order_bool` tinyint(1) NOT NULL,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_manually_closed_bool` tinyint(1) NOT NULL,
  `is_uses_billed_date_bool` tinyint(1) NOT NULL,
  `has_custom_fields_bool` tinyint(1) NOT NULL,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `amount_amt` decimal(20,5),
  `amount_qnty` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `unit_price_amt` decimal(20,5),
  `unit_price_pct` decimal(20,5),
  `unit_price_qnty` decimal(20,5),
  `open_balance_amt` decimal(20,5),
  `due_date` date,
  `cogs_amt` decimal(20,5),
  `open_qnty` decimal(20,5),
  `estimate_qnty` decimal(20,5),
  `estimate_amt` decimal(20,5),
  `estimate_amt_qnty` decimal(20,5),
  `previous_billed_amt` decimal(20,5),
  `previous_billed_qnty` decimal(20,5),
  `reconcile_date` date,
  `sales_order_qnty` decimal(20,5),
  `previous_invoice_qnty` decimal(20,5),
  `taxable_discount_amt` decimal(20,5),
  `service_date` date,
  `billed_date` date,
  `markup_amt` decimal(20,5),
  `markup_amt_pct` decimal(20,5),
  `markup_amt_qnty` decimal(20,5),
  `ipp_state_type` smallint,
  `is_discount_bool` tinyint(1) NOT NULL,
  `is_applied_discount_bool` tinyint(1) NOT NULL,
  `is_groupend_row_bool` tinyint(1) NOT NULL,
  `nom_total_amt` decimal(20,5),
  `other1` varchar(30),
  `other2` varchar(30),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `net_amount_amt` decimal(20,5),
  `net_amount_qnty` decimal(20,5),
  `gross_amount_amt` decimal(20,5),
  `gross_amount_qnty` decimal(20,5),
  `tax_amount_amt` decimal(20,5),
  `tax_amount_qnty` decimal(20,5),
  `taxable_amount_amt` decimal(20,5),
  `taxable_amount_qnty` decimal(20,5),
  `gross_unit_price_amt` decimal(20,5),
  `gross_unit_price_qnty` decimal(20,5),
  `gross_unit_price_pct` decimal(20,5),
  `filed_date` date,
  `site_id` int,
  `unit_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `foreign_amount_qnty` decimal(20,5),
  `derived_OnHand_qnty` decimal(20,5),
  `net_open_balance_amt` decimal(20,5),
  `tax_open_balance_amt` decimal(20,5),
  `gross_open_balance_amt` decimal(20,5),
  `rsb_id` int,
  `txn_line_order` int,
  `base_unit_price_qnty` decimal(20,5),
  `price_rule_note_id` int,
  `manufacturer_part_num` varchar(32),
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_item_assembly_header`
--

DROP TABLE IF EXISTS `abmc_item_assembly_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_item_assembly_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `item_id` int,
  `transaction_date` date,
  `abm_id` varchar(17) NOT NULL,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `last_edit_by` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_arap_bool` tinyint(1) NOT NULL,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_to_be_printed_bool` tinyint(1) NOT NULL DEFAULT 0,
  `custom_style_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `sticky_note` varchar(4000),
  `final_assembly_transaction_id` int,
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_item_assembly_inventory_lineitem`
--

DROP TABLE IF EXISTS `abmc_item_assembly_inventory_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_item_assembly_inventory_lineitem` (
  `inventory_record_id` int NOT NULL,
  `target_type` int NOT NULL,
  `target_id` int NOT NULL,
  `purchase_transaction_id` int,
  `purchase_target_id` int,
  `purchase_transaction_view_type` smallint,
  `purchase_transaction_date` date,
  `account_id` int,
  `amount_amt` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `foreign_amount_amt` decimal(20,5),
  KEY (`inventory_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_item_assembly_line_sn`
--

DROP TABLE IF EXISTS `abmc_item_assembly_line_sn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_item_assembly_line_sn` (
  `target_id` int NOT NULL,
  `sn_seq` int NOT NULL AUTO_INCREMENT,
  `sn_id` int,
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`target_id`,`sn_seq`),
  KEY (`sn_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_item_assembly_lineitem`
--

DROP TABLE IF EXISTS `abmc_item_assembly_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_item_assembly_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `item_id` int,
  `next_target_id` int,
  `sibling_account_id` int,
  `attributes_id` int,
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `amount_amt` decimal(20,5),
  `is_split_bool` tinyint(1) NOT NULL,
  `reimbursed_type` smallint,
  `cleared_type` smallint,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `quantity_qnty` decimal(20,5),
  `cogs_amt` decimal(20,5),
  `is_source_bool` tinyint(1) NOT NULL,
  `is_build_bool` tinyint(1) NOT NULL,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_groupend_row_bool` tinyint(1) NOT NULL,
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `site_id` int,
  `unit_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `derived_OnHand_qnty` decimal(20,5),
  `derived_ToBeBuiltByPendingBuilds_qnty` decimal(20,5),
  `derived_RequiredByPendingBuilds_qnty` decimal(20,5),
  `rsb_id` int,
  `txn_line_order` int,
  `manufacturer_part_num` varchar(32),
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_item_history`
--

DROP TABLE IF EXISTS `abmc_item_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_item_history` (
  `item_id` int NOT NULL,
  `sequence_number` int NOT NULL,
  `transaction_date` date,
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `quantity_on_hand` decimal(20,5),
  `value_on_hand` decimal(20,5),
  `average_cost` decimal(20,5),
  `quantity_on_order` decimal(20,5),
  `quantity_on_sales_order` decimal(20,5),
  `to_be_built_by_pending_build_txns_qnty` decimal(20,5),
  `required_by_pending_build_txns_qnty` decimal(20,5),
  `abm_id` varchar(17) NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`item_id`,`sequence_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_item_internal`
--

DROP TABLE IF EXISTS `abmc_item_internal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_item_internal` (
  `item_id` int NOT NULL,
  `modtimestamp_tms` int,
  `special_type` smallint,
  `latest_target_id` int,
  `latest_target_date` date,
  `on_hand_qnty` decimal(20,5),
  `value_on_hand_amt` decimal(20,5),
  `average_cost_qnty` decimal(20,5),
  `on_order_qnty` decimal(20,5),
  `sales_order_qnty` decimal(20,5),
  `to_be_built_by_pending_build_txns_qnty` decimal(20,5),
  `required_by_pending_build_txns_qnty` decimal(20,5),
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `company_id` int,
  `list_ident` varchar(65) NOT NULL,
  `external_ident` varchar(65),
  `display_index_next` int NOT NULL DEFAULT 0,
  KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_item_site`
--

DROP TABLE IF EXISTS `abmc_item_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_item_site` (
  `item_site_id` int NOT NULL,
  `site_id` int,
  `item_id` int,
  `qnty_on_hand` decimal(20,5),
  `qnty_on_purchase_order` decimal(20,5),
  `qnty_on_sales_order` decimal(20,5),
  `qnty_on_pending_transfers` decimal(20,5),
  `qnty_to_be_built_by_pending_build_txns` decimal(20,5),
  `qnty_required_by_pending_build_txns` decimal(20,5),
  `reorder_level` decimal(20,5),
  `is_hidden_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_delete_pending_bool` tinyint(1) NOT NULL DEFAULT 0,
  `item_site_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `company_id` int,
  `name` varchar(63),
  `assembly_build_point` decimal(20,5),
  `external_ident` varchar(65),
  `list_ident` varchar(65) NOT NULL,
  `default_purchase_bin_id` int,
  `default_sales_bin_id` int,
  `reorder_inventory_qnty` decimal(20,5),
  `reorder_assembly_qnty` decimal(20,5),
  KEY (`item_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_item_user`
--

DROP TABLE IF EXISTS `abmc_item_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_item_user` (
  `item_id` int NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(32),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `sales_tax_code_id` int,
  `asset_account_id` int,
  `cogs_account_id` int,
  `post_account_id` int,
  `payment_method_id` int,
  `preferred_vendor_id` int,
  `tax_agency_id` int,
  `attributes_id` int,
  `parent_id` int,
  `sublevel` smallint,
  `item_type` smallint,
  `print_grouped_bool` tinyint(1) NOT NULL,
  `is_group_bool` tinyint(1) NOT NULL,
  `is_pass_thru_bool` tinyint(1) NOT NULL,
  `deposit_type` smallint,
  `was_imported_bool` tinyint(1) NOT NULL,
  `sales_price_amt` decimal(20,5),
  `sales_price_pct` decimal(20,5),
  `num_grouped_items` int,
  `reorder_point_qnty` decimal(20,5),
  `unit_cost_amt` decimal(20,5),
  `unit_cost_qnty` decimal(20,5),
  `sales_price_qnty` decimal(20,5),
  `assembly_build_point_qnty` decimal(20,5),
  `purchase_date` date,
  `sale_date` date,
  `warranty_expire_date` date,
  `is_new_bool` tinyint(1) NOT NULL,
  `cost_basis_amt` decimal(20,5),
  `accumulated_depreciation_amt` decimal(20,5),
  `book_value_amt` decimal(20,5),
  `sale_expense_amt` decimal(20,5),
  `item_abm_id` varchar(17),
  `asset_manager_num` varchar(11),
  `po_num` varchar(31),
  `serial_num` varchar(31),
  `purchase_description2` varchar(51),
  `location` varchar(51),
  `vendor_MFG` varchar(51),
  `manufacturer_part_num` varchar(32),
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `description` text,
  `purchase_description` text,
  `notes` text,
  `company_id` int,
  `is_amt_incl_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `sales_tax_return_line_num` smallint NOT NULL DEFAULT 0,
  `purchase_tax_code_id` int,
  `gross_sales_price_amt` decimal(20,5),
  `gross_sales_price_pct` decimal(20,5),
  `gross_sales_price_qnty` decimal(20,5),
  `gross_unit_price_amt` decimal(20,5),
  `gross_unit_price_qnty` decimal(20,5),
  `is_used_on_purchase_trans_bool` tinyint(1) NOT NULL DEFAULT 0,
  `unit_set_id` int,
  `external_ident` varchar(65),
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `markup_amt` decimal(20,5),
  `markup_pct` decimal(20,5),
  `action_markup` smallint,
  `action_if_sn_non_unique` smallint,
  `action_if_sn_missing` smallint,
  `action_if_sn_not_available` smallint,
  `action_if_exp_date_blank` smallint,
  `class_id` int,
  `reorder_inventory_qnty` decimal(20,5),
  `reorder_assembly_qnty` decimal(20,5),
  `before_override_unit_cost_amt` decimal(20,5),
  `pref_cost_override` smallint,
  `pref_assembly_markup` smallint,
  `subtotal_fields` int,
  `subtotal_fields_multiplier` int,
  KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_job_type`
--

DROP TABLE IF EXISTS `abmc_job_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_job_type` (
  `job_type_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(32),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `parent_id` int,
  `sublevel` smallint,
  `job_type_abm_id` varchar(17),
  `company_id` int,
  `display_index_next` int NOT NULL DEFAULT 0,
  KEY (`job_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_key_permissions`
--

DROP TABLE IF EXISTS `abmc_key_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_key_permissions` (
  `key_permissions_id` int NOT NULL,
  `cc_num_key` varchar(257) NOT NULL,
  `key_permissions_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `pin_reset_key` varchar(2000),
  `pin_reset_key_tms` datetime,
  KEY (`key_permissions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_last_load`
--

DROP TABLE IF EXISTS `abmc_last_load`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_last_load` (
  `qb_user_id` varchar(129) NOT NULL,
  `db_edlist_type` smallint NOT NULL,
  `new_load_tms` datetime,
  `changed_load_tms` datetime,
  `company_id` int,
  KEY (`qb_user_id`,`db_edlist_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_last_searched_terms`
--

DROP TABLE IF EXISTS `abmc_last_searched_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_last_searched_terms` (
  `search_term_id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(128),
  `search_term_string` varchar(100),
  `search_date` datetime,
  PRIMARY KEY (`search_term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_list_event_subscription`
--

DROP TABLE IF EXISTS `abmc_list_event_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_list_event_subscription` (
  `company_id` int,
  `list_event_subscript_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `subscription_abm_id` varchar(17),
  `list_event_type` smallint,
  `list_event_operation_type` smallint,
  KEY (`list_event_subscript_abm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_list_review`
--

DROP TABLE IF EXISTS `abmc_list_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_list_review` (
  `list_review_id` int NOT NULL,
  `edlist_id` int NOT NULL,
  `edlist_type` smallint NOT NULL,
  `element_name` varchar(64),
  `element_type` smallint,
  `accountant_reviewed_type` smallint NOT NULL DEFAULT 1,
  `action_performed_type` smallint NOT NULL,
  `name` varchar(64) NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `parent_id` int,
  `is_active` smallint,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int NOT NULL,
  `list_review_abm_id` varchar(17) NOT NULL,
  `is_hidden_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted_pending_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_new` smallint,
  `account_type` smallint,
  `account_num` varchar(8),
  `tax_line_id_num` int,
  `item_type` smallint,
  `cogs_account_id` int,
  `income_account_id` int,
  `expense_account_id` int,
  `asset_account_id` int,
  `sales_tax_code_id` int,
  `unit_set_id` int,
  `sales_price_pct` decimal(20,5),
  `purchase_date` date,
  `purchase_cost` decimal(20,5),
  `sale_date` date,
  `gross_sale_amt` decimal(20,5),
  `sales_expense_amt` decimal(20,5),
  `payroll_item_type` smallint,
  `agency_id` int,
  `liability_account_id` int,
  `liability_account_id2` int,
  `default_rate_pct` decimal(20,5),
  `limit_amt` decimal(20,5),
  `tax_tracking_type` smallint,
  `payment_schedule` smallint,
  `deposit_frequency` int,
  `sales_tax_item_id` int,
  `is_1099_vendor` smallint,
  `vendor_prefill_Act1` int,
  `vendor_prefill_Act2` int,
  `vendor_prefill_Act3` int,
  `is_taxable` smallint,
  `sales_tax_code` varchar(4),
  `new_code_rate` decimal(20,5),
  `new_code_start_date` date,
  `modification_factor` decimal(20,5),
  `merged_to_name` varchar(64),
  `merged_to_type` smallint,
  `merged_to_id` int,
  `notes` text,
  KEY (`list_review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_lookup_txn_type`
--

DROP TABLE IF EXISTS `abmc_lookup_txn_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_lookup_txn_type` (
  `id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(256),
  KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_master_key`
--

DROP TABLE IF EXISTS `abmc_master_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_master_key` (
  `master_key_id` int NOT NULL,
  `user_encrypt_master_key` varchar(257),
  `seed_value` bigint NOT NULL DEFAULT 0,
  `master_key_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  KEY (`master_key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_memorized_reports`
--

DROP TABLE IF EXISTS `abmc_memorized_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_memorized_reports` (
  `memorized_reports_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(80),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `memorized_report_data_id` int,
  `parent_id` int,
  `sublevel` smallint,
  `size` smallint,
  `is_group_bool` tinyint(1) NOT NULL,
  `memorized_reports_abm_id` varchar(17),
  `company_id` int,
  `display_index_next` int NOT NULL DEFAULT 0,
  KEY (`memorized_reports_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_memorized_transactions`
--

DROP TABLE IF EXISTS `abmc_memorized_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_memorized_transactions` (
  `memorized_transactions_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `modtimestamp_tms` int,
  `timestamp_tms` int,
  `name` varchar(32),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `master_record_id` int,
  `source_account_id` int,
  `parent_id` int,
  `sublevel` smallint,
  `trans_type` smallint,
  `amount_amt` decimal(20,5),
  `frequency_type` smallint,
  `next_date` date,
  `subsequent_date` date,
  `original_day` varchar(2),
  `subsequent_original_day` varchar(2),
  `is_group_bool` tinyint(1) NOT NULL,
  `enter_type` smallint,
  `num_left` smallint,
  `days_in_advance` smallint,
  `memorized_transactions_abm_id` varchar(17),
  `company_id` int,
  `currency_id` int,
  `display_index_next` int NOT NULL DEFAULT 0,
  KEY (`memorized_transactions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_message_template`
--

DROP TABLE IF EXISTS `abmc_message_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_message_template` (
  `message_template_id` int NOT NULL AUTO_INCREMENT,
  `message_template_type_id` int NOT NULL,
  `template_name` varchar(61) NOT NULL,
  `template_subject` varchar(257),
  `template_body` text,
  `is_default_template` tinyint(1) NOT NULL,
  `company_id` int NOT NULL DEFAULT 0,
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  PRIMARY KEY (`message_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_message_template_type`
--

DROP TABLE IF EXISTS `abmc_message_template_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_message_template_type` (
  `message_template_type_id` int NOT NULL,
  `template_description` varchar(60),
  `template_bcc` varchar(1025),
  `company_id` int NOT NULL DEFAULT 0,
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY (`message_template_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_mtrans_date_instances`
--

DROP TABLE IF EXISTS `abmc_mtrans_date_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_mtrans_date_instances` (
  `mtrans_date_instances_id` int NOT NULL AUTO_INCREMENT,
  `memorized_transactions_id` int NOT NULL,
  `instance_date` date NOT NULL,
  `company_id` int NOT NULL,
  PRIMARY KEY (`mtrans_date_instances_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_notepad`
--

DROP TABLE IF EXISTS `abmc_notepad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_notepad` (
  `key_fld` int NOT NULL,
  `rec_num` int NOT NULL,
  `data_fld` text NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int NOT NULL DEFAULT 0,
  `entity_type_id` int NOT NULL DEFAULT 0,
  `preferred_note` int NOT NULL DEFAULT 0,
  KEY (`key_fld`,`rec_num`,`entity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_online_banking_txn`
--

DROP TABLE IF EXISTS `abmc_online_banking_txn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_online_banking_txn` (
  `txn_id` int NOT NULL,
  `account_id` int NOT NULL,
  `post_date` date NOT NULL,
  `trans_date` date,
  `amount_amt` decimal(20,5) NOT NULL,
  `npc_seq_num` int,
  `transaction_type` smallint,
  `check_num` varchar(33),
  `payee` varchar(33),
  `sic_code` smallint,
  `statement_id` int,
  `matched_state_type` smallint,
  `fitid` varchar(256),
  `transaction_src` smallint,
  `memo` varchar(301),
  `abm_id` varchar(17) NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `company_id` int NOT NULL,
  KEY (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_opaque_storage`
--

DROP TABLE IF EXISTS `abmc_opaque_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_opaque_storage` (
  `opaque_storage_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `external_key` varchar(40) NOT NULL,
  `owner_id` varchar(40),
  `static_metadata` varchar(40),
  `dynamic_metadata` varchar(100),
  `blob` longblob,
  `company_id` int DEFAULT 0,
  KEY (`opaque_storage_abm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_other_internal`
--

DROP TABLE IF EXISTS `abmc_other_internal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_other_internal` (
  `other_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `modtimestamp_tms` int,
  `transmit_memo_bool` tinyint(1) NOT NULL,
  `open_date` date,
  `company_id` int,
  `list_ident` varchar(65) NOT NULL,
  `external_ident` varchar(65),
  `display_index_next` int NOT NULL DEFAULT 0,
  KEY (`other_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_other_user`
--

DROP TABLE IF EXISTS `abmc_other_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_other_user` (
  `other_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(42),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `sales_rep_id` int,
  `billing_rate_level_id` int,
  `attributes_id` int,
  `parent_id` int,
  `sublevel` smallint,
  `has_notes_bool` tinyint(1) NOT NULL,
  `is_imported_bool` tinyint(1) NOT NULL,
  `nonemployee_pay_period_end_date` date,
  `other_abm_id` varchar(17),
  `company_id` int,
  `currency_id` int,
  `external_ident` varchar(65),
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `class_id` int,
  KEY (`other_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_payment_method`
--

DROP TABLE IF EXISTS `abmc_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_payment_method` (
  `payment_method_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(32),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `payment_method_abm_id` varchar(17),
  `payment_method_type` smallint,
  `company_id` int,
  KEY (`payment_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_pff_category`
--

DROP TABLE IF EXISTS `abmc_pff_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_pff_category` (
  `pff_category_id` int NOT NULL AUTO_INCREMENT,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `pff_category_name` varchar(255) NOT NULL,
  `position_id` int NOT NULL,
  `expand_bool` tinyint(1) NOT NULL,
  `hide_bool` tinyint(1) NOT NULL,
  `company_id` int NOT NULL,
  `pff_category_abm_id` varchar(17) NOT NULL,
  PRIMARY KEY (`pff_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_pff_task`
--

DROP TABLE IF EXISTS `abmc_pff_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_pff_task` (
  `pff_task_id` int NOT NULL AUTO_INCREMENT,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `pff_task_name` varchar(255) NOT NULL,
  `pff_category_id` int NOT NULL,
  `completion_date` date,
  `qb_command` varchar(255),
  `pff_user_name` varchar(128),
  `hide_bool` tinyint(1) NOT NULL,
  `status` int NOT NULL,
  `notes` text,
  `company_id` int NOT NULL,
  `pff_task_abm_id` varchar(17) NOT NULL,
  PRIMARY KEY (`pff_task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_pref_data`
--

DROP TABLE IF EXISTS `abmc_pref_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_pref_data` (
  `key_fld` varchar(1024) NOT NULL,
  `data_fld` text NOT NULL,
  KEY (`key_fld`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_price_level`
--

DROP TABLE IF EXISTS `abmc_price_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_price_level` (
  `price_level_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(32),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `value_pct` decimal(20,5),
  `price_level_type` smallint,
  `price_level_abm_id` varchar(17) NOT NULL,
  `round_offset_amt` decimal(20,5),
  `round_to_amount_amt` decimal(20,5),
  `rounding_method_type` smallint,
  `company_id` int NOT NULL,
  `currency_id` int,
  `migrated_to_rules_bool` tinyint(1) NOT NULL DEFAULT 0,
  KEY (`price_level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_price_level_item`
--

DROP TABLE IF EXISTS `abmc_price_level_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_price_level_item` (
  `price_level_id` int NOT NULL,
  `item_id` int NOT NULL,
  `computed_price_amt` decimal(20,5),
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `company_id` int NOT NULL DEFAULT 0,
  `computed_price_pct` decimal(20,5),
  KEY (`price_level_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_price_rule`
--

DROP TABLE IF EXISTS `abmc_price_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_price_rule` (
  `price_rule_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64),
  `price_rule_type` smallint NOT NULL DEFAULT 1,
  `round_offset_amt` decimal(20,5),
  `round_to_amount_amt` decimal(20,5),
  `rounding_method_type` smallint,
  `currency_id` int,
  `description` varchar(65),
  `from_date` date NOT NULL DEFAULT '1901-01-01',
  `to_date` date NOT NULL DEFAULT '9999-12-31',
  `qty_low` decimal(20,5),
  `qty_max` decimal(20,5),
  `calc_price_low` decimal(20,5),
  `calc_price_max` decimal(20,5),
  `calc_method_type` smallint NOT NULL DEFAULT 1,
  `value_pct` decimal(20,5),
  `value_amt` decimal(20,5),
  `unit_id` int,
  `is_less_cost_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_exclusive_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_hidden_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_delete_pending_bool` tinyint(1) NOT NULL DEFAULT 0,
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `company_id` int NOT NULL DEFAULT 0,
  `migrated_from_level_id` int,
  `include_inactive_for_overrides_bool` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`price_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_price_rule_item`
--

DROP TABLE IF EXISTS `abmc_price_rule_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_price_rule_item` (
  `price_rule_id` int NOT NULL,
  `item_id` int NOT NULL,
  `computed_price_amt` decimal(20,5),
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`price_rule_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_price_rule_note`
--

DROP TABLE IF EXISTS `abmc_price_rule_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_price_rule_note` (
  `price_rule_note_id` int NOT NULL AUTO_INCREMENT,
  `note` varchar(4000),
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `company_id` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`price_rule_note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_price_rule_scope`
--

DROP TABLE IF EXISTS `abmc_price_rule_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_price_rule_scope` (
  `price_rule_scope_id` int NOT NULL AUTO_INCREMENT,
  `entity_type_id` smallint NOT NULL,
  `column_id` smallint NOT NULL,
  `operator_id` smallint NOT NULL,
  `value` varchar(4000),
  `price_rule_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `company_id` int NOT NULL DEFAULT 0,
  `has_subitem_bool` tinyint(1) NOT NULL DEFAULT 0,
  `include_inactive_bool` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`price_rule_scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_price_rule_scope_detail`
--

DROP TABLE IF EXISTS `abmc_price_rule_scope_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_price_rule_scope_detail` (
  `price_rule_scope_id` int NOT NULL,
  `entity_id` int,
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `company_id` int NOT NULL DEFAULT 0,
  `price_rule_scope_detail_id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(4000),
  PRIMARY KEY (`price_rule_scope_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_purchase_order_header`
--

DROP TABLE IF EXISTS `abmc_purchase_order_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_purchase_order_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `vendor_id` int,
  `abm_id` varchar(17) NOT NULL,
  `contact_id` varchar(17),
  `terms_id` int,
  `ship_to_name_id` int,
  `ship_to_id` varchar(17),
  `ship_via_id` int,
  `custom_style_id` int,
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `po_num` varchar(26),
  `last_edit_by` int,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_purchase_order_bool` tinyint(1) NOT NULL,
  `is_received_bool` tinyint(1) NOT NULL,
  `is_to_be_printed_bool` tinyint(1) NOT NULL,
  `is_to_be_sent_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_purchase_bool` tinyint(1) NOT NULL,
  `expected_date` date,
  `due_date` date,
  `ship_date` date,
  `delivery_date` date,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `other` varchar(30),
  `fob` varchar(14),
  `vendor_message` varchar(101),
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `is_amt_incl_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `company_tax_number` varchar(21),
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `site_id` int,
  `sticky_note` varchar(4000),
  `tax_code_id` int,
  `transaction_sendforms_id` int,
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_purchase_order_lineitem`
--

DROP TABLE IF EXISTS `abmc_purchase_order_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_purchase_order_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `item_id` int,
  `customer_id` int,
  `vendor_id` int,
  `next_target_id` int,
  `sales_tax_code_id` int,
  `class_id` int,
  `attributes_id` int,
  `payment_method_id` int,
  `sibling_account_id` int,
  `contact_id` varchar(17),
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `last_edit_by` int,
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_estimated_bool` tinyint(1) NOT NULL,
  `is_purchase_order_bool` tinyint(1) NOT NULL,
  `is_purchase_bool` tinyint(1) NOT NULL,
  `is_sale_bool` tinyint(1) NOT NULL,
  `is_received_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_trans_tax_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_dont_print_target_bool` tinyint(1) NOT NULL,
  `is_item_from_estimate_bool` tinyint(1) NOT NULL,
  `is_base_on_time_activity_bool` tinyint(1) NOT NULL,
  `reimbursed_type` smallint,
  `is_sales_order_bool` tinyint(1) NOT NULL,
  `is_inactive_bool` tinyint(1) NOT NULL,
  `is_invoiced_bool` tinyint(1) NOT NULL,
  `is_item_from_sales_order_bool` tinyint(1) NOT NULL,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_manually_closed_bool` tinyint(1) NOT NULL,
  `is_uses_billed_date_bool` tinyint(1) NOT NULL,
  `has_custom_fields_bool` tinyint(1) NOT NULL,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `manufacturer_part_num` varchar(32),
  `amount_amt` decimal(20,5),
  `amount_qnty` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `unit_price_amt` decimal(20,5),
  `unit_price_pct` decimal(20,5),
  `unit_price_qnty` decimal(20,5),
  `open_balance_amt` decimal(20,5),
  `due_date` date,
  `cogs_amt` decimal(20,5),
  `open_qnty` decimal(20,5),
  `estimate_qnty` decimal(20,5),
  `estimate_amt` decimal(20,5),
  `estimate_amt_qnty` decimal(20,5),
  `previous_billed_amt` decimal(20,5),
  `previous_billed_qnty` decimal(20,5),
  `reconcile_date` date,
  `sales_order_qnty` decimal(20,5),
  `previous_invoice_qnty` decimal(20,5),
  `taxable_discount_amt` decimal(20,5),
  `service_date` date,
  `billed_date` date,
  `markup_amt` decimal(20,5),
  `markup_amt_pct` decimal(20,5),
  `markup_amt_qnty` decimal(20,5),
  `ipp_state_type` smallint,
  `is_discount_bool` tinyint(1) NOT NULL,
  `is_applied_discount_bool` tinyint(1) NOT NULL,
  `is_groupend_row_bool` tinyint(1) NOT NULL,
  `nom_total_amt` decimal(20,5),
  `other1` varchar(30),
  `other2` varchar(30),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `memo` text,
  `company_id` int,
  `net_amount_amt` decimal(20,5),
  `net_amount_qnty` decimal(20,5),
  `gross_amount_amt` decimal(20,5),
  `gross_amount_qnty` decimal(20,5),
  `tax_amount_amt` decimal(20,5),
  `tax_amount_qnty` decimal(20,5),
  `taxable_amount_amt` decimal(20,5),
  `taxable_amount_qnty` decimal(20,5),
  `gross_unit_price_amt` decimal(20,5),
  `gross_unit_price_qnty` decimal(20,5),
  `gross_unit_price_pct` decimal(20,5),
  `site_id` int,
  `unit_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `foreign_amount_qnty` decimal(20,5),
  `derived_OnOrder_qnty` decimal(20,5),
  `net_open_balance_amt` decimal(20,5),
  `tax_open_balance_amt` decimal(20,5),
  `gross_open_balance_amt` decimal(20,5),
  `unbilled_qnty` decimal(20,5),
  `is_billed_bool` tinyint(1) NOT NULL DEFAULT 0,
  `rsb_id` int,
  `txn_line_order` int,
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_received_payment_header`
--

DROP TABLE IF EXISTS `abmc_received_payment_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_received_payment_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `customer_id` int,
  `abm_id` varchar(17) NOT NULL,
  `payment_method_id` int,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `olb_txn_id` int,
  `origin` varchar(51),
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `sticky_note` varchar(4000),
  `is_bounced_bool` tinyint(1) NOT NULL DEFAULT 0,
  `transaction_sendforms_id` int,
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_received_payment_lineitem`
--

DROP TABLE IF EXISTS `abmc_received_payment_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_received_payment_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `customer_id` int,
  `vendor_id` int,
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `reimbursed_type` smallint,
  `next_target_id` int,
  `class_id` int,
  `attributes_id` int,
  `sibling_account_id` int,
  `payment_method_id` int,
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `last_edit_by` int,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_paid_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `is_discount_bool` tinyint(1) NOT NULL,
  `is_uses_billed_date_bool` tinyint(1) NOT NULL,
  `is_applied_discount_bool` tinyint(1) NOT NULL,
  `amount_amt` decimal(20,5),
  `open_balance_amt` decimal(20,5),
  `bank_ref_name` varchar(32),
  `bank_routing_num` varchar(10),
  `bank_account_num` varchar(26),
  `bank_account_type` smallint,
  `reconcile_date` date,
  `due_date` date,
  `billed_date` date,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `ar_credit_card_payment_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `epayment_txn_ident` varchar(25),
  `payment_entry_type` smallint,
  `net_open_balance_amt` decimal(20,5),
  `tax_open_balance_amt` decimal(20,5),
  `gross_open_balance_amt` decimal(20,5),
  `ar_debit_card_payment_id` int,
  `txn_line_order` int,
  `merchant_account_number` varchar(33),
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_report_snapshot_data`
--

DROP TABLE IF EXISTS `abmc_report_snapshot_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_report_snapshot_data` (
  `report_snapshot_metadata_id` int NOT NULL,
  `reportdata` longblob NOT NULL,
  `footnotes` longblob,
  `summary` varchar(2049)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_report_snapshot_metadata`
--

DROP TABLE IF EXISTS `abmc_report_snapshot_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_report_snapshot_metadata` (
  `report_snapshot_metadata_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(257) NOT NULL,
  `description` varchar(1025),
  `report_type` int NOT NULL,
  `report_daterange` varchar(257) NOT NULL,
  `report_fromdate` date,
  `report_todate` date,
  `sentdate` datetime,
  `category` int,
  `snapshot_data_size` int,
  `is_deleted_bool` tinyint(1),
  `created_user` varchar(128) NOT NULL,
  `modified_user` varchar(128),
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `report_original_size` int,
  `report_compressed_size` int,
  `report_footnote_size` int,
  PRIMARY KEY (`report_snapshot_metadata_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_role`
--

DROP TABLE IF EXISTS `abmc_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_role` (
  `company_id` int NOT NULL,
  `role_id` int NOT NULL,
  `role_abm_id` varchar(17),
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `name` varchar(30),
  `category_type` int,
  `is_visible_bool` tinyint(1) NOT NULL,
  `description` varchar(512),
  KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_role_action`
--

DROP TABLE IF EXISTS `abmc_role_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_role_action` (
  `company_id` int NOT NULL,
  `role_id` int NOT NULL,
  `entitlement_id` int NOT NULL,
  `role_action_abm_id` varchar(17),
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `action_type` int,
  KEY (`role_id`,`entitlement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_sale_receipt_inventory_lineitem`
--

DROP TABLE IF EXISTS `abmc_sale_receipt_inventory_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_sale_receipt_inventory_lineitem` (
  `inventory_record_id` int NOT NULL,
  `target_type` int NOT NULL,
  `target_id` int NOT NULL,
  `purchase_transaction_id` int,
  `purchase_target_id` int,
  `purchase_transaction_view_type` smallint,
  `purchase_transaction_date` date,
  `account_id` int,
  `amount_amt` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `foreign_amount_amt` decimal(20,5),
  KEY (`inventory_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_sales_order_header`
--

DROP TABLE IF EXISTS `abmc_sales_order_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_sales_order_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `customer_id` int,
  `abm_id` varchar(17) NOT NULL,
  `contact_id` varchar(17),
  `sales_tax_code_id` int,
  `ship_to_id` varchar(17),
  `ship_via_id` int,
  `sales_rep_id` int,
  `custom_style_id` int,
  `customer_message_id` int,
  `terms_id` int,
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_to_be_printed_bool` tinyint(1) NOT NULL,
  `is_to_be_sent_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_sale_bool` tinyint(1) NOT NULL,
  `is_active_bool` tinyint(1) NOT NULL,
  `ship_date` date,
  `po_num` varchar(26),
  `fob` varchar(14),
  `other` varchar(30),
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `is_amt_incl_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `company_tax_number` varchar(21),
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `site_id` int,
  `sticky_note` varchar(4000),
  `transaction_sendforms_id` int,
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_sales_order_line_sn`
--

DROP TABLE IF EXISTS `abmc_sales_order_line_sn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_sales_order_line_sn` (
  `target_id` int NOT NULL,
  `sn_seq` int NOT NULL AUTO_INCREMENT,
  `sn_id` int,
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`target_id`,`sn_seq`),
  KEY (`sn_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_sales_order_lineitem`
--

DROP TABLE IF EXISTS `abmc_sales_order_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_sales_order_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `item_id` int,
  `customer_id` int,
  `vendor_id` int,
  `next_target_id` int,
  `sales_tax_code_id` int,
  `class_id` int,
  `attributes_id` int,
  `payment_method_id` int,
  `sibling_account_id` int,
  `contact_id` varchar(17),
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `last_edit_by` int,
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_estimated_bool` tinyint(1) NOT NULL,
  `is_purchase_order_bool` tinyint(1) NOT NULL,
  `is_purchase_bool` tinyint(1) NOT NULL,
  `is_sale_bool` tinyint(1) NOT NULL,
  `is_received_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_trans_tax_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_dont_print_target_bool` tinyint(1) NOT NULL,
  `is_item_from_estimate_bool` tinyint(1) NOT NULL,
  `is_base_on_time_activity_bool` tinyint(1) NOT NULL,
  `reimbursed_type` smallint,
  `is_sales_order_bool` tinyint(1) NOT NULL,
  `is_inactive_bool` tinyint(1) NOT NULL,
  `is_invoiced_bool` tinyint(1) NOT NULL,
  `is_item_from_sales_order_bool` tinyint(1) NOT NULL,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_manually_closed_bool` tinyint(1) NOT NULL,
  `is_uses_billed_date_bool` tinyint(1) NOT NULL,
  `has_custom_fields_bool` tinyint(1) NOT NULL,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `amount_amt` decimal(20,5),
  `amount_qnty` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `unit_price_amt` decimal(20,5),
  `unit_price_pct` decimal(20,5),
  `unit_price_qnty` decimal(20,5),
  `open_balance_amt` decimal(20,5),
  `due_date` date,
  `cogs_amt` decimal(20,5),
  `open_qnty` decimal(20,5),
  `estimate_qnty` decimal(20,5),
  `estimate_amt` decimal(20,5),
  `estimate_amt_qnty` decimal(20,5),
  `previous_billed_amt` decimal(20,5),
  `previous_billed_qnty` decimal(20,5),
  `reconcile_date` date,
  `sales_order_qnty` decimal(20,5),
  `previous_invoice_qnty` decimal(20,5),
  `taxable_discount_amt` decimal(20,5),
  `service_date` date,
  `billed_date` date,
  `markup_amt` decimal(20,5),
  `markup_amt_pct` decimal(20,5),
  `markup_amt_qnty` decimal(20,5),
  `ipp_state_type` smallint,
  `is_discount_bool` tinyint(1) NOT NULL,
  `is_applied_discount_bool` tinyint(1) NOT NULL,
  `is_groupend_row_bool` tinyint(1) NOT NULL,
  `nom_total_amt` decimal(20,5),
  `other1` varchar(30),
  `other2` varchar(30),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `memo` text,
  `company_id` int,
  `net_amount_amt` decimal(20,5),
  `net_amount_qnty` decimal(20,5),
  `gross_amount_amt` decimal(20,5),
  `gross_amount_qnty` decimal(20,5),
  `tax_amount_amt` decimal(20,5),
  `tax_amount_qnty` decimal(20,5),
  `taxable_amount_amt` decimal(20,5),
  `taxable_amount_qnty` decimal(20,5),
  `gross_unit_price_amt` decimal(20,5),
  `gross_unit_price_qnty` decimal(20,5),
  `gross_unit_price_pct` decimal(20,5),
  `site_id` int,
  `unit_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `foreign_amount_qnty` decimal(20,5),
  `derived_OnSalesOrder_qnty` decimal(20,5),
  `net_open_balance_amt` decimal(20,5),
  `tax_open_balance_amt` decimal(20,5),
  `gross_open_balance_amt` decimal(20,5),
  `rsb_id` int,
  `txn_line_order` int,
  `base_unit_price_qnty` decimal(20,5),
  `price_rule_note_id` int,
  `manufacturer_part_num` varchar(32),
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_sales_receipt_header`
--

DROP TABLE IF EXISTS `abmc_sales_receipt_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_sales_receipt_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `customer_id` int,
  `abm_id` varchar(17) NOT NULL,
  `contact_id` varchar(17),
  `sales_rep_id` int,
  `sales_tax_code_id` int,
  `ship_to_id` varchar(17),
  `ship_via_id` int,
  `payment_method_id` int,
  `custom_style_id` int,
  `customer_message_id` int,
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_sale_bool` tinyint(1) NOT NULL,
  `is_to_be_printed_bool` tinyint(1) NOT NULL,
  `is_to_be_sent_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_old_tran_tax_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `ship_date` date,
  `fob` varchar(14),
  `po_num` varchar(26),
  `other` varchar(30),
  `delivery_date` date,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `is_amt_incl_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `company_tax_number` varchar(21),
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `olb_txn_id` int,
  `origin` varchar(51),
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `site_id` int,
  `sticky_note` varchar(4000),
  `transaction_sendforms_id` int,
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_sales_receipt_line_sn`
--

DROP TABLE IF EXISTS `abmc_sales_receipt_line_sn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_sales_receipt_line_sn` (
  `target_id` int NOT NULL,
  `sn_seq` int NOT NULL AUTO_INCREMENT,
  `sn_id` int,
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`target_id`,`sn_seq`),
  KEY (`sn_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_sales_receipt_lineitem`
--

DROP TABLE IF EXISTS `abmc_sales_receipt_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_sales_receipt_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `item_id` int,
  `customer_id` int,
  `vendor_id` int,
  `next_target_id` int,
  `sales_tax_code_id` int,
  `class_id` int,
  `attributes_id` int,
  `payment_method_id` int,
  `sibling_account_id` int,
  `contact_id` varchar(17),
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `last_edit_by` int,
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_estimated_bool` tinyint(1) NOT NULL,
  `is_purchase_order_bool` tinyint(1) NOT NULL,
  `is_purchase_bool` tinyint(1) NOT NULL,
  `is_sale_bool` tinyint(1) NOT NULL,
  `is_received_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_trans_tax_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_dont_print_target_bool` tinyint(1) NOT NULL,
  `is_item_from_estimate_bool` tinyint(1) NOT NULL,
  `is_base_on_time_activity_bool` tinyint(1) NOT NULL,
  `reimbursed_type` smallint,
  `is_sales_order_bool` tinyint(1) NOT NULL,
  `is_inactive_bool` tinyint(1) NOT NULL,
  `is_invoiced_bool` tinyint(1) NOT NULL,
  `is_item_from_sales_order_bool` tinyint(1) NOT NULL,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_manually_closed_bool` tinyint(1) NOT NULL,
  `is_uses_billed_date_bool` tinyint(1) NOT NULL,
  `has_custom_fields_bool` tinyint(1) NOT NULL,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `amount_amt` decimal(20,5),
  `amount_qnty` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `unit_price_amt` decimal(20,5),
  `unit_price_pct` decimal(20,5),
  `unit_price_qnty` decimal(20,5),
  `open_balance_amt` decimal(20,5),
  `due_date` date,
  `cogs_amt` decimal(20,5),
  `open_qnty` decimal(20,5),
  `estimate_qnty` decimal(20,5),
  `estimate_amt` decimal(20,5),
  `estimate_amt_qnty` decimal(20,5),
  `previous_billed_amt` decimal(20,5),
  `previous_billed_qnty` decimal(20,5),
  `reconcile_date` date,
  `sales_order_qnty` decimal(20,5),
  `previous_invoice_qnty` decimal(20,5),
  `taxable_discount_amt` decimal(20,5),
  `service_date` date,
  `billed_date` date,
  `markup_amt` decimal(20,5),
  `markup_amt_pct` decimal(20,5),
  `markup_amt_qnty` decimal(20,5),
  `ipp_state_type` smallint,
  `is_discount_bool` tinyint(1) NOT NULL,
  `is_applied_discount_bool` tinyint(1) NOT NULL,
  `is_groupend_row_bool` tinyint(1) NOT NULL,
  `nom_total_amt` decimal(20,5),
  `other1` varchar(30),
  `other2` varchar(30),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `net_amount_amt` decimal(20,5),
  `net_amount_qnty` decimal(20,5),
  `gross_amount_amt` decimal(20,5),
  `gross_amount_qnty` decimal(20,5),
  `tax_amount_amt` decimal(20,5),
  `tax_amount_qnty` decimal(20,5),
  `taxable_amount_amt` decimal(20,5),
  `taxable_amount_qnty` decimal(20,5),
  `gross_unit_price_amt` decimal(20,5),
  `gross_unit_price_qnty` decimal(20,5),
  `gross_unit_price_pct` decimal(20,5),
  `filed_date` date,
  `site_id` int,
  `unit_id` int,
  `ar_credit_card_payment_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `foreign_amount_qnty` decimal(20,5),
  `epayment_txn_ident` varchar(25),
  `payment_entry_type` smallint,
  `derived_OnHand_qnty` decimal(20,5),
  `net_open_balance_amt` decimal(20,5),
  `tax_open_balance_amt` decimal(20,5),
  `gross_open_balance_amt` decimal(20,5),
  `ar_debit_card_payment_id` int,
  `rsb_id` int,
  `txn_line_order` int,
  `base_unit_price_qnty` decimal(20,5),
  `price_rule_note_id` int,
  `merchant_account_number` varchar(33),
  `manufacturer_part_num` varchar(32),
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_sales_rep`
--

DROP TABLE IF EXISTS `abmc_sales_rep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_sales_rep` (
  `sales_rep_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `name_id` int,
  `attributes_id` int,
  `initials` varchar(6),
  `sales_rep_abm_id` varchar(17),
  `company_id` int,
  KEY (`sales_rep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_sales_tax_code`
--

DROP TABLE IF EXISTS `abmc_sales_tax_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_sales_tax_code` (
  `sales_tax_code_id` int NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `is_taxable_bool` tinyint(1) NOT NULL,
  `code` varchar(4),
  `sales_tax_code_abm_id` varchar(17),
  `description` varchar(32),
  `company_id` int,
  `purchase_tax_item_id` int AUTO_INCREMENT,
  `sales_tax_item_id` int,
  KEY (`sales_tax_code_id`),
  KEY (`purchase_tax_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_scheduled_report_schedule`
--

DROP TABLE IF EXISTS `abmc_scheduled_report_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_scheduled_report_schedule` (
  `schedule_id` int NOT NULL AUTO_INCREMENT,
  `schedule_name` varchar(256),
  `schedule_is_active_bool` tinyint(1) NOT NULL DEFAULT 1,
  `start_datetime` datetime,
  `schedule_frequency` smallint NOT NULL DEFAULT 0,
  `schedule_recurrence` smallint NOT NULL DEFAULT 1,
  `schedule_last_attempt_status` smallint NOT NULL DEFAULT 1,
  `last_attempted_datetime` datetime,
  `email_ids` varchar(1024),
  `email_body` text,
  `email_subject` varchar(256),
  `email_password` varchar(512),
  `email_notify_before_send_required_bool` tinyint(1) NOT NULL DEFAULT 0,
  `retry_count` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_scheduled_report_task`
--

DROP TABLE IF EXISTS `abmc_scheduled_report_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_scheduled_report_task` (
  `scheduled_report_task_id` int NOT NULL AUTO_INCREMENT,
  `schedule_id` int NOT NULL,
  `report_id` int,
  `report_name` varchar(256),
  `daterange` int,
  `last_status_code` smallint NOT NULL DEFAULT 1,
  `last_error_code` smallint NOT NULL DEFAULT 0,
  `last_attempted_time` datetime,
  PRIMARY KEY (`scheduled_report_task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_sdk_recovery`
--

DROP TABLE IF EXISTS `abmc_sdk_recovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_sdk_recovery` (
  `sdk_recovery_id` int NOT NULL AUTO_INCREMENT,
  `application_name` varchar(256) NOT NULL,
  `message_set_id` varchar(50) NOT NULL,
  `request_id` varchar(50),
  `request_position` int NOT NULL,
  `status_code` varchar(20),
  `status_message` varchar(300),
  `message_name` varchar(100),
  `message_response` longtext,
  `start_time` datetime NOT NULL,
  `end_time` datetime,
  PRIMARY KEY (`sdk_recovery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_sendforms_message`
--

DROP TABLE IF EXISTS `abmc_sendforms_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_sendforms_message` (
  `sendforms_message_id` int NOT NULL AUTO_INCREMENT,
  `outgoing_message_type` smallint NOT NULL,
  `attach_message_type` smallint NOT NULL,
  `transaction_id` int,
  `transaction_view_type` smallint,
  `is_posted_for_payment` tinyint(1) NOT NULL,
  `is_payment_enabled` tinyint(1) NOT NULL,
  `statement_low_date` int,
  `statement_high_date` int,
  `statement_date` int,
  `statement_customer_id` int,
  `statement_customer_or_job` tinyint(1) NOT NULL,
  `statement_style_id` int,
  `statement_account_id` int,
  `statement_suppress_zerobals` tinyint(1) NOT NULL,
  `statement_forwardoropentxn` smallint,
  `statement_include_txnpastdue` tinyint(1) NOT NULL,
  `statement_dayspastdue` smallint,
  `statement_showinvoicedetail` tinyint(1) NOT NULL,
  `statement_printinorderbyzip` tinyint(1) NOT NULL,
  `statement_suppressballessthan` tinyint(1) NOT NULL,
  `statement_ballessthan` decimal(20,5),
  `statement_suppressnoaccountactivity` tinyint(1) NOT NULL,
  `statement_inactivecustomers` tinyint(1) NOT NULL,
  `statement_printduedate` tinyint(1) NOT NULL,
  `statement_custtype_id` int,
  `statement_amountdue` decimal(20,5),
  `t4_employee_id` int,
  `t4_savedpdfpath` varchar(261),
  `t4_savedpdffilename` varchar(261),
  `t4_savedxmlpath` varchar(261),
  `t4_savedxmlfilename` varchar(261),
  `t4_category` smallint,
  `t4_year` smallint,
  `t4_date` smallint,
  `email_to_address` varchar(1025),
  `email_cc_address` varchar(1025),
  `email_from_address` varchar(257),
  `email_bcc_address` varchar(1025),
  `email_subject` varchar(257),
  `email_body` text,
  `message_template_name` varchar(61),
  `message_template_id` int,
  `company_id` int NOT NULL DEFAULT 0,
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `w2_filepath` varchar(261),
  `w2_filename` varchar(261),
  PRIMARY KEY (`sendforms_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_sent_email`
--

DROP TABLE IF EXISTS `abmc_sent_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_sent_email` (
  `sent_email_id` int NOT NULL AUTO_INCREMENT,
  `name_id` int,
  `transaction_id` int NOT NULL,
  `transaction_type` int NOT NULL,
  `sent_to_email_id` varchar(1024) NOT NULL,
  `sent_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `doc_num` varchar(21),
  `transaction_amt` decimal(20,5) NOT NULL,
  `email_subject` varchar(1024) NOT NULL,
  `sent_by_user` varchar(30),
  `template_used` varchar(128),
  `email_trackerid` varchar(64),
  PRIMARY KEY (`sent_email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_ship_to`
--

DROP TABLE IF EXISTS `abmc_ship_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_ship_to` (
  `ship_to_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `name_id` int NOT NULL,
  `expired_date` date,
  `name` varchar(21),
  `address_line1` varchar(42),
  `address_line2` varchar(42),
  `address_line3` varchar(42),
  `address_line4` varchar(42),
  `address_line5` varchar(42),
  `city` varchar(32),
  `state` varchar(22),
  `postal_code` varchar(14),
  `country` varchar(32),
  `company_id` int,
  `street_line1` varchar(42),
  `street_line2` varchar(42),
  `street_line3` varchar(42),
  `street_line4` varchar(42),
  `street_line5` varchar(42),
  `alternate_id` int,
  `entity_id` int,
  KEY (`ship_to_abm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_shipping`
--

DROP TABLE IF EXISTS `abmc_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_shipping` (
  `shipping_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(16),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `attributes_id` int,
  `shipping_abm_id` varchar(17),
  `company_id` int,
  KEY (`shipping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_site`
--

DROP TABLE IF EXISTS `abmc_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_site` (
  `site_id` int NOT NULL,
  `name` varchar(32),
  `is_active_bool` tinyint(1) NOT NULL DEFAULT 1,
  `telephone_num` varchar(22),
  `fax_num` varchar(22),
  `contact` varchar(42),
  `address_line1` varchar(42),
  `address_line2` varchar(42),
  `address_line3` varchar(42),
  `address_line4` varchar(42),
  `address_line5` varchar(42),
  `city` varchar(32),
  `state` varchar(22),
  `postal_code` varchar(14),
  `country` varchar(32),
  `email` varchar(1024),
  `notes` text,
  `ship_to_address_line1` varchar(42),
  `ship_to_address_line2` varchar(42),
  `ship_to_address_line3` varchar(42),
  `ship_to_address_line4` varchar(42),
  `ship_to_address_line5` varchar(42),
  `ship_to_city` varchar(32),
  `ship_to_state` varchar(22),
  `ship_to_postal_code` varchar(14),
  `ship_to_country` varchar(32),
  `is_hidden_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_delete_pending_bool` tinyint(1) NOT NULL DEFAULT 0,
  `site_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `description` varchar(101),
  `special_type` smallint,
  `ship_to_street_line1` varchar(42),
  `ship_to_street_line2` varchar(42),
  `ship_to_street_line3` varchar(42),
  `ship_to_street_line4` varchar(42),
  `ship_to_street_line5` varchar(42),
  `external_ident` varchar(65),
  `list_ident` varchar(65) NOT NULL,
  `display_index_next` int NOT NULL DEFAULT 0,
  `parent_id` int,
  `sublevel` smallint NOT NULL DEFAULT 0,
  KEY (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_sn`
--

DROP TABLE IF EXISTS `abmc_sn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_sn` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sn` varchar(41) NOT NULL,
  `sn_qnty` decimal(20,5) NOT NULL DEFAULT 0.0,
  `modtimestamp_tms` int NOT NULL,
  `company_id` int NOT NULL DEFAULT 0,
  `item_id` int NOT NULL DEFAULT 0,
  `site_id` int,
  `expiration_date` date,
  `rsb_id` int,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_statement_charge_header`
--

DROP TABLE IF EXISTS `abmc_statement_charge_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_statement_charge_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `customer_id` int,
  `abm_id` varchar(17) NOT NULL,
  `terms_id` int,
  `sales_rep_id` int,
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_sale_bool` tinyint(1) NOT NULL,
  `is_to_be_printed_bool` tinyint(1) NOT NULL,
  `due_date` date,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `sticky_note` varchar(4000),
  `transaction_sendforms_id` int,
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_statement_charge_inventory_lineitem`
--

DROP TABLE IF EXISTS `abmc_statement_charge_inventory_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_statement_charge_inventory_lineitem` (
  `inventory_record_id` int NOT NULL,
  `target_type` int NOT NULL,
  `target_id` int NOT NULL,
  `purchase_transaction_id` int,
  `purchase_target_id` int,
  `purchase_transaction_view_type` smallint,
  `purchase_transaction_date` date,
  `account_id` int,
  `amount_amt` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `foreign_amount_amt` decimal(20,5),
  KEY (`inventory_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_statement_charge_lineitem`
--

DROP TABLE IF EXISTS `abmc_statement_charge_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_statement_charge_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `item_id` int,
  `customer_id` int,
  `vendor_id` int,
  `next_target_id` int,
  `sales_tax_code_id` int,
  `class_id` int,
  `attributes_id` int,
  `payment_method_id` int,
  `sibling_account_id` int,
  `latest_link_date` date,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `last_edit_by` int,
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_estimated_bool` tinyint(1) NOT NULL,
  `is_purchase_order_bool` tinyint(1) NOT NULL,
  `is_purchase_bool` tinyint(1) NOT NULL,
  `is_sale_bool` tinyint(1) NOT NULL,
  `is_received_bool` tinyint(1) NOT NULL,
  `cleared_type` smallint,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_trans_tax_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `is_arap_bool` tinyint(1) NOT NULL,
  `is_dont_print_target_bool` tinyint(1) NOT NULL,
  `is_item_from_estimate_bool` tinyint(1) NOT NULL,
  `is_base_on_time_activity_bool` tinyint(1) NOT NULL,
  `reimbursed_type` smallint,
  `is_sales_order_bool` tinyint(1) NOT NULL,
  `is_inactive_bool` tinyint(1) NOT NULL,
  `is_invoiced_bool` tinyint(1) NOT NULL,
  `is_item_from_sales_order_bool` tinyint(1) NOT NULL,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_manually_closed_bool` tinyint(1) NOT NULL,
  `is_uses_billed_date_bool` tinyint(1) NOT NULL,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `amount_amt` decimal(20,5),
  `amount_qnty` decimal(20,5),
  `quantity_qnty` decimal(20,5),
  `unit_price_amt` decimal(20,5),
  `unit_price_pct` decimal(20,5),
  `unit_price_qnty` decimal(20,5),
  `open_balance_amt` decimal(20,5),
  `due_date` date,
  `cogs_amt` decimal(20,5),
  `open_qnty` decimal(20,5),
  `estimate_qnty` decimal(20,5),
  `estimate_amt` decimal(20,5),
  `estimate_amt_qnty` decimal(20,5),
  `previous_billed_amt` decimal(20,5),
  `previous_billed_qnty` decimal(20,5),
  `reconcile_date` date,
  `sales_order_qnty` decimal(20,5),
  `previous_invoice_qnty` decimal(20,5),
  `taxable_discount_amt` decimal(20,5),
  `service_date` date,
  `billed_date` date,
  `markup_amt` decimal(20,5),
  `markup_amt_pct` decimal(20,5),
  `markup_amt_qnty` decimal(20,5),
  `ipp_state_type` smallint,
  `is_discount_bool` tinyint(1) NOT NULL,
  `is_applied_discount_bool` tinyint(1) NOT NULL,
  `is_groupend_row_bool` tinyint(1) NOT NULL,
  `nom_total_amt` decimal(20,5),
  `other1` varchar(30),
  `other2` varchar(30),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `net_amount_amt` decimal(20,5),
  `net_amount_qnty` decimal(20,5),
  `gross_amount_amt` decimal(20,5),
  `gross_amount_qnty` decimal(20,5),
  `tax_amount_amt` decimal(20,5),
  `tax_amount_qnty` decimal(20,5),
  `taxable_amount_amt` decimal(20,5),
  `taxable_amount_qnty` decimal(20,5),
  `gross_unit_price_amt` decimal(20,5),
  `gross_unit_price_qnty` decimal(20,5),
  `gross_unit_price_pct` decimal(20,5),
  `filed_date` date,
  `site_id` int,
  `unit_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `foreign_amount_qnty` decimal(20,5),
  `derived_OnHand_qnty` decimal(20,5),
  `net_open_balance_amt` decimal(20,5),
  `tax_open_balance_amt` decimal(20,5),
  `gross_open_balance_amt` decimal(20,5),
  `rsb_id` int,
  `txn_line_order` int,
  `base_unit_price_qnty` decimal(20,5),
  `price_rule_note_id` int,
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_subscription`
--

DROP TABLE IF EXISTS `abmc_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_subscription` (
  `company_id` int,
  `subscription_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `app_instance_abm_id` varchar(17),
  `subscription_type` smallint,
  `is_recoverable_bool` tinyint(1) NOT NULL,
  `is_synchronous_bool` tinyint(1) NOT NULL,
  `com_callback_clsid` varchar(40),
  `com_callback_clsctx_type` smallint,
  `recovery_tms` datetime,
  `time_last_modified_tms` datetime,
  `qbxml_version_type` smallint,
  KEY (`subscription_abm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_tax_exception_header`
--

DROP TABLE IF EXISTS `abmc_tax_exception_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_tax_exception_header` (
  `transaction_id` int NOT NULL DEFAULT 0,
  `agency_id` int NOT NULL DEFAULT 0,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `transaction_name_id` int,
  `doc_num` varchar(26),
  `transaction_modified_count` int,
  `modtimestamp_tms` int,
  `abm_id` varchar(17) NOT NULL DEFAULT '',
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company_id` int,
  KEY (`transaction_id`,`agency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_tax_exception_lineitem`
--

DROP TABLE IF EXISTS `abmc_tax_exception_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_tax_exception_lineitem` (
  `target_id` int NOT NULL DEFAULT 0,
  `agency_id` int NOT NULL DEFAULT 0,
  `transaction_id` int NOT NULL DEFAULT 0,
  `account_id` int,
  `tax_code_id` int,
  `item_id` int,
  `filed_date` date,
  `is_trans_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_source_bool` tinyint(1) NOT NULL DEFAULT 0,
  `amount_amt` decimal(20,5),
  `paid_amount_amt` decimal(20,5),
  `abm_id` varchar(17) NOT NULL DEFAULT '',
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company_id` int,
  KEY (`target_id`,`agency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_terminal_info`
--

DROP TABLE IF EXISTS `abmc_terminal_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_terminal_info` (
  `terminal_info_id` int NOT NULL AUTO_INCREMENT,
  `serial_number` varchar(17) NOT NULL DEFAULT '',
  `terminal_id` varchar(9) NOT NULL DEFAULT '',
  `terminal_info_abm_id` varchar(17) NOT NULL DEFAULT '',
  `company_id` int,
  PRIMARY KEY (`terminal_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_terms`
--

DROP TABLE IF EXISTS `abmc_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_terms` (
  `terms_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(32),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `attributes_id` int,
  `standard_due_days` smallint,
  `standard_discount_days` smallint,
  `terms_type` smallint,
  `date_mininmum_days` smallint,
  `day_of_month_due` smallint,
  `discount_day_of_month` smallint,
  `discount_pct` decimal(20,5),
  `terms_abm_id` varchar(17),
  `company_id` int,
  KEY (`terms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_time_activity`
--

DROP TABLE IF EXISTS `abmc_time_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_time_activity` (
  `time_activity_id` int NOT NULL,
  `time_activity_date` date NOT NULL,
  `customer_id` int,
  `vendor_id` int,
  `employee_id` int,
  `other_id` int,
  `job_id` int,
  `item_id` int,
  `payroll_item_id` int,
  `class_id` int,
  `workers_comp_code_id` int,
  `time_duration` decimal(12,0),
  `billing_status` smallint,
  `is_transfer_to_payroll_bool` tinyint(1) NOT NULL,
  `is_imported_bool` tinyint(1) NOT NULL,
  `is_imported_not_accepted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `abm_id` varchar(17) NOT NULL,
  `Modtimestamp_tms` int NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `Timestamp_tms` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `memo` text,
  `company_id` int NOT NULL DEFAULT 0,
  `time_sheet_entry_id` int,
  `user_duration_override_bool` tinyint(1) NOT NULL DEFAULT 0,
  `time_bucket_type` int,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `time_activity_line_order` int,
  KEY (`time_activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_todo`
--

DROP TABLE IF EXISTS `abmc_todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_todo` (
  `todo_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `is_done_bool` tinyint(1) NOT NULL,
  `remind_date` datetime,
  `todo_abm_id` varchar(17),
  `todo_text` text,
  `company_id` int,
  `alternate_id` int,
  `name_id` int,
  `contact_info` text,
  `todo_status_id` int,
  `todo_priority_id` int,
  `todo_type_id` int,
  `entity_type_id` int,
  `rich_desc` varchar(3000),
  KEY (`todo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_transaction_date_range`
--

DROP TABLE IF EXISTS `abmc_transaction_date_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_transaction_date_range` (
  `first_transaction_date` date,
  `last_transaction_date` date,
  `first_transaction_id` int,
  `last_transaction_id` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_transaction_link`
--

DROP TABLE IF EXISTS `abmc_transaction_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_transaction_link` (
  `link_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `transaction_date` date,
  `transaction_2_id` int,
  `target_1_id` int,
  `target_2_id` int,
  `sibling_id` int,
  `bill_payment_transaction_id` int,
  `write_count` int,
  `link_type` smallint,
  `transaction_1_view` smallint,
  `transaction_2_view` smallint,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_secondary_bool` tinyint(1) NOT NULL,
  `is_direct_bool` tinyint(1) NOT NULL,
  `is_t1_source_bool` tinyint(1) NOT NULL,
  `is_bill_credit_printed_bool` tinyint(1) NOT NULL,
  `is_information_only_bool` tinyint(1) NOT NULL,
  `amount_amt` decimal(20,5),
  `amount_qnty` decimal(20,5),
  `amount2_amt` decimal(20,5),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `target_1_exchange_rate` float NOT NULL DEFAULT 1.0,
  `target_2_exchange_rate` float NOT NULL DEFAULT 1.0,
  `net_amount_amt` decimal(20,5),
  `tax_amount_amt` decimal(20,5),
  `gross_amount_amt` decimal(20,5),
  KEY (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_transaction_sendforms`
--

DROP TABLE IF EXISTS `abmc_transaction_sendforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_transaction_sendforms` (
  `transaction_sendforms_id` int NOT NULL AUTO_INCREMENT,
  `transaction_id` int NOT NULL,
  `transaction_view_type` smallint NOT NULL,
  `paper_mail_sentdate` int,
  `email_sentdate` int,
  `sendforms_upload_time` int,
  `is_posted_for_payment` tinyint(1) NOT NULL,
  `company_id` int NOT NULL DEFAULT 0,
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timestamp_tms` int NOT NULL,
  `modtimestamp_tms` int NOT NULL,
  `fax_sentdate` int,
  PRIMARY KEY (`transaction_sendforms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_transfer_header`
--

DROP TABLE IF EXISTS `abmc_transfer_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_transfer_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `abm_id` varchar(17) NOT NULL,
  `customer_id` int,
  `vendor_id` int,
  `employee_id` int,
  `other_id` int,
  `transaction_name_type` smallint,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `trans_num` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `is_arap_bool` tinyint(1) NOT NULL,
  `online_state_type` smallint,
  `is_transmit_memo_bool` tinyint(1) NOT NULL,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `olb_txn_id` int,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `sticky_note` varchar(4000),
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_transfer_lineitem`
--

DROP TABLE IF EXISTS `abmc_transfer_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_transfer_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `customer_id` int,
  `vendor_id` int,
  `employee_id` int,
  `other_id` int,
  `lineitem_name_type` smallint,
  `transaction_name_type` smallint,
  `next_target_id` int,
  `attributes_id` int,
  `sibling_account_id` int,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `last_edit_by` int,
  `amount_amt` decimal(20,5),
  `reimbursed_type` smallint,
  `cleared_type` smallint,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `is_source_bool` tinyint(1) NOT NULL,
  `reconcile_date` date,
  `bank_ref_name` varchar(32),
  `bank_routing_num` varchar(10),
  `bank_account_num` varchar(26),
  `bank_account_type` smallint,
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `class_id` int,
  `txn_line_order` int,
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_transfer_of_credit`
--

DROP TABLE IF EXISTS `abmc_transfer_of_credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_transfer_of_credit` (
  `transaction_id` int NOT NULL,
  `mapped_transaction_id` int NOT NULL DEFAULT 0,
  `target_id` int NOT NULL,
  `mapped_target_id` int NOT NULL DEFAULT 0,
  `is_check_verify` tinyint(1) NOT NULL DEFAULT 0,
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_trw_salestax_return`
--

DROP TABLE IF EXISTS `abmc_trw_salestax_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_trw_salestax_return` (
  `abm_id` varchar(17) NOT NULL DEFAULT '',
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tax_agency_id` int NOT NULL,
  `tax_start_period_date` date NOT NULL,
  `tax_end_period_date` date NOT NULL,
  `tax_line_id` int NOT NULL,
  `tax_amount` decimal(20,5),
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`tax_agency_id`,`tax_start_period_date`,`tax_end_period_date`,`tax_line_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_txn_event_subscription`
--

DROP TABLE IF EXISTS `abmc_txn_event_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_txn_event_subscription` (
  `company_id` int,
  `txn_event_subscript_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `subscription_abm_id` varchar(17),
  `txn_event_type` smallint,
  `txn_event_operation_type` smallint,
  KEY (`txn_event_subscript_abm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_unattended_user`
--

DROP TABLE IF EXISTS `abmc_unattended_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_unattended_user` (
  `company_id` int NOT NULL,
  `user_id` int NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `unattended_user_abm_id` varchar(17),
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `password` blob NOT NULL,
  KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_unit`
--

DROP TABLE IF EXISTS `abmc_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_unit` (
  `unit_id` int NOT NULL,
  `parent_id` int,
  `name` varchar(32),
  `abbr` varchar(32),
  `ratio` decimal(20,5),
  `base_unit_id` int,
  `type_of_set` int,
  `is_hidden_bool` tinyint(1) NOT NULL,
  `sublevel` int NOT NULL,
  `unit_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `is_deleted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_delete_pending_bool` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `display_index_next` int NOT NULL DEFAULT 0,
  KEY (`unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_unit_default`
--

DROP TABLE IF EXISTS `abmc_unit_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_unit_default` (
  `unit_set_id` int NOT NULL,
  `unit_area` int NOT NULL,
  `default_unit_id` int NOT NULL,
  `unit_default_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  KEY (`unit_set_id`,`unit_area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_user_edlist_pref`
--

DROP TABLE IF EXISTS `abmc_user_edlist_pref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_user_edlist_pref` (
  `user_id` int NOT NULL,
  `edlist_id` int NOT NULL,
  `sortby_type` smallint NOT NULL,
  `is_one_line_bool` tinyint(1) NOT NULL,
  `is_show_open_balance_bool` tinyint(1) NOT NULL,
  `abm_id` varchar(17) NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `company_id` int NOT NULL,
  KEY (`user_id`,`edlist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_user_role`
--

DROP TABLE IF EXISTS `abmc_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_user_role` (
  `company_id` int NOT NULL,
  `user_id` int NOT NULL,
  `user_abm_id` varchar(17),
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `role_id` int NOT NULL,
  KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_vendor_bank_account`
--

DROP TABLE IF EXISTS `abmc_vendor_bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_vendor_bank_account` (
  `vendor_bank_account_id` int NOT NULL AUTO_INCREMENT,
  `vendor_id` int NOT NULL,
  `bank_account_guid` varchar(40) NOT NULL,
  `bank_ref_name` varchar(50) NOT NULL,
  `bank_routing_num` varchar(257) NOT NULL,
  `bank_account_num` varchar(257) NOT NULL,
  `bank_account_type` smallint NOT NULL,
  `expired_date` date,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  PRIMARY KEY (`vendor_bank_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_vendor_eoy_form`
--

DROP TABLE IF EXISTS `abmc_vendor_eoy_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_vendor_eoy_form` (
  `abm_id` varchar(17) NOT NULL DEFAULT '',
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vendor_id` int NOT NULL DEFAULT 0,
  `social_insurance_number` varchar(14) NOT NULL DEFAULT '',
  `tax_year` int NOT NULL DEFAULT 0,
  `submit_reference_id` varchar(12) NOT NULL DEFAULT '',
  `is_reviewed` tinyint(1) NOT NULL DEFAULT 0,
  `is_emailed` tinyint(1) NOT NULL DEFAULT 0,
  `is_printed` tinyint(1) NOT NULL DEFAULT 0,
  `form_type` int NOT NULL DEFAULT 0,
  `t4a_income_tax_deducted_amt` decimal(20,5),
  `t4a_other_income_amt` decimal(20,5),
  `t5018_subcontractor_amt` decimal(20,5),
  `vendor_type` int NOT NULL DEFAULT 0,
  `is_fiscal_year_end` tinyint(1) NOT NULL DEFAULT 0,
  `payroll_subaccount_id` varchar(5) NOT NULL DEFAULT '',
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`vendor_id`,`tax_year`,`submit_reference_id`,`form_type`,`is_fiscal_year_end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_vendor_internal`
--

DROP TABLE IF EXISTS `abmc_vendor_internal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_vendor_internal` (
  `vendor_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `modtimestamp_tms` int,
  `end_balance_amt` decimal(20,5),
  `transmit_memo_bool` tinyint(1) NOT NULL,
  `open_date` date,
  `company_id` int,
  `end_balance_home_amt` decimal(20,5),
  `list_ident` varchar(65) NOT NULL,
  `external_ident` varchar(65),
  `display_index_next` int NOT NULL DEFAULT 0,
  KEY (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_vendor_t4a_additional_data`
--

DROP TABLE IF EXISTS `abmc_vendor_t4a_additional_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_vendor_t4a_additional_data` (
  `abm_id` varchar(17) NOT NULL DEFAULT '',
  `box_id` varchar(4) NOT NULL,
  `description` varchar(30),
  `amount` decimal(20,2),
  `serial_num` int NOT NULL,
  `vendor_id` int NOT NULL,
  `tax_year` int NOT NULL,
  `submit_reference_id` varchar(12) NOT NULL,
  `form_type` int NOT NULL,
  `is_fiscal_year_end` tinyint(1) NOT NULL,
  KEY (`vendor_id`,`box_id`,`serial_num`,`tax_year`,`submit_reference_id`,`is_fiscal_year_end`,`form_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_vendor_tax`
--

DROP TABLE IF EXISTS `abmc_vendor_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_vendor_tax` (
  `tax_year` int NOT NULL,
  `vendor_id` int NOT NULL,
  `category_id` int NOT NULL,
  `amount` decimal(20,5) NOT NULL,
  `company_id` int,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  KEY (`tax_year`,`vendor_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_vendor_type`
--

DROP TABLE IF EXISTS `abmc_vendor_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_vendor_type` (
  `vendor_type_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(32),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `parent_id` int,
  `sublevel` smallint,
  `vendor_type_abm_id` varchar(17),
  `company_id` int,
  `display_index_next` int NOT NULL DEFAULT 0,
  KEY (`vendor_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_vendor_user`
--

DROP TABLE IF EXISTS `abmc_vendor_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_vendor_user` (
  `vendor_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(42),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `terms_id` int,
  `vendor_type_id` int,
  `sales_rep_id` int,
  `billing_rate_level_id` int,
  `attributes_id` int,
  `parent_id` int,
  `sublevel` smallint,
  `is_1099_vendor_bool` tinyint(1) NOT NULL,
  `has_notes_bool` tinyint(1) NOT NULL,
  `was_imported_bool` tinyint(1) NOT NULL,
  `credit_limit_amt` decimal(20,5),
  `nonemployee_pay_period_end_date` date,
  `tax_identifier` varchar(257),
  `vendor_abm_id` varchar(17),
  `name_on_check` varchar(42),
  `company_id` int,
  `work_comp_expire_date` date,
  `gen_insurance_expire_date` date,
  `is_tax_agency_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_tax_on_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_tax_tracked_on_sales_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_tax_tracked_on_purch_bool` tinyint(1) NOT NULL DEFAULT 0,
  `tax_on_sales_tracking_account_id` int,
  `tax_on_purchases_tracking_account_id` int,
  `sales_tax_code_id` int,
  `country_num` smallint NOT NULL DEFAULT 0,
  `reporting_period_type` smallint NOT NULL DEFAULT 0,
  `reporting_period_ends_type` smallint NOT NULL DEFAULT 0,
  `tax_return_form_num` smallint NOT NULL DEFAULT 0,
  `tax_agency_number` varchar(21),
  `currency_id` int,
  `external_ident` varchar(65),
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `vendor_guid` varchar(40),
  `is_vendor_dd_enabled_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_email_required_bool` tinyint(1) NOT NULL DEFAULT 0,
  `tax_label` varchar(21),
  `is_tax_exception_data_valid_bool` tinyint(1) NOT NULL DEFAULT 0,
  `bank_account_name` varchar(42),
  `sort_code` varchar(9),
  `bank_account_number` varchar(257),
  `is_tax_app_method_accrual_bool` tinyint(1) NOT NULL DEFAULT 1,
  `business_number` varchar(17),
  `is_T5018_vendor_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_T4A_vendor_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_tax_billable_bool` tinyint(1) NOT NULL DEFAULT 0,
  `class_id` int,
  `customs_code_value` varchar(13),
  KEY (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `abmc_window_info`
--

DROP TABLE IF EXISTS `abmc_window_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abmc_window_info` (
  `user_id` int NOT NULL,
  `add_on_id` int NOT NULL,
  `win_type` int NOT NULL,
  `win_num` int NOT NULL,
  `desk_version` smallint,
  `position_left` smallint,
  `position_top` smallint,
  `position_right` smallint,
  `position_bottom` smallint,
  `command` int,
  `win_state` int,
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int NOT NULL DEFAULT 0,
  KEY (`user_id`,`add_on_id`,`win_type`,`win_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cf_pref_attribute`
--

DROP TABLE IF EXISTS `cf_pref_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cf_pref_attribute` (
  `preference_id` int NOT NULL AUTO_INCREMENT,
  `abm_id` varchar(17) NOT NULL,
  `preference_name` varchar(2048) NOT NULL,
  `description` varchar(2048),
  `company_id` int,
  PRIMARY KEY (`preference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cf_pref_attribute_value`
--

DROP TABLE IF EXISTS `cf_pref_attribute_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cf_pref_attribute_value` (
  `preference_id` int NOT NULL,
  `abm_id` varchar(17) NOT NULL,
  `user_name` varchar(128),
  `preference_value` text,
  `company_id` int,
  `pref_attribute_value_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pref_attribute_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_agency_account_number`
--

DROP TABLE IF EXISTS `es_agency_account_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_agency_account_number` (
  `agency_account_number_id` int NOT NULL AUTO_INCREMENT,
  `vendor_id` int NOT NULL,
  `agency_account_number` varchar(257) NOT NULL,
  `agency_account_type` varchar(257) NOT NULL,
  `agency_account_number_abm_id` varchar(17) NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `company_id` int,
  PRIMARY KEY (`agency_account_number_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_compliance_item_name`
--

DROP TABLE IF EXISTS `es_compliance_item_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_compliance_item_name` (
  `compliance_item_name_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(128) NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `compliance_item_name_abm_id` varchar(17) NOT NULL,
  `company_id` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`compliance_item_name_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_compliance_item_setting`
--

DROP TABLE IF EXISTS `es_compliance_item_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_compliance_item_setting` (
  `compliance_item_setting_id` int NOT NULL AUTO_INCREMENT,
  `compliance_item_name_id` int NOT NULL,
  `item_value` varchar(512) NOT NULL,
  `effective_start_date` date NOT NULL,
  `effective_end_date` date NOT NULL,
  `compliance_item_setting_group_id` int NOT NULL,
  `rules_version` int,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `compliance_item_setting_abm_id` varchar(17) NOT NULL,
  `company_id` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`compliance_item_setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_compliance_item_setting_group`
--

DROP TABLE IF EXISTS `es_compliance_item_setting_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_compliance_item_setting_group` (
  `compliance_item_setting_group_id` int NOT NULL AUTO_INCREMENT,
  `domain` varchar(16) NOT NULL,
  `jurisdiction` varchar(32) NOT NULL,
  `employee_id` int NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `compliance_item_setting_group_abm_id` varchar(17) NOT NULL,
  `company_id` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`compliance_item_setting_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_credential`
--

DROP TABLE IF EXISTS `es_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_credential` (
  `credential_id` int NOT NULL AUTO_INCREMENT,
  `enrollment_id` int NOT NULL,
  `value` varchar(256) NOT NULL,
  `type` varchar(256) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `credential_abm_id` varchar(17) NOT NULL,
  `company_id` int,
  PRIMARY KEY (`credential_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_direct_deposit`
--

DROP TABLE IF EXISTS `es_direct_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_direct_deposit` (
  `direct_deposit_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `employee_id` int NOT NULL,
  `position` int,
  `expired_date` date,
  `bank_account_type` smallint,
  `amount_amt` decimal(20,5),
  `amount_pct` decimal(20,5),
  `bank_routing_num` varchar(257),
  `bank_account_num` varchar(257),
  `bank_ref_name` varchar(32),
  `company_id` int,
  KEY (`direct_deposit_abm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_employee`
--

DROP TABLE IF EXISTS `es_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_employee` (
  `employee_id` int NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `pay_period_type` smallint,
  `gender_type` smallint,
  `last_check_id` int,
  `last_check_date` date,
  `hire_date` date,
  `release_date` date,
  `birth_date` varchar(257),
  `is_deceased_bool` tinyint(1) NOT NULL,
  `db_has_hr_data_bool` tinyint(1) NOT NULL,
  `social_security_num` varchar(257),
  `employee_abm_id` varchar(17),
  `company_id` int,
  `employee_number` varchar(25),
  `social_insurance_number` varchar(257),
  `employee_ocupation` varchar(36),
  `employee_ROE_code` smallint NOT NULL DEFAULT 0,
  `last_check_view` smallint,
  `national_insurance_number` varchar(257),
  `employee_sex` smallint,
  `employee_title_type` smallint,
  `payment_method` smallint,
  `employee_marital_status_type` smallint NOT NULL DEFAULT 0,
  KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_employee_attachments_payroll_item`
--

DROP TABLE IF EXISTS `es_employee_attachments_payroll_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_employee_attachments_payroll_item` (
  `employee_abm_id` varchar(17) NOT NULL DEFAULT '',
  `position` int NOT NULL DEFAULT 0,
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `protected_earnings_rate_amt` decimal(20,5),
  `protected_earnings_rate_carry_forward` decimal(20,5),
  `deduct_admin_fee_bool` tinyint(1) NOT NULL DEFAULT 0,
  `normal_deduction_rate_carry_forward` decimal(20,5),
  `does_use_tables_bool` tinyint(1) NOT NULL DEFAULT 0,
  `priority_order_number` smallint,
  `attachment_type` smallint,
  `court_reference_number` varchar(15),
  `company_id` int NOT NULL DEFAULT 0,
  `protected_earnings_rate_is_percent` tinyint(1) NOT NULL DEFAULT 0,
  KEY (`employee_abm_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_employee_director`
--

DROP TABLE IF EXISTS `es_employee_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_employee_director` (
  `employee_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `director_appointed_date` date,
  `employee_director_abm_id` varchar(17) NOT NULL DEFAULT '',
  `company_id` int,
  `has_appropriate_pension_plan_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_using_NIC_annual_method_bool` tinyint(1) NOT NULL DEFAULT 0,
  `company_ni_able_pay_to_date` decimal(20,5),
  `employee_contracted_out_ni_to_date` decimal(20,5),
  `employee_not_contracted_out_ni_to_date` decimal(20,5),
  `employer_ni_to_date` decimal(20,5),
  `employee_ni_rebate_to_date` decimal(20,5),
  `employer_ni_rebate_to_date` decimal(20,5),
  `employee_contracted_out_ni_able_pay_to_date` decimal(20,5),
  `employee_not_contracted_out_ni_able_pay_to_date` decimal(20,5),
  KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_employee_hr`
--

DROP TABLE IF EXISTS `es_employee_hr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_employee_hr` (
  `employee_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `emer_contact_relation1_type` smallint,
  `emer_contact_relation2_type` smallint,
  `original_hire_date` date,
  `last_worked_date` date,
  `last_benefits_date` date,
  `adjusted_service_date` date,
  `recommend_rehire_type` smallint,
  `is_rehire_type` smallint,
  `protest_unemployment_type` smallint,
  `is_severance_paid_type` smallint,
  `supervisor_employee_id` int,
  `supervisor_vendor_id` int,
  `supervisor_other_id` int,
  `is_part_time_type` smallint,
  `is_exempt_type` smallint,
  `is_key_employee_type` smallint,
  `marital_status_type` smallint,
  `is_us_citizen_type` smallint,
  `is_disabled_type` smallint,
  `is_us_veteran_type` smallint,
  `is_military_status_type` smallint,
  `is_i9_on_file_type` smallint,
  `i9_expiration__date` date,
  `compensation_effective_date` date,
  `target_bonus_amt` decimal(20,5),
  `target_bonus_pct` decimal(20,5),
  `employee_abm_id` varchar(17),
  `emer_contact_phone1` varchar(22),
  `emer_contact_phone2` varchar(22),
  `terminationtype` varchar(32),
  `termination_reason` varchar(32),
  `hr_status` varchar(32),
  `location` varchar(32),
  `department` varchar(32),
  `ethnicity` varchar(32),
  `emer_contact_name1` varchar(42),
  `emer_contact_name2` varchar(42),
  `severance_description` varchar(42),
  `job_title` varchar(42),
  `disability_description` varchar(42),
  `job_description` varchar(65),
  `num_hist_loa` int,
  `num_hist_comp` int,
  `company_id` int,
  `is_seasonal_type` smallint NOT NULL DEFAULT 0,
  KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_employee_hr_comp_hist`
--

DROP TABLE IF EXISTS `es_employee_hr_comp_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_employee_hr_comp_hist` (
  `employee_abm_id` varchar(17) NOT NULL,
  `position` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `comp_effective_date` date,
  `end_date` date,
  `comp_payroll_item_id` int,
  `wage_amt` decimal(20,5),
  `wage_pct` decimal(20,5),
  `target_bonus_amt` decimal(20,5),
  `target_bonus_pct` decimal(20,5),
  `actual_bonus_amt` decimal(20,5),
  `job_title` varchar(42),
  `company_id` int,
  KEY (`employee_abm_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_employee_hr_loa_hist`
--

DROP TABLE IF EXISTS `es_employee_hr_loa_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_employee_hr_loa_hist` (
  `employee_abm_id` varchar(17) NOT NULL,
  `position` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `leave_start_date` date,
  `leave_expected_return_date` date,
  `leave_actual_return_date` date,
  `paid_type` smallint,
  `allowance_type` smallint,
  `paid_pct` decimal(20,5),
  `leave_type` varchar(32),
  `leave_reason` varchar(32),
  `company_id` int,
  KEY (`employee_abm_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_employee_payroll`
--

DROP TABLE IF EXISTS `es_employee_payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_employee_payroll` (
  `employee_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `assisted_service_id` int,
  `is_to_send_bool` tinyint(1) NOT NULL,
  `time_card_type` smallint,
  `is_time_card_emp_bool` tinyint(1) NOT NULL,
  `clear_sick_time_bool` tinyint(1) NOT NULL,
  `sick_accrual_type` smallint,
  `clear_vacation_time_bool` tinyint(1) NOT NULL,
  `vacation_accrual_type` smallint,
  `use_direct_deposit_bool` tinyint(1) NOT NULL,
  `num_direct_deposit_accounts` int,
  `sick_year_begins_on_date` date,
  `sick_accrue_after_date` date,
  `vacation_year_begins_on_date` date,
  `vacation_accrue_after_date` date,
  `sick_hours_rate_time` decimal(12,0),
  `sick_accrued_time` decimal(12,0),
  `sick_limit_time` decimal(12,0),
  `sick_used_time` decimal(12,0),
  `vacation_hours_rate_time` decimal(12,0),
  `vacation_accrued_time` decimal(12,0),
  `vacation_limit_time` decimal(12,0),
  `vacation_used_time` decimal(12,0),
  `employee_abm_id` varchar(17),
  `company_id` int,
  `pay_schedule_id` int,
  `policy_overtime_id` int,
  `time_sheet_format_id` int,
  `vacation_hours_rate_money` decimal(20,5),
  `vacation_accrued_money` decimal(20,5),
  `vacation_limit_money` decimal(20,5),
  `vacation_used_money` decimal(20,5),
  `sick_leave_title` varchar(24),
  `advance_pay_balance_amt` decimal(20,5),
  `is_P45_part1_filed_bool` tinyint(1) NOT NULL DEFAULT 0,
  `P45_part1_file_date` date,
  `is_P45_part3_filed_bool` tinyint(1) NOT NULL DEFAULT 0,
  `P45_part3_file_date` date,
  `is_P46_filed_bool` tinyint(1) NOT NULL DEFAULT 0,
  `P46_file_date` date,
  `prior_employment_HMRC_form_type` smallint,
  `prior_employment_HMRC_office_number` varchar(5),
  `prior_employment_employer_paye_reference` varchar(12),
  `prior_employment_tax_code_at_leaving` varchar(10),
  `is_prior_employment_week1_month1_bool` tinyint(1) NOT NULL DEFAULT 0,
  `prior_employment_week_number` smallint,
  `prior_employment_month_number` smallint,
  `prior_employment_week_or_month` smallint,
  `prior_employment_P46_statement_type` smallint,
  `is_prior_employment_no_pay_between_start_and_EOY_bool` tinyint(1) NOT NULL DEFAULT 0,
  `prior_employment_end_date` date,
  `prior_employment_pay` decimal(20,5),
  `prior_employment_tax` decimal(20,5),
  `P45_prior_employment_end_date` date,
  `P45_prior_employment_pay` decimal(20,5),
  `P45_prior_employment_tax` decimal(20,5),
  `P45P46_collection_of_student_loans_bool` tinyint(1) NOT NULL DEFAULT 0,
  `P11_prior_employment_tax` decimal(20,5),
  `prior_employment_adjustment_HMRC_form_type` smallint,
  `is_in_trade_dispute_bool` tinyint(1) NOT NULL DEFAULT 0,
  `tax_period` smallint,
  `tax_refund_not_paid_amt` decimal(20,5),
  `spp_match_date_notified_date` date,
  `spp_child_expected_date` date,
  `spp_child_placed_date` date,
  `spp_notify_leave_start_date` date,
  `spp_stop_date` date,
  `sap_match_date_notified_date` date,
  `sap_child_expected_date` date,
  `sap_child_placed_date` date,
  `sap_notify_leave_start_date` date,
  `sap_stop_date` date,
  `smp_baby_due_date` date,
  `smp_baby_born_date` date,
  `smp_stillbirth_bool` tinyint(1) NOT NULL DEFAULT 0,
  `ssp_entitled_in_last_piw_bool` tinyint(1) NOT NULL DEFAULT 0,
  `sxp_paid_on_leave_bool` tinyint(1) NOT NULL DEFAULT 0,
  `smp_maternity_not_begin_sunday_bool` tinyint(1) NOT NULL DEFAULT 0,
  `ssp_user_override_average_earnings_bool` tinyint(1) NOT NULL DEFAULT 0,
  `spp_leave_is_adoption_bool` tinyint(1) NOT NULL DEFAULT 0,
  `spp_stillbirth_bool` tinyint(1) NOT NULL DEFAULT 0,
  `smp_notify_leave_start_date` date,
  `smp_stop_date` date,
  `smp_weeks_paid_at_max_rate` smallint,
  `smp_last_payment_date` date,
  `sxp_historical_weeks_paid` smallint,
  `sxp_historical_kit_days_taken` smallint,
  `smp_current_kit_days_taken` smallint,
  `sxp_historical_end_last_payment_date` date,
  `sxp_historical_average_earnings_used_amt` decimal(20,5),
  `smp_current_weeks_paid` smallint,
  `ssp_waiting_days_served` smallint,
  `ssp_amount_paid_this_employment` decimal(20,5),
  `ssp_bf220_date` date,
  `ssp_last_day_entitlement_date` date,
  `ssp_amount_paid_previous_employment` decimal(20,5),
  `ssp_starting_date_of_first_pattern` date,
  `ssp_end_last_piw_date` date,
  `ssp_historical_waiting_days_served` smallint,
  `ssp_historical_amount_paid_this_employment` decimal(20,5),
  `ssp_historical_end_last_piw_date` date,
  `ssp_three_year_maximum_date` date,
  `ssp_start_last_piw_date` date,
  `sap_current_weeks_paid` smallint,
  `spp_current_weeks_paid` smallint,
  `spp_baby_born_date` date,
  `spp_baby_due_date` date,
  `spp_last_payment_date` date,
  `sap_last_payment_date` date,
  `sxp_historical_leave_type` smallint,
  `bank_account_name` varchar(42),
  `sort_code` varchar(257),
  `bank_account_number` varchar(257),
  `bank_name` varchar(42),
  `building_society_roll_number` varchar(36),
  `bacs_reference_number` varchar(257),
  `bacs_bank_address_line1` varchar(42),
  `bacs_bank_address_line2` varchar(42),
  `bacs_bank_address_line3` varchar(42),
  `bacs_bank_address_line4` varchar(42),
  `is_last_cheque_holiday_pay_bool` tinyint(1) NOT NULL DEFAULT 0,
  `uk_country` varchar(35),
  `payroll_identifier` varchar(35),
  `old_payroll_identifier` varchar(35),
  `passport_number` varchar(257),
  `is_irregular_employment_bool` tinyint(1) NOT NULL DEFAULT 0,
  `starting_declaration` smallint,
  `is_eea_comm_citizen_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_epm6_bool` tinyint(1) NOT NULL DEFAULT 0,
  `hours_worked` smallint,
  `is_seconded_indicator_bool` tinyint(1) NOT NULL DEFAULT 0,
  `seconded_stay_period` smallint,
  `uk_country_choice` smallint,
  `starter_info_submitted_date` date,
  `leaver_info_submitted_date` date,
  `should_irregular_employment_send_bool` tinyint(1) NOT NULL DEFAULT 0,
  `roe_recall_date` date,
  `roe_recall_code` smallint NOT NULL DEFAULT 0,
  `roe_contact_firstname` varchar(32),
  `roe_contact_lastname` varchar(32),
  `roe_contact_phone_num` varchar(16),
  `roe_contact_phone_extension` varchar(8),
  `roe_comments` varchar(512),
  `roe_communication_language` smallint DEFAULT 0,
  `shpp_partner_nino` varchar(9),
  `shpp_partner_forename1` varchar(35),
  `shpp_partner_forename2` varchar(35),
  `shpp_partner_surname` varchar(35),
  `shpp_partner_initials` varchar(5),
  `shpp_weeks_agreed` smallint,
  `sap_weeks_paid_at_max_rate` smallint,
  `sick_accrued_ytd` decimal(12,0),
  `sick_carry_over_limit` decimal(12,0),
  `self_setup_status` smallint NOT NULL DEFAULT 0,
  KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_employee_payroll_item`
--

DROP TABLE IF EXISTS `es_employee_payroll_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_employee_payroll_item` (
  `employee_abm_id` varchar(17) NOT NULL,
  `position` int NOT NULL,
  `payroll_item_id` int,
  `default_rate_amt` decimal(20,5),
  `default_rate_pct` decimal(20,5),
  `default_rate_qnty` decimal(20,5),
  `limit_amt` decimal(20,5),
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `company_id` int NOT NULL,
  `id_number` int,
  `from_date` date,
  `to_date` date,
  `last_pay_date` date,
  `amount_paid_to_date` decimal(20,5),
  `amount_to_be_paid` decimal(20,5),
  `stop_date` date,
  `has_been_paid` smallint NOT NULL DEFAULT 0,
  KEY (`employee_abm_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_employee_payroll_vacation_pay_items`
--

DROP TABLE IF EXISTS `es_employee_payroll_vacation_pay_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_employee_payroll_vacation_pay_items` (
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company_id` int,
  `abm_id` varchar(17) NOT NULL DEFAULT '',
  `employee_id` int NOT NULL DEFAULT 0,
  `payroll_item_id` int NOT NULL DEFAULT 0,
  KEY (`employee_id`,`payroll_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_employee_sxp_event`
--

DROP TABLE IF EXISTS `es_employee_sxp_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_employee_sxp_event` (
  `id` varchar(17) NOT NULL DEFAULT '',
  `employee_id` int NOT NULL DEFAULT 0,
  `type` varchar(50) NOT NULL DEFAULT '',
  `start_date` date,
  `end_date` date,
  `stop_date` date,
  `num_days_paid` int NOT NULL DEFAULT 0,
  `average_earnings_override_amount` decimal(20,5),
  `num_overlapping_paychecks` int NOT NULL DEFAULT 0,
  `has_ended` tinyint(1) NOT NULL DEFAULT 0,
  `prev_info_first_day_paid` date,
  `prev_info_last_day_paid` date,
  `prev_info_has_part_week_payments` tinyint(1) NOT NULL DEFAULT 0,
  `prev_info_num_kit_days_taken` int NOT NULL DEFAULT 0,
  `aspp_expected_week_of_childbirth` date,
  `aspp_match_notification_date` date,
  `aspp_child_arrival_date` date,
  `aspp_partner_sxp_start_date` date,
  `aspp_partner_sxp_end_date` date,
  `aspp_partner_sxp_stop_reason` int NOT NULL DEFAULT 0,
  `aspp_partner_return_to_work_date` date,
  `aspp_partner_death_date` date,
  `aspp_partner_nino` varchar(9),
  `aspp_partner_forename1` varchar(35),
  `aspp_partner_forename2` varchar(35),
  `aspp_partner_initials` varchar(5),
  `aspp_partner_surname` varchar(35),
  KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_employee_sxp_event_working_day`
--

DROP TABLE IF EXISTS `es_employee_sxp_event_working_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_employee_sxp_event_working_day` (
  `id` varchar(17) NOT NULL DEFAULT '',
  `sxp_event_id` varchar(17) NOT NULL DEFAULT '',
  `the_date` date NOT NULL DEFAULT (CURRENT_DATE),
  `type` varchar(50),
  KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_employee_tax`
--

DROP TABLE IF EXISTS `es_employee_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_employee_tax` (
  `employee_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `fit_filing_status_type` smallint,
  `fit_allowances` smallint,
  `subject_to_fit_bool` tinyint(1) NOT NULL,
  `subject_to_ssec_bool` tinyint(1) NOT NULL,
  `subject_to_mcare_bool` tinyint(1) NOT NULL,
  `subject_to_futa_bool` tinyint(1) NOT NULL,
  `subject_to_aeic_bool` tinyint(1) NOT NULL,
  `enforce_standard_taxation_bool` tinyint(1) NOT NULL,
  `state_worked_type` smallint,
  `state_lived_type` smallint,
  `sit_filing_status_type` smallint,
  `sit_allowances` smallint,
  `state_tax_table_version` int,
  `subject_to_sui_bool` tinyint(1) NOT NULL,
  `subject_to_sdi_bool` tinyint(1) NOT NULL,
  `has_pension_plan_bool` tinyint(1) NOT NULL,
  `fit_extra_withholding_amt` decimal(20,5),
  `sit_extra_withholding_amt` decimal(20,5),
  `state_misc1` varchar(56),
  `state_misc2` varchar(56),
  `state_misc3` varchar(56),
  `employee_abm_id` varchar(17),
  `num_other_tax` int,
  `company_id` int,
  `province_lived_type` smallint,
  `province_worked_type` smallint NOT NULL DEFAULT 0,
  `td1_claim_amt` decimal(20,5),
  `quebec_tax_claim_amt` decimal(20,5),
  `ei_employer_factor` decimal(20,5),
  `annual_hd_zone_deduction_amt` decimal(20,5),
  `number_of_dependents` smallint,
  `is_subject_to_ei_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_subject_to_cpp_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_subject_to_quebec_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_subject_to_qpp_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_subject_to_qpip_bool` tinyint(1) NOT NULL DEFAULT 0,
  `quebec_additional_tax_amt` decimal(20,5),
  `is_subject_to_qhsf_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_subject_to_cnt_bool` tinyint(1) NOT NULL DEFAULT 0,
  `employee_tax_code` varchar(10),
  `employee_national_insurance_code` smallint NOT NULL DEFAULT 0,
  `tax_code_date` date,
  `national_insurance_code_date` date,
  `is_company_director_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_subject_to_collection_student_loans_bool` tinyint(1) NOT NULL DEFAULT 0,
  `qualifies_for_working_family_tax_credit_bool` tinyint(1) NOT NULL DEFAULT 0,
  `qualifies_for_Scottish_variable_rate_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_NI_code_changed_bool` tinyint(1) NOT NULL DEFAULT 0,
  `scheme_contracted_out_number` varchar(10),
  `is_subject_to_qhc_bool` tinyint(1) NOT NULL DEFAULT 1,
  `plan_Type_For_Student_Loan` smallint NOT NULL DEFAULT 0,
  `tax_regime_country` smallint NOT NULL DEFAULT 0,
  `is_subject_to_collection_postgraduate_loan_bool` tinyint(1) NOT NULL DEFAULT 0,
  `fed_deduction_amt` decimal(20,5),
  `fed_dependent_amt` decimal(20,5),
  `fed_other_income_amt` decimal(20,5),
  `fed_w4_employee_pref` smallint NOT NULL DEFAULT 1,
  `fed_multiple_job_bool` tinyint(1) NOT NULL DEFAULT 0,
  KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_employee_tax_other`
--

DROP TABLE IF EXISTS `es_employee_tax_other`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_employee_tax_other` (
  `employee_abm_id` varchar(17) NOT NULL,
  `position` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `payroll_item_id` int,
  `tax_law` int,
  `tax_table_version` int,
  `w2_name` varchar(11),
  `local_misc1` varchar(56),
  `local_misc2` varchar(56),
  `local_misc3` varchar(56),
  `company_id` int,
  KEY (`employee_abm_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_employer_ser_hist`
--

DROP TABLE IF EXISTS `es_employer_ser_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_employer_ser_hist` (
  `employer_ser_hist_id` int NOT NULL AUTO_INCREMENT,
  `tax_year` int NOT NULL DEFAULT 0,
  `ser_status` smallint NOT NULL DEFAULT 0,
  `employer_ser_hist_abm_id` varchar(17) NOT NULL DEFAULT '',
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company_id` int,
  PRIMARY KEY (`employer_ser_hist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_enrollment`
--

DROP TABLE IF EXISTS `es_enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_enrollment` (
  `enrollment_id` int NOT NULL AUTO_INCREMENT,
  `enrollment_group_id` varchar(256),
  `submitter_id` varchar(256),
  `bank_account_id` int,
  `enrollment_status` varchar(256),
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `enrollment_abm_id` varchar(17) NOT NULL,
  `company_id` int,
  PRIMARY KEY (`enrollment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_form`
--

DROP TABLE IF EXISTS `es_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_form` (
  `form_id` int NOT NULL AUTO_INCREMENT,
  `form_template_id` int NOT NULL,
  `bitfields` int NOT NULL DEFAULT 0,
  `efp_server_id` int,
  `period_begin_date` date,
  `period_end_date` date,
  `period_due_date` date,
  `submit_method` varchar(32),
  `description` varchar(256),
  `tax_file_name` varchar(512),
  `pdf_file_name` varchar(512),
  `form_abm_id` varchar(17) NOT NULL,
  `efp_filing_status` varchar(32),
  `confirmation_code` varchar(17),
  `other` varchar(1024),
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `company_id` int,
  `agency_ack_num` varchar(255),
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_form_filing_status_detail`
--

DROP TABLE IF EXISTS `es_form_filing_status_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_form_filing_status_detail` (
  `form_filing_status_detail_id` int NOT NULL AUTO_INCREMENT,
  `form_filing_status_hdr_id` int NOT NULL,
  `attr_id` varchar(200) NOT NULL,
  `attr_value` varchar(2000),
  `form_filing_status_detail_abm_id` varchar(17) NOT NULL,
  `company_id` int,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  PRIMARY KEY (`form_filing_status_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_form_filing_status_hdr`
--

DROP TABLE IF EXISTS `es_form_filing_status_hdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_form_filing_status_hdr` (
  `form_filing_status_hdr_id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(5) NOT NULL,
  `employee_id` int,
  `year` int NOT NULL,
  `form_id` varchar(100) NOT NULL,
  `form_owner` varchar(5) NOT NULL,
  `form_period_begin` date,
  `form_period_end` date,
  `form_filing_status_hdr_abm_id` varchar(17) NOT NULL,
  `company_id` int,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  PRIMARY KEY (`form_filing_status_hdr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_form_template`
--

DROP TABLE IF EXISTS `es_form_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_form_template` (
  `form_template_id` int NOT NULL AUTO_INCREMENT,
  `start_effective_date` date,
  `end_effective_date` date,
  `form_template_rules_id` varchar(32) NOT NULL,
  `submit_method_rules_id` varchar(32),
  `frequency_rules_id` varchar(32),
  `bitfields` int NOT NULL DEFAULT 0,
  `other` varchar(1024),
  `form_template_abm_id` varchar(17) NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `company_id` int,
  PRIMARY KEY (`form_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_form_template_group`
--

DROP TABLE IF EXISTS `es_form_template_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_form_template_group` (
  `form_template_group_id` int NOT NULL AUTO_INCREMENT,
  `form_template_id` int,
  `start_effective_date` date,
  `end_effective_date` date,
  `form_template_group_rules_id` varchar(32) NOT NULL,
  `bitfields` int NOT NULL DEFAULT 0,
  `other` varchar(1024),
  `form_template_group_abm_id` varchar(17) NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `company_id` int,
  PRIMARY KEY (`form_template_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_forms_user`
--

DROP TABLE IF EXISTS `es_forms_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_forms_user` (
  `user_id` smallint NOT NULL,
  `form_ident` varchar(256) NOT NULL,
  `show_form` smallint NOT NULL,
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  KEY (`user_id`,`form_ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_frequency_effective_date`
--

DROP TABLE IF EXISTS `es_frequency_effective_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_frequency_effective_date` (
  `frequency_effective_date_id` int NOT NULL AUTO_INCREMENT,
  `frequency_type` smallint,
  `effective_date` date,
  `rules_frequency_id` varchar(32),
  `qb_record_number_id` int,
  `bitfields` int NOT NULL DEFAULT 0,
  `other` varchar(1024),
  `frequency_effective_date_abm_id` varchar(17) NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `company_id` int,
  PRIMARY KEY (`frequency_effective_date_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_liability_adjust_header`
--

DROP TABLE IF EXISTS `es_liability_adjust_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_liability_adjust_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `employee_id` int,
  `abm_id` varchar(17) NOT NULL,
  `assisted_service_id` int,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `transaction_date` date,
  `payroll_date` date,
  `last_edit_by` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `trans_num` int,
  `transaction_view_type` smallint,
  `is_to_be_printed_bool` tinyint(1) NOT NULL,
  `is_voided_bool` tinyint(1) NOT NULL,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_on_assisted_service_bool` tinyint(1) NOT NULL,
  `is_ever_sent_bool` tinyint(1) NOT NULL,
  `is_condensed_bool` tinyint(1) NOT NULL,
  `online_state_type` smallint,
  `affects_accounts_type` smallint,
  `pay_period_begin_date` date,
  `pay_period_end_date` date,
  `tax_table_version` int,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `sticky_note` varchar(4000),
  `does_employer_qualify_for_SER_bool` tinyint(1) NOT NULL DEFAULT 0,
  `ni_code` smallint,
  `ni_earnings` decimal(20,5),
  `ni_LEL_wage_base` decimal(20,5),
  `ni_LEL_contribution` decimal(20,5),
  `ni_UAP_Amount` decimal(20,5),
  `is_director_annualization_bool` tinyint(1) NOT NULL DEFAULT 0,
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_liability_adjust_lineitem`
--

DROP TABLE IF EXISTS `es_liability_adjust_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_liability_adjust_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `employee_id` int,
  `next_target_id` int,
  `payroll_item_id` int,
  `workers_comp_code_id` int,
  `sibling_account_id` int,
  `class_id` int,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `last_edit_by` int,
  `reimbursed_type` smallint,
  `company_paid_attrib_type` smallint,
  `is_no_post_bool` tinyint(1) NOT NULL,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_has_payitem_bool` tinyint(1) NOT NULL,
  `is_overridden_bool` tinyint(1) NOT NULL,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `cleared_type` smallint,
  `trans_num` int,
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `payroll_date` date,
  `amount_amt` decimal(20,5),
  `wage_base_amt` decimal(20,5),
  `income_subject_to_tax_amt` decimal(20,5),
  `tips_wage_base_amt` decimal(20,5),
  `hours_worked_time` decimal(12,0),
  `reconcile_date` date,
  `calculated_amt` decimal(20,5),
  `rate_pct` decimal(20,5),
  `rate_amt` decimal(20,5),
  `workers_comp_code_rate_amt` decimal(20,5),
  `experience_mod_rate_pct` decimal(20,5),
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_QB_calculated_bool` tinyint(1) NOT NULL DEFAULT 0,
  `txn_line_order` int,
  `ni_code` smallint,
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_liability_payment_header`
--

DROP TABLE IF EXISTS `es_liability_payment_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_liability_payment_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `vendor_id` int,
  `abm_id` varchar(17) NOT NULL,
  `contact_id` varchar(17),
  `payroll_date` date,
  `other_id` int,
  `assisted_service_id` int,
  `efp_server_id` int,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `last_edit_by` int,
  `num_item_targets` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `trans_num` int,
  `transaction_view_type` smallint,
  `transaction_name_type` smallint,
  `is_to_be_printed_bool` tinyint(1) NOT NULL,
  `is_voided_bool` tinyint(1) NOT NULL,
  `is_on_assisted_service_bool` tinyint(1) NOT NULL,
  `is_ever_sent_bool` tinyint(1) NOT NULL,
  `online_state_type` smallint,
  `affects_accounts_type` smallint,
  `efp_send_status_type` smallint,
  `efp_ever_failed_bool` tinyint(1) NOT NULL,
  `efp_taxtype` int,
  `efp_tax_reason` int,
  `efp_amount_override_bool` tinyint(1) NOT NULL,
  `efp_tax_type_override_bool` tinyint(1) NOT NULL,
  `efp_duplicate_override_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `efp_state_tax_form_link` int,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `payment_template_id` int,
  `efp_payment_status` varchar(32),
  `efp_payment_reason_code` varchar(32),
  `is_efe_payment_bool` tinyint(1) NOT NULL DEFAULT 0,
  `accrual_period_begin_date` date,
  `settlement_date` date,
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `confirmation_code` varchar(16),
  `period_description` varchar(100),
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `sticky_note` varchar(4000),
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_liability_payment_lineitem`
--

DROP TABLE IF EXISTS `es_liability_payment_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_liability_payment_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `customer_id` int,
  `vendor_id` int,
  `other_id` int,
  `next_target_id` int,
  `payroll_item_id` int,
  `class_id` int,
  `sibling_account_id` int,
  `contact_id` varchar(17),
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `last_edit_by` int,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_has_payitem_bool` tinyint(1) NOT NULL,
  `is_purchase_bool` tinyint(1) NOT NULL,
  `is_memorized_transaction_bool` tinyint(1) NOT NULL,
  `is_paid_bool` tinyint(1) NOT NULL,
  `is_deposited_bool` tinyint(1) NOT NULL,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `payroll_date` date,
  `amount_amt` decimal(20,5),
  `cleared_type` smallint,
  `reimbursed_type` smallint,
  `efp_is_penalty_bool` tinyint(1) NOT NULL,
  `efp_is_interest_bool` tinyint(1) NOT NULL,
  `reconcile_date` date,
  `open_balance_amt` decimal(20,5),
  `latest_link_date` date,
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `net_open_balance_amt` decimal(20,5),
  `tax_open_balance_amt` decimal(20,5),
  `gross_open_balance_amt` decimal(20,5),
  `employee_id` int,
  `emp_Pay_Item_Id_Num` int,
  `txn_line_order` int,
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_pay_history`
--

DROP TABLE IF EXISTS `es_pay_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_pay_history` (
  `pay_history_id` int NOT NULL AUTO_INCREMENT,
  `payroll_history_type_id` smallint,
  `confirmation_code` varchar(17),
  `status` varchar(17),
  `status_message` varchar(255),
  `server_timestamp` datetime,
  `submit_method` varchar(32),
  `qb_record_number_id` int,
  `rules_ident` varchar(32),
  `error_code` varchar(200),
  `error_message` varchar(2048),
  `error_help_text` varchar(2048),
  `bitfields` int NOT NULL DEFAULT 0,
  `other` varchar(1024),
  `pay_history_abm_id` varchar(17) NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `company_id` int,
  `agency_ack_num` varchar(255),
  PRIMARY KEY (`pay_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_pay_schedule`
--

DROP TABLE IF EXISTS `es_pay_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_pay_schedule` (
  `pay_schedule_id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `frequency_type` smallint,
  `next_logical_pay_date` date,
  `pay_period_end_date` date,
  `day1` smallint,
  `day2` smallint,
  `is_active_bool` tinyint(1) NOT NULL,
  `pay_schedule_abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `company_id` int,
  `is_hidden_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_delete_pending_bool` tinyint(1) NOT NULL DEFAULT 0,
  `modtimestamp_tms` int,
  `timestamp_tms` int,
  KEY (`pay_schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_paycheck_header`
--

DROP TABLE IF EXISTS `es_paycheck_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_paycheck_header` (
  `transaction_id` int NOT NULL,
  `target_id` int NOT NULL,
  `transaction_date` date,
  `employee_id` int,
  `abm_id` varchar(17) NOT NULL,
  `contact_id` varchar(17),
  `payroll_date` date,
  `assisted_service_id` int,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `last_edit_by` int,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `trans_num` int,
  `transaction_view_type` smallint,
  `is_to_be_printed_bool` tinyint(1) NOT NULL,
  `is_voided_bool` tinyint(1) NOT NULL,
  `do_not_accrue_time_bool` tinyint(1) NOT NULL,
  `is_on_assisted_service_bool` tinyint(1) NOT NULL,
  `is_ever_sent_bool` tinyint(1) NOT NULL,
  `online_state_type` smallint,
  `tax_table_version` int,
  `vacation_accrued_time` decimal(12,0),
  `vacation_available_time` decimal(12,0),
  `sick_accrued_time` decimal(12,0),
  `sick_available_time` decimal(12,0),
  `pay_period_begin_date` date,
  `pay_period_end_date` date,
  `is_always_track_bool` tinyint(1) NOT NULL,
  `email` varchar(1024),
  `email_date` date,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `company_id` int,
  `memo` text,
  `pay_schedule_id` int,
  `last_auditable_action` smallint NOT NULL DEFAULT 0,
  `is_sdk_app_bool` tinyint(1) NOT NULL DEFAULT 0,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `is_no_post_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_gross_up_mode_bool` tinyint(1) NOT NULL DEFAULT 0,
  `has_attachments_bool` tinyint(1) NOT NULL DEFAULT 0,
  `external_ident` varchar(65),
  `sticky_note` varchar(4000),
  `is_new_bonus_calculation` smallint NOT NULL DEFAULT 0,
  `estimated_annual_earnings` int,
  `vacation_accrued_money` decimal(20,5),
  `is_director_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_holiday_pay_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_SSP_entitled_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_SXP_paid_on_leave_bool` tinyint(1) NOT NULL DEFAULT 0,
  `pay_method` smallint,
  `is_using_NIC_annual_method` tinyint(1) NOT NULL DEFAULT 0,
  `tax_code` varchar(10),
  `ni_code` smallint,
  `tax_code_date` date,
  `ni_code_date` date,
  `tax_period` smallint,
  `ni_earnings` decimal(20,5),
  `gross_pay` decimal(20,5),
  `gross_pay_to_date` decimal(20,5),
  `pay_adjust_to_date` decimal(20,5),
  `tax_due_to_date` decimal(20,5),
  `regulatory_limit` decimal(20,5),
  `tax_deducted` decimal(20,5),
  `scheme_contracted_out_number` varchar(10),
  `ni_LEL_wage_base` decimal(20,5),
  `ni_LEL_contribution` decimal(20,5),
  `ni_UAP_Amount` decimal(20,5),
  `number_holiday_periods_in_52` int,
  `SSP_waiting_days` smallint,
  `SSP_weeks_paid` decimal(20,5),
  `SSP_start_last_PIW_date` date,
  `SSP_end_last_PIW_date` date,
  `SSP_3Years_SSP_control_date` date,
  `SMP_current_weeks_paid` smallint,
  `SMP_current_kit_days_taken` smallint,
  `SMP_weeks_paid_at_max_rate` smallint,
  `SAP_current_weeks_paid` smallint,
  `SPP_current_weeks_paid` smallint,
  `is_SXP_componsation_separated_bool` tinyint(1) NOT NULL DEFAULT 0,
  `number_holiday_pay_periods` int,
  `calculation_date` date,
  `ASPP_current_days_paid` smallint,
  `rti_submission_date` date,
  `bacs_hash_salt` varchar(5),
  `pay_period` smallint,
  `ni_refund_amount_amt` decimal(20,5),
  `paycheck_order_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `transaction_sendforms_id` int,
  `SAP_weeks_paid_at_max_rate` smallint,
  `sick_used_time_current_paycheck` decimal(12,0),
  KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_paycheck_lineitem`
--

DROP TABLE IF EXISTS `es_paycheck_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_paycheck_lineitem` (
  `target_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `account_id` int,
  `transaction_date` date,
  `transaction_view_type` smallint,
  `item_id` int,
  `customer_id` int,
  `employee_id` int,
  `next_target_id` int,
  `payroll_item_id` int,
  `workers_comp_code_id` int,
  `direct_deposit_id` varchar(17),
  `class_id` int,
  `sibling_account_id` int,
  `contact_id` varchar(17),
  `company_id` int,
  `write_count` int,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `last_edit_by` int,
  `is_source_bool` tinyint(1) NOT NULL,
  `is_split_bool` tinyint(1) NOT NULL,
  `is_prorated_bool` tinyint(1) NOT NULL,
  `is_has_payitem_bool` tinyint(1) NOT NULL,
  `is_purchase_bool` tinyint(1) NOT NULL,
  `doc_num` varchar(21),
  `doc_num_numericpart` varchar(21),
  `cleared_type` smallint,
  `reimbursed_type` smallint,
  `transaction_name_type` smallint,
  `lineitem_name_type` smallint,
  `payroll_date` date,
  `rate_pct` decimal(20,5),
  `rate_amt` decimal(20,5),
  `rate_qnty` decimal(20,5),
  `amount_amt` decimal(20,5),
  `amount_qnty` decimal(20,5),
  `calculated_amt` decimal(20,5),
  `calculated_qnty` decimal(20,5),
  `is_overridden_bool` tinyint(1) NOT NULL,
  `is_groupend_row_bool` tinyint(1) NOT NULL,
  `year_to_date_amt` decimal(20,5),
  `year_to_date_qnty` decimal(20,5),
  `company_paid_attrib_type` smallint,
  `wage_base_amt` decimal(20,5),
  `income_subject_to_tax_amt` decimal(20,5),
  `tips_wage_base_amt` decimal(20,5),
  `hours_worked_time` decimal(12,0),
  `quantity_qnty` decimal(20,5),
  `quantity_amt` decimal(20,5),
  `workers_comp_code_rate_amt` decimal(20,5),
  `experience_mod_rate_pct` decimal(20,5),
  `reconcile_date` date,
  `attributes_id` int,
  `ipp_state_type` smallint DEFAULT 0,
  `abm_id` varchar(17) NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `memo` text,
  `currency_id` int,
  `exchange_rate` float NOT NULL DEFAULT 1.0,
  `foreign_amount_amt` decimal(20,5),
  `is_gain_loss_target_bool` tinyint(1) NOT NULL DEFAULT 0,
  `foreign_amount_qnty` decimal(20,5),
  `is_no_post_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_suspense_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_virtual_pay_type_bool` tinyint(1) NOT NULL DEFAULT 0,
  `previous_bonus_amount` decimal(20,5),
  `is_QB_calculated_bool` tinyint(1) NOT NULL DEFAULT 0,
  `SxP_user_action` smallint,
  `emp_Pay_Item_Id_Num` int,
  `SSP_last_pattern_fraction` int,
  `SSP_days_paid_with_last_pattern` int,
  `SSP_amount_paid_with_last_pattern` decimal(20,5),
  `normal_deduction_rate_carry_forward` decimal(20,5),
  `protected_earnings_rate_carry_forward` decimal(20,5),
  `txn_line_order` int,
  `reason_lower_child_maintenance_amount` smallint,
  `ni_code` smallint,
  `shpp_notes` varchar(100),
  KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_payment_template`
--

DROP TABLE IF EXISTS `es_payment_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_payment_template` (
  `payment_template_id` int NOT NULL,
  `rules_payment_template_id` varchar(32),
  `rules_frequency_id` varchar(32),
  `rules_submit_method_id` varchar(32),
  `name` varchar(51),
  `vendor_id` int,
  `agency_account_number` varchar(21),
  `payment_template_type` smallint,
  `user_frequency_type` smallint,
  `user_schedule_num` int,
  `user_schedule_date` date,
  `is_hidden_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_delete_pending_bool` tinyint(1) NOT NULL DEFAULT 0,
  `modtimestamp_tms` int,
  `timestamp_tms` int,
  `start_effective_date` date,
  `end_effective_date` date,
  `bitfields` int NOT NULL DEFAULT 0,
  `other` varchar(1024),
  `payment_template_abm_id` varchar(17) NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `company_id` int,
  `threshold_amount` decimal(20,5),
  KEY (`payment_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_payroll_item`
--

DROP TABLE IF EXISTS `es_payroll_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_payroll_item` (
  `payroll_item_id` int NOT NULL,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `name` varchar(32),
  `is_hidden_bool` tinyint(1) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL,
  `is_delete_pending_bool` tinyint(1) NOT NULL,
  `type` smallint,
  `non_annual_limit_bool` tinyint(1) NOT NULL,
  `expense_account_id` int,
  `liability_account_id` int,
  `agency_id` int,
  `tax_tracking_type` smallint,
  `adjust_gross_bool` tinyint(1) NOT NULL,
  `special` smallint,
  `is_employee_rec_bool` tinyint(1) NOT NULL,
  `allocate_cost_bool` tinyint(1) NOT NULL,
  `assisted_service_id` int,
  `is_to_send_bool` tinyint(1) NOT NULL,
  `based_on_quantity_bool` tinyint(1) NOT NULL,
  `db_has_tax_data_bool` tinyint(1) NOT NULL,
  `quantity_based_on_hours_type` smallint,
  `default_amt` decimal(20,5),
  `default_rate_pct` decimal(20,5),
  `default_rate_qnty` decimal(20,5),
  `limit_amt` decimal(20,5),
  `agency_num` varchar(21),
  `overtime_multiplier_qnty` decimal(20,5),
  `detail_type` int,
  `payment_schedule_type` smallint,
  `payment_schedule_num` int,
  `payment_schedule_date` date,
  `db_modified_tms` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `payroll_item_abm_id` varchar(17) NOT NULL,
  `company_id` int NOT NULL,
  `payment_template_id` int,
  `affect_federal_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `affect_CPP_bool` tinyint(1) NOT NULL DEFAULT 0,
  `affect_UI_bool` tinyint(1) NOT NULL DEFAULT 0,
  `affect_Quebec_tax_bool` tinyint(1) NOT NULL DEFAULT 0,
  `affect_QPP_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_insurable_earnings_tracking_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_insurable_hours_tracking_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_reporting_period_tracking_bool` tinyint(1) NOT NULL DEFAULT 0,
  `affect_QPIP_bool` tinyint(1) NOT NULL DEFAULT 0,
  `affect_QHSF_bool` tinyint(1) NOT NULL DEFAULT 0,
  `affect_CNT_bool` tinyint(1) NOT NULL DEFAULT 0,
  `affect_NIC_bool` tinyint(1) NOT NULL DEFAULT 0,
  `affect_attachment_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_pension_item_bool` tinyint(1) NOT NULL DEFAULT 0,
  `attachment_type` smallint NOT NULL DEFAULT 0,
  `limit_type` smallint NOT NULL DEFAULT 0,
  `is_qualified_pension_scheme_bool` tinyint(1) NOT NULL DEFAULT 0,
  `based_on_qualifying_earnings_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_qualifying_earnings_bool` tinyint(1) NOT NULL DEFAULT 0,
  KEY (`payroll_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_payroll_item_tax`
--

DROP TABLE IF EXISTS `es_payroll_item_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_payroll_item_tax` (
  `payroll_item_id` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `state` smallint,
  `tax_law` smallint,
  `futa_credit_bool` tinyint(1) NOT NULL,
  `db_has_tax_rate_hist_data_bool` tinyint(1) NOT NULL,
  `payroll_item_abm_id` varchar(17),
  `company_id` int,
  KEY (`payroll_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_payroll_item_tax_rate_hist`
--

DROP TABLE IF EXISTS `es_payroll_item_tax_rate_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_payroll_item_tax_rate_hist` (
  `payroll_item_id` int NOT NULL,
  `position` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `sunset_date` date,
  `tax_rate_pct` decimal(20,5),
  `company_id` int,
  KEY (`payroll_item_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_payroll_ytd`
--

DROP TABLE IF EXISTS `es_payroll_ytd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_payroll_ytd` (
  `payroll_ytd_id` int NOT NULL AUTO_INCREMENT,
  `ytd_type` varchar(16) NOT NULL,
  `employee_id` int,
  `payroll_item_id` int NOT NULL,
  `period_type` varchar(16) NOT NULL,
  `period_index` int,
  `period_begin_date` date NOT NULL,
  `period_end_date` date NOT NULL,
  `period_year` int NOT NULL,
  `tax_table_version` int,
  `income_subject_to_tax_amt` decimal(20,5) NOT NULL,
  `wage_base_amt` decimal(20,5) NOT NULL,
  `tips_wage_base_amt` decimal(20,5) NOT NULL,
  `amount_amt` decimal(20,5) NOT NULL,
  `payroll_ytd_abm_id` varchar(17) NOT NULL,
  `company_id` int,
  `db_created_tms` datetime NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  PRIMARY KEY (`payroll_ytd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_pensions_assessment_history`
--

DROP TABLE IF EXISTS `es_pensions_assessment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_pensions_assessment_history` (
  `pensions_assessment_history_id` int NOT NULL AUTO_INCREMENT,
  `pensions_assessment_history_abm_id` varchar(17) NOT NULL DEFAULT '',
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timestamp_tms` int,
  `modtimestamp_tms` int,
  `employee_id` int NOT NULL DEFAULT 0,
  `assessment_reason` smallint,
  `jobholder_status` smallint,
  `assessment_date` date,
  `deferral_date` date,
  `prp_start_date` date,
  `prp_end_date` date,
  `is_enrolled_bool` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `paycheque_ref_num` int,
  `qualifying_earnings_amount` decimal(20,5),
  PRIMARY KEY (`pensions_assessment_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_policy_overtime`
--

DROP TABLE IF EXISTS `es_policy_overtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_policy_overtime` (
  `policy_overtime_id` int NOT NULL AUTO_INCREMENT,
  `policy_name` varchar(51) NOT NULL,
  `policy_version` varchar(21) NOT NULL,
  `policy_xml` longtext NOT NULL DEFAULT '',
  `company_id` int NOT NULL DEFAULT 0,
  `policy_overtime_abm_id` varchar(17) NOT NULL,
  `modtimestamp_tms` int NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  PRIMARY KEY (`policy_overtime_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_roe_money_lineitem`
--

DROP TABLE IF EXISTS `es_roe_money_lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_roe_money_lineitem` (
  `roe_money_lineitem_id` int NOT NULL AUTO_INCREMENT,
  `roe_money_lineitem_abm_id` varchar(17) NOT NULL DEFAULT '',
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_modified_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `employee_id` int NOT NULL,
  `roe_money_type` smallint NOT NULL DEFAULT 0,
  `roe_money_code` smallint NOT NULL DEFAULT 0,
  `pay_start_date` date,
  `pay_end_date` date,
  `pay_amount_amt` decimal(20,5) NOT NULL DEFAULT 0,
  `pay_frequency_type` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`roe_money_lineitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_submission_history`
--

DROP TABLE IF EXISTS `es_submission_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_submission_history` (
  `submission_history_id` int NOT NULL AUTO_INCREMENT,
  `submission_date` datetime,
  `submission_history_abm_id` varchar(17) NOT NULL DEFAULT '',
  `submission_request` longtext,
  `submission_response` longtext,
  PRIMARY KEY (`submission_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_time_sheet`
--

DROP TABLE IF EXISTS `es_time_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_time_sheet` (
  `time_sheet_id` int NOT NULL AUTO_INCREMENT,
  `work_week_begin` date NOT NULL,
  `work_week_end` date NOT NULL,
  `policy_overtime_id` int,
  `time_sheet_format_id` int,
  `company_id` int NOT NULL DEFAULT 0,
  `time_sheet_abm_id` varchar(17) NOT NULL,
  `modtimestamp_tms` int NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  PRIMARY KEY (`time_sheet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_time_sheet_entry`
--

DROP TABLE IF EXISTS `es_time_sheet_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_time_sheet_entry` (
  `time_sheet_entry_id` int NOT NULL AUTO_INCREMENT,
  `clock_in_datetime` int,
  `clock_out_datetime` int,
  `clock_duration` int,
  `time_sheet_id` int NOT NULL,
  `time_sheet_entry_order` int NOT NULL,
  `company_id` int NOT NULL DEFAULT 0,
  `time_sheet_entry_abm_id` varchar(17) NOT NULL,
  `modtimestamp_tms` int NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  PRIMARY KEY (`time_sheet_entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_time_sheet_format`
--

DROP TABLE IF EXISTS `es_time_sheet_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `es_time_sheet_format` (
  `time_sheet_format_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(51) NOT NULL,
  `version` varchar(21) NOT NULL,
  `layout_xml` longtext NOT NULL DEFAULT '',
  `company_id` int NOT NULL DEFAULT 0,
  `time_sheet_format_abm_id` varchar(17) NOT NULL,
  `modtimestamp_tms` int NOT NULL,
  `db_modified_tms` datetime NOT NULL,
  `timestamp_tms` int NOT NULL,
  `db_created_tms` datetime NOT NULL,
  PRIMARY KEY (`time_sheet_format_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `indexing_task_record`
--

DROP TABLE IF EXISTS `indexing_task_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indexing_task_record` (
  `task_id` int NOT NULL AUTO_INCREMENT,
  `task_name` varchar(120) NOT NULL,
  `task_last_run` datetime NOT NULL,
  `indexing_task_user_id` int NOT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `indexing_task_user`
--

DROP TABLE IF EXISTS `indexing_task_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indexing_task_user` (
  `indexing_task_user_id` int NOT NULL AUTO_INCREMENT,
  `windows_user_id_hash` varchar(32) NOT NULL,
  `windows_machine_id_hash` varchar(32) NOT NULL,
  PRIMARY KEY (`indexing_task_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lm_channel_category`
--

DROP TABLE IF EXISTS `lm_channel_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lm_channel_category` (
  `channel_category_id` int NOT NULL,
  `channel_category_name` varchar(42) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `company_id` int NOT NULL DEFAULT 0,
  `db_created_tms` datetime,
  `db_modified_tms` datetime,
  KEY (`channel_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lm_field_info`
--

DROP TABLE IF EXISTS `lm_field_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lm_field_info` (
  `field_info_id` int NOT NULL,
  `field_value` varchar(254) NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `channel_category_id` int NOT NULL,
  `contact_id` varchar(17),
  `lead_id` int,
  `company_id` int NOT NULL DEFAULT 0,
  `db_created_tms` datetime,
  `db_modified_tms` datetime,
  `position` int NOT NULL DEFAULT -1,
  KEY (`field_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lm_lead`
--

DROP TABLE IF EXISTS `lm_lead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lm_lead` (
  `lead_id` int NOT NULL,
  `company_name` varchar(42),
  `status_id` int NOT NULL,
  `is_deleted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `lead_name` varchar(42) NOT NULL,
  `is_active_bool` tinyint(1) NOT NULL DEFAULT 1,
  `main_phone` varchar(22),
  `is_converted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `company_id` int NOT NULL DEFAULT 0,
  `db_created_tms` datetime,
  `db_modified_tms` datetime,
  `customer_id` int,
  `description` varchar(80),
  KEY (`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lm_notes`
--

DROP TABLE IF EXISTS `lm_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lm_notes` (
  `notes_id` int NOT NULL,
  `notes_value` text NOT NULL,
  `db_created_tms` datetime,
  `db_modified_tms` datetime,
  `is_deleted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `company_id` int NOT NULL DEFAULT 0,
  `alternate_id` int,
  KEY (`notes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lm_status`
--

DROP TABLE IF EXISTS `lm_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lm_status` (
  `status_id` int NOT NULL,
  `status` varchar(20) NOT NULL,
  `description` varchar(80),
  `is_deleted_bool` tinyint(1) NOT NULL DEFAULT 0,
  `company_id` int NOT NULL DEFAULT 0,
  `db_created_tms` datetime,
  `db_modified_tms` datetime,
  KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mv_search_data`
--

DROP TABLE IF EXISTS `mv_search_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mv_search_data` (
  `entity_type` smallint,
  `entity_id` int,
  `transaction_date` datetime,
  `amount_amt` decimal(20,5),
  `search_data` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patch_sql_audit_log`
--

DROP TABLE IF EXISTS `patch_sql_audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patch_sql_audit_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sync_user` varchar(128),
  `sync_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sync_pubs` varchar(128),
  `source_script_version` varchar(256),
  `target_script_version` varchar(256),
  `sql_text` longtext,
  `sql_code` int,
  `sql_state` varchar(5),
  `sql_message` varchar(4000),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patch_sql_source`
--

DROP TABLE IF EXISTS `patch_sql_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patch_sql_source` (
  `sync_user` varchar(128) NOT NULL,
  `target_script_version` varchar(256),
  `line` int NOT NULL AUTO_INCREMENT,
  `text` varchar(4000),
  KEY (`sync_user`,`line`),
  KEY (`line`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perf_performance_aggr_detail`
--

DROP TABLE IF EXISTS `perf_performance_aggr_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perf_performance_aggr_detail` (
  `perf_performance_aggr_detail_id` int NOT NULL AUTO_INCREMENT,
  `perf_performance_aggr_header_id` int NOT NULL,
  `bucket_num` int NOT NULL,
  `bucket_low` decimal(20,6),
  `bucket_high` decimal(20,6),
  `quantity` int,
  PRIMARY KEY (`perf_performance_aggr_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perf_performance_aggr_header`
--

DROP TABLE IF EXISTS `perf_performance_aggr_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perf_performance_aggr_header` (
  `perf_performance_aggr_header_id` int NOT NULL AUTO_INCREMENT,
  `metric_type` int NOT NULL,
  `event_name_id` int NOT NULL,
  `user_id` int NOT NULL,
  `machine_id` int NOT NULL,
  `qb_version_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date,
  `time_aggregated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`perf_performance_aggr_header_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perf_performance_counter_data`
--

DROP TABLE IF EXISTS `perf_performance_counter_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perf_performance_counter_data` (
  `performance_counter_data_id` int NOT NULL AUTO_INCREMENT,
  `event_name_id` int NOT NULL,
  `user_id` int NOT NULL,
  `machine_id` int NOT NULL,
  `qb_version_id` int NOT NULL,
  `event_time` datetime NOT NULL,
  `db_created_tms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`performance_counter_data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perf_performance_counter_event_name`
--

DROP TABLE IF EXISTS `perf_performance_counter_event_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perf_performance_counter_event_name` (
  `performance_counter_event_name_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(2000) NOT NULL,
  PRIMARY KEY (`performance_counter_event_name_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perf_performance_counter_metric`
--

DROP TABLE IF EXISTS `perf_performance_counter_metric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perf_performance_counter_metric` (
  `performance_counter_data_id` int NOT NULL,
  `metric_type` int NOT NULL,
  `metric_value` decimal(20,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `processing_instruction`
--

DROP TABLE IF EXISTS `processing_instruction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `processing_instruction` (
  `instruction_id` int NOT NULL AUTO_INCREMENT,
  `instruction_category_id` int NOT NULL,
  `instruction_name` varchar(255) NOT NULL,
  `instruction_body` longtext NOT NULL,
  PRIMARY KEY (`instruction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `processing_instruction_category`
--

DROP TABLE IF EXISTS `processing_instruction_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `processing_instruction_category` (
  `instruction_category_id` int NOT NULL AUTO_INCREMENT,
  `instruction_category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`instruction_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tq_global_qmt`
--

DROP TABLE IF EXISTS `tq_global_qmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tq_global_qmt` (
  `expiry_date` datetime NOT NULL,
  `global_qmt_id` bigint NOT NULL,
  KEY (`global_qmt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tq_map`
--

DROP TABLE IF EXISTS `tq_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tq_map` (
  `prefkey` varchar(50) NOT NULL,
  `prefvalue` varchar(1024) NOT NULL,
  `task_id` bigint NOT NULL,
  KEY (`prefkey`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tq_qmt_tracker`
--

DROP TABLE IF EXISTS `tq_qmt_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tq_qmt_tracker` (
  `qmt_id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) NOT NULL,
  `logged_date` datetime NOT NULL,
  PRIMARY KEY (`qmt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tq_task_execution`
--

DROP TABLE IF EXISTS `tq_task_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tq_task_execution` (
  `next_execution_date` datetime NOT NULL,
  `execution_status` char(2) NOT NULL,
  `error_details` varchar(1024),
  `pending_retries` smallint NOT NULL,
  `expiry_date` datetime NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `started_date` datetime,
  `completion_date` datetime,
  `task_id` bigint NOT NULL,
  `qmt_id` bigint,
  KEY (`pending_retries`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tq_task_queue`
--

DROP TABLE IF EXISTS `tq_task_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tq_task_queue` (
  `task_id` bigint NOT NULL AUTO_INCREMENT,
  `task_uuid` varchar(40) NOT NULL,
  `task_type` char(10) NOT NULL,
  `task_data` text NOT NULL,
  `task_owner_type` char(10) NOT NULL,
  `task_owner_value` varchar(30),
  `linked_entity_id` varchar(50),
  `linked_entity_type` char(10),
  `client_version` varchar(10) NOT NULL,
  `scheduled_date` datetime NOT NULL,
  `retry_count` smallint,
  `expiry_date` datetime NOT NULL,
  `db_creation_date` datetime NOT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-28  0:32:17
