-- Prepare and execute the statement to use the specified database
SET @useDb = CONCAT('USE ', alx_book_store);
PREPARE stmt FROM @useDb;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- Query to get the column details of the specified table
SELECT 
    COLUMN_NAME AS 'Column Name',
    COLUMN_TYPE AS 'Data Type',
    IS_NULLABLE AS 'Nullable',
    COLUMN_DEFAULT AS 'Default Value',
    EXTRA AS 'Extra Info'
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_SCHEMA = alx_book_store AND 
    TABLE_NAME = books;