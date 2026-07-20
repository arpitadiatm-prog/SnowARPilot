USE DATABASE SNOWARPILOT_DB;
USE SCHEMA RAW;

-- Raw table created
CREATE OR REPLACE TABLE CUSTOMER_RAW
(
    RECORD_ID NUMBER AUTOINCREMENT,
    RAW_DATA VARIANT,
    LOAD_TS TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
);

--- Insert sample Raw JSON Data 
INSERT INTO CUSTOMER_RAW(RAW_DATA)
SELECT PARSE_JSON(
'
{
 "customer_id":101,
 "name":"John Smith",
 "country":"USA",
 "status":"ACTIVE",
 "orders":5
}
'
);

--- Insert sample Raw JSON Data 
INSERT INTO CUSTOMER_RAW(RAW_DATA)
SELECT PARSE_JSON(
'
{
 "customer_id":102,
 "name":"Mary Wilson",
 "country":"UK",
 "status":"ACTIVE",
 "orders":3
}
'
);
--- Insert sample Raw JSON Data  
INSERT INTO CUSTOMER_RAW(RAW_DATA)
SELECT PARSE_JSON(
'
{
 "customer_id":103,
 "name":"David Brown",
 "country":"USA",
 "status":"INACTIVE",
 "orders":8
}
'
);
