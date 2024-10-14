SET TABLE_NAME = 'customer';
SET TABLE_SCHEMA = 'alx_book_store'

SET @useDb = CONCAT('USE ', @tableSchema);
PREPARE stmt FROM @useDb;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- Query to insert multiple record(s) in the specified table
INSERT INTO customer (customer_id, customer_name, email, address)
VALUES 
    (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.'),
    (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.'),
    (3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness Ave.'),
    (4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness Ave.');


