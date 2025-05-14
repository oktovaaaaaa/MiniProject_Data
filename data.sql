-- 1. Buat database (opsional)
CREATE DATABASE IF NOT EXISTS db_penjualan;
USE db_penjualan;

-- 2. Buat tabel penjualan
CREATE TABLE IF NOT EXISTS penjualan (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tanggal DATE,
    produk VARCHAR(100),
    jumlah_terjual INT,
    harga_satuan INT
);

-- 3. Insert data penjualan
INSERT INTO penjualan (tanggal, produk, jumlah_terjual, harga_satuan) VALUES
('2025-05-01', 'Es Teh', 20, 5000),
('2025-05-01', 'Kopi Susu', 15, 8000),
('2025-05-01', 'Matcha', 10, 10000),
('2025-05-02', 'Es Teh', 25, 5000),
('2025-05-02', 'Kopi Susu', 12, 8000),
('2025-05-03', 'Matcha', 18, 10000),
('2025-05-03', 'Es Teh', 30, 5000),
('2025-05-04', 'Cappuccino', 8, 9000),
('2025-05-05', 'Kopi Susu', 10, 8000),
('2025-05-05', 'Es Teh', 22, 5000);

-- 4. Query untuk mencari produk terlaris berdasarkan total jumlah terjual
SELECT 
    produk, 
    SUM(jumlah_terjual) AS total_terjual
FROM 
    penjualan
GROUP BY 
    produk
ORDER BY 
    total_terjual DESC;
