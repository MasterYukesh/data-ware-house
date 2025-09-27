/*
===========================================================================
  Create DDL in the Bronze Layer
  Purpose:
    - To Create DDL in the Bronze Layer to load data from the Sources.
    - We have 2 Sources namely CRM & ERP
    - Each Source has 3 tables.
============================================================================
*/

-- Source CRM

-- Customer Info Table DDL
CREATE TABLE bronze.crm_cust_info (
   `cst_id` int NOT NULL,
   `cst_key` varchar(10) DEFAULT NULL,
   `cst_firstname` varchar(20) DEFAULT NULL,
   `cst_lastname` varchar(20) DEFAULT NULL,
   `cst_marital_status` varchar(10) DEFAULT NULL,
   `cst_gndr` varchar(10) DEFAULT NULL,
   `cst_create_date` date DEFAULT NULL,
   PRIMARY KEY (`cst_id`)
 );

-- Product Info DDL

CREATE TABLE bronze.crm_prd_info(
   `prd_id` int NOT NULL,
   `prd_key` varchar(10) DEFAULT NULL,
   `prd_nm` varchar(10) DEFAULT NULL,
   `prd_cost` int DEFAULT NULL,
   `prd_line` varchar(10) DEFAULT NULL,
   `prd_start_dt` date DEFAULT NULL,
   `prd_end_dt` date DEFAULT NULL,
   PRIMARY KEY (`prd_id`)
 );


-- Sales Details DDL

CREATE TABLE bronze.crm_sales_details(
   `sls_ord_num` varchar(20) DEFAULT NULL,
   `sls_prd_key` varchar(20) DEFAULT NULL,
   `sls_cust_id` int DEFAULT NULL,
   `sls_order_dt` date DEFAULT NULL,
   `sls_ship_dt` date DEFAULT NULL,
   `sls_due_dt` date DEFAULT NULL,
   `sls_sales` int DEFAULT NULL,
   `sls_quantity` int DEFAULT NULL,
   `sls_price` int DEFAULT NULL
 );


-- Source ERP

-- CUST_AZ12

CREATE TABLE bronze.erp_cust_az12 (
   `cid` varchar(20) NOT NULL,
   `bdate` date DEFAULT NULL,
   `gen` varchar(10) DEFAULT NULL,
   PRIMARY KEY (`cid`)
 );

-- LOC_A01

CREATE TABLE bronze.erp_loc_a01 (
   `cid` varchar(20) NOT NULL,
   `cntry` varchar(20) DEFAULT NULL,
   PRIMARY KEY (`cid`)
 );


-- PX_CAT_G1V2

CREATE TABLE `erp_px_cat_g1v2` (
   `id` varchar(10) DEFAULT NULL,
   `cat` varchar(30) DEFAULT NULL,
   `subcat` varchar(30) DEFAULT NULL,
   `maintenance` varchar(10) DEFAULT NULL
 );


