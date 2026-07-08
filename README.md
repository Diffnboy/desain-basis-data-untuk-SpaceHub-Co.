# SpaceHub Co. - Cross-Branch HR Database System

![MySQL](https://img.shields.io/badge/Database-MySQL-blue?style=for-the-badge&logo=mysql)
![Academic Project](https://img.shields.io/badge/Tugas_Besar-Universitas_Muhammadiyah_Kendari-green?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

Selamat datang di repositori proyek basis data **SpaceHub Co.**! 
Proyek ini adalah implementasi sistem *Database Management* untuk memecahkan tantangan operasional **SDM Lintas Cabang (Cross-Branch HR)** pada perusahaan yang memiliki banyak cabang acara.

Repositori ini disusun sebagai pemenuhan **Tugas Besar Mata Kuliah Manajemen Data dan Informasi**.

---

## Tim Pengembang (Kelompok 4)
- **Fadlan Hakiki** (22415011)
- **Asmira** (22415010)
- **Alqiran Islami Ramadhan** (22415002)
- **M. Apriyanto Arifin** (22415025)

**Dosen Pengampu:** Kartini Aprilia Pratiwi Nuzry, S.Kom., M.MT.  
**Program Studi:** Sistem dan Teknologi Informasi | Fakultas Teknik | UMK 2026

---

## Tantangan Bisnis & Solusi Logis
**Masalah:** Bagaimana mencatat staf (seperti *Customer Service* & *Cleaning Service*) yang sering dipinjamkan ke cabang lain saat ada acara besar, **tanpa** menghapus/menimpa identitas "Cabang Rumah" tetap mereka?

**Solusi Kami:** Kami merancang arsitektur basis data relasional yang dinormalisasi hingga **3NF**, dengan memperkenalkan entitas asosiatif `Penugasan_Bantuan`. Tabel ini berfungsi sebagai buku log historis perpindahan staf, sehingga data asli cabang staf tetap utuh, sementara HRD dapat menghitung durasi lembur dengan akurat.

---

## Fitur Utama Proyek
1. **Skema Bebas Anomali:** Telah melewati proses dekomposisi UNF, 1NF, 2NF, hingga 3NF.
2. **Keamanan DCL (RBAC):** Menerapkan *Role-Based Access Control* dengan 3 tingkat pengguna (*Staf Lapangan, Manajer, Auditor*).
3. **Integritas Data (DDL):** Penggunaan konstrain tingkat lanjut seperti `AUTO_INCREMENT`, `FOREIGN KEY (CASCADE & RESTRICT)`, dan `CHECK`.
4. **Kueri Manajerial Kompleks:** Mencakup kalkulasi biaya lembur, deteksi krisis staf cabang, dan pelacakan rute mobilitas tenaga kerja menggunakan `JOIN > 4 tabel`, Agregasi, dan `GROUP BY/HAVING`.

---

## Struktur Repositori
Repositori ini murni berisi *source code* dan *script* basis data yang dipisahkan berdasarkan fungsinya:

- `DDL.sql` : Skrip SQL untuk mendefinisikan struktur tabel, tipe data, dan konstrain (Data Definition Language).
- `DCL.sql` : Skrip SQL untuk pengaturan keamanan dan manajemen hak akses pengguna (Data Control Language).
- `dataDummy.sql` : Skrip SQL untuk mengisi 15-20 baris data awal / data tiruan guna keperluan pengujian.
- `join.sql` : Kueri analisis 1 (Menghitung kalkulasi total hari lembur staf operasional lintas cabang).
- `join2.sql` : Kueri analisis 2 (Mengidentifikasi cabang yang memiliki ketergantungan tinggi pada staf perbantuan).
- `join3.sql` : Kueri analisis 3 (Membangun matriks rute mobilitas untuk posisi *Cleaning Service* antar cabang).

---

## ⚙️ Cara Menjalankan (*How to Run*)
Sistem ini dikonfigurasi dan diuji menggunakan lingkungan **MySQL (via XAMPP / MariaDB)**.

1. Buka aplikasi XAMPP dan jalankan modul **MySQL**.
2. Buka klien SQL Anda (phpMyAdmin / DBeaver / MySQL Workbench).
3. Buat basis data baru:
   ```sql
   CREATE DATABASE spacehub_db;
   USE spacehub_db;
