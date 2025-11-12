# Project Analysis of Restaurant Sales Performance Dashboard

Proyek ini merupakan analisis penjualan restoran menggunakan Excel, Python, SQL, dan Power BI.  
Tujuan dari pembuatan analisis ini adalah untuk mengetahui tren penjualan, kontribusi kasir, metode pembayaran, serta produk terlaris berdasarkan data historis transaksi.

---

## Tujuan Analisis
1. Mengetahui total penjualan, jumlah transaksi, dan revenue restoran.
2. Melihat tren penjualan bulanan sepanjang tahun.
3. Mengidentifikasi top 3 produk dengan revenue dan kuantitas tertinggi.
4. Mengetahui preferensi jenis pembayaran dan performa kasir.
5. Menentukan waktu transaksi paling ramai.

---

##  Tools yang Digunakan
1. Excel (Data Awal) = Dataset mentah hasil ekspor penjualan
2. Python (Data Cleansing) = Membersihkan data, memperbaiki format tanggal, menghapus nilai kosong
3. MySQL (Data Processing) = Query agregasi dan analisis berbasis SQL
4. Power BI (Data Visualization) = Dashboard interaktif untuk insight bisnis

---

## Struktur Project
restaurant_sales_dashboard :
1. data/
2. python/
3. sql/
4. powerbi/
5. README.md

---

## 📊 Hasil Dashboard
![Dashboard](powerbi/Dashboard.png)

### Insight Utama:
- **Total Revenue:** Rp 275.23 Rb  
- **Total Penjualan:** 8.162 Rb  
- **Total Transaksi:** 1 Rb  

**Temuan menarik:**
- Bulan **November** memiliki penjualan tertinggi.  
- Produk **Sandwich** menjadi penyumbang revenue terbesar.  
- **Cash** masih menjadi metode pembayaran dominan (48%).  
- **Kasir perempuan** menangani sedikit lebih banyak transaksi (52%).  
- Periode **malam hari** memiliki transaksi tertinggi.

---

## Proses Analisis
### 1. Python
- Mengubah format tanggal ke `YYYY-MM-DD`
- Menangani nilai kosong pada kolom `transaction_type`
- Mengekspor data bersih ke CSV untuk MySQL

### 2. SQL
- Menghitung total penjualan, revenue, dan jumlah transaksi
- Mengelompokkan data berdasarkan jenis item, waktu transaksi, dan kasir
- Menentukan top 3 item berdasarkan penjualan dan revenue

### 3. Power BI
- Membuat visualisasi KPI (Revenue, Penjualan, Transaksi)
- Membuat filter interaktif (tahun, bulan, tipe item)
- Menggunakan conditional formatting untuk mempermudah pembacaan angka

---

## File Penting
| File | Deskripsi |
|------|------------|
| `data/raw_food_sales.csv` | Data mentah penjualan restoran |
| `data/Clean_data.csv` | Data bersih hasil cleaning di Python |
| `python/Python.ipynb` | Script pembersihan data |
| `sql/query.sql` | Query MySQL untuk analisis |
| `powerbi/Dashboard.png` | Screenshot hasil akhir dashboard |

---

## Author
**Muhammad Dzakwan**  
Data Enthusiast | Universitas Brawijaya  
[alkhairidzakwan@gmail.com]  
[https://www.linkedin.com/in/mdzakwanalkhairi/]

---

## Lisensi
MIT License © 2025 Muhammad Dzakwan
