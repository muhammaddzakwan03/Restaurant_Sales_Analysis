# Project Analysis of Restaurant Sales Performance Dashboard

Proyek ini merupakan analisis penjualan restoran menggunakan Excel, Python, SQL, dan Power BI.  
Tujuan dari pembuatan analisis ini adalah untuk mengetahui tren penjualan, kontribusi kasir, metode pembayaran, serta produk terlaris berdasarkan data historis transaksi.

---

## Tujuan Analisis
1. Menghitung total revenue, total penjualan, total transaksi, average price, dan average purchase.
2. Menganalisis tren penjualan berdasarkan periode waktu.
3. Mengidentifikasi top 3 produk dengan revenue dan kuantitas tertinggi.
4. Mengetahui waktu transaksi paling ramai (per hari dan per waktu).
5. Mengidentifikasi preferensi jenis pembayaran pelanggan.
6. Menilai kontribusi kasir terhadap total transaksi.
7. Memberikan insight keputusan berbasis data untuk operasional restoran.

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
- **Average Price**: $33.315
- **Average Purchase**: $275.23

**Tren Penjualan**
- Penjualan bergerak naik menuju 2023Q1 mencapai 80 Rb, menunjukkan peningkatan performa.

**Top 3 Item**
- By Revenue: Sandwich (66 Rb), Frankie (58 Rb), Cold coffee (54 Rb)
- By Quantity: Cold coffee (1.4 Rb), Frankie (1.2 Rb), Sandwich (1.1 Rb)

**Waktu Transaksi**
- Per Day: Terbanyak pada hari Minggu (44 Rb).
- Per Time: Puncak transaksi pada Night (62 Rb), diikuti Afternoon dan Morning.

**Jenis Pembayaran**
- Cash mendominasi: 48.27%
- Diikuti Online & Unknown.

**Kontribusi Cashier**
- Female: 52.12%
- Male: 47.88%

---

## Proses Analisis
### 1. Python
- Cleaning data duplikasi dan hilang
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
| `data/cleaned_data.csv` | Data bersih hasil cleaning di Python |
| `python/Python.ipynb` | Script pembersihan data |
| `sql/query.sql` | Query MySQL untuk analisis |
| `powerbi/Dashboard_sales.pbix` | File Power BI |
| `powerbi/Dashboard.png` | Screenshot hasil akhir dashboard |

---

## Author
**Muhammad Dzakwan Al Khairi**  
Data Enthusiast | Universitas Brawijaya  
[alkhairidzakwan@gmail.com]  
[https://www.linkedin.com/in/mdzakwanalkhairi/]

---

## Lisensi
MIT License 2025 Muhammad Dzakwan
