CREATE DATABASE food_sales_db;
USE food_sales_db;

CREATE TABLE food_sales (
    order_id INT,
    date DATE,
    item_name VARCHAR(100),
    item_type VARCHAR(50),
    item_price DECIMAL(10,2),
    quantity INT,
    transaction_amount DECIMAL(10,2),
    transaction_type VARCHAR(50),
    received_by VARCHAR(20),
    time_of_sale VARCHAR(20),
    month VARCHAR(10),
    year INT,
    month_year VARCHAR(20)
);


ALTER TABLE food_sales ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY;
SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/data_bersih.csv'
INTO TABLE food_sales
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_id, date, item_name, item_type, item_price, quantity, 
 transaction_amount, transaction_type, received_by, time_of_sale, 
 month, year, month_year);

-- Total Penjualan
SELECT 
    SUM(transaction_amount) AS total_sales
FROM food_sales;

-- Total Barang Terjual
SELECT 
    SUM(quantity) AS total_quantity
FROM food_sales;

-- Rata-rata harga item
SELECT 
    AVG(item_price) AS avg_price
FROM food_sales;

-- Jumlah Transaksi
SELECT 
    COUNT(DISTINCT order_id) AS total_transactions
FROM food_sales;

-- tren penjualan
SELECT 
    DATE_FORMAT(date, '%Y-%m') AS month, 
    SUM(transaction_amount) AS total_sales
FROM food_sales
GROUP BY DATE_FORMAT(date, '%Y-%m')
ORDER BY month;

-- penjualan berdasarkan jenis item
SELECT 
    item_type, 
    SUM(transaction_amount) AS total_sales
FROM food_sales
GROUP BY item_type
ORDER BY total_sales DESC;

-- top 10 produk terlaris
SELECT 
    item_name, 
    SUM(transaction_amount) AS total_sales
FROM food_sales
GROUP BY item_name
ORDER BY total_sales DESC
LIMIT 10;

-- distribusi jenis transaksi
SELECT 
    IFNULL(transaction_type, 'Unknown') AS transaction_type,
    COUNT(order_id) AS total_transactions,
    SUM(transaction_amount) AS total_sales
FROM food_sales
GROUP BY transaction_type;

-- penjualan berdasarkan waktu
SELECT 
    time_of_sale,
    SUM(transaction_amount) AS total_sales
FROM food_sales
GROUP BY time_of_sale
ORDER BY total_sales DESC;

-- performa kasir
SELECT 
    received_by,
    COUNT(order_id) AS total_transactions,
    SUM(transaction_amount) AS total_sales
FROM food_sales
GROUP BY received_by
ORDER BY total_sales DESC;

-- penjualan per Jenis Item dan Jenis Transaksi
SELECT 
    item_type,
    transaction_type,
    SUM(transaction_amount) AS total_sales
FROM food_sales
GROUP BY item_type, transaction_type
ORDER BY item_type;

-- penjualan per hari
SELECT 
    date,
    SUM(transaction_amount) AS total_sales
FROM food_sales
GROUP BY date
ORDER BY date;

-- top 3 item per kategori
WITH item_sales AS (
    SELECT 
        item_type,
        item_name,
        SUM(quantity) AS total_sold,
        ROW_NUMBER() OVER (
            PARTITION BY item_type 
            ORDER BY SUM(quantity) DESC
        ) AS item_rank
    FROM food_sales
    GROUP BY item_type, item_name
)
SELECT 
    item_type,
    item_name,
    total_sold,
    item_rank
FROM item_sales
WHERE item_rank <= 3;

SELECT *
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/query_food_sales.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
FROM food_sales;
