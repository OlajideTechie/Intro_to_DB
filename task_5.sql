SET TABLE_NAME = 'customer';
SET TABLE_SCHEMA = 'alx_book_store'

SET @useDb = CONCAT('USE ', @tableSchema);
PREPARE stmt FROM @useDb;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- Query to insert record in the specified table
INSERT INTO customer(
   'customer_id', 
   'customer_name', 
   'email', 
   'address'
)
VALUE (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.')      