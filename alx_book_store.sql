-- Create database 'alx_book_store'
CREATE DATABASE alx_book_store;

-- Use the newly created database
USE alx_book_store;

-- Create a table named 'Authors'
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create a table named 'Books'
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
        ON DELETE CASCADE
);

-- Create a table named 'Customers'
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    address TEXT
);

-- Create a table named 'Orders'
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
	order_date DATE,
	FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
	ON DELETE CASCADE	
);

-- Create a table named 'Order Details'
CREATE TABLE Order_details (
	order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
	order_id INT,
	book_id INT,
	quantity DOUBLE,
	FOREIGN KEY (order_id )REFERENCES ORDERS(order _id )
	ON DELETE CASCADE,
	FOREIGN KEY (book_ id )REFERENCES BOOKS(book _id )
	ON DELETE CASCADE
	
);
