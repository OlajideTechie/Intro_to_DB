SET @dbName = 'alx_book_store';

-- Prepare the statement to use the database
SET @useDb = CONCAT('USE ', @dbName);

-- Execute the prepared statement to switch databases
PREPARE stmt FROM @useDb;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- list tables in alx_book_store databse
USE alx_book_store;
SHOW TABLES;