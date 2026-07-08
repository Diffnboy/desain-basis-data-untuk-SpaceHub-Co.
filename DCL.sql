-- Membuat Akun Pengguna (User)
CREATE USER 'staf_lapangan'@'localhost' IDENTIFIED BY '12345';
CREATE USER 'manajer'@'localhost' IDENTIFIED BY '12345';
CREATE USER 'auditor'@'localhost' IDENTIFIED BY '12345';

-- 1. Staf Lapangan: Hak akses Read-Only untuk melihat tugas
GRANT SELECT ON Cabang TO 'staf_lapangan'@'localhost';
GRANT SELECT ON Acara_Besar TO 'staf_lapangan'@'localhost';
GRANT SELECT ON Staf TO 'staf_lapangan'@'localhost';
GRANT SELECT ON Penugasan_Bantuan TO 'staf_lapangan'@'localhost';

-- 2. Manajer: Hak akses CRUD penuh untuk pengelolaan penjadwalan
GRANT SELECT, INSERT, UPDATE, DELETE ON Cabang TO 'manajer'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON Acara_Besar TO 'manajer'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON Staf TO 'manajer'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON Penugasan_Bantuan TO 'manajer'@'localhost';

-- 3. Auditor: Hak akses Read-Only untuk validasi data historis tanpa hak ubah
GRANT SELECT ON Cabang TO 'auditor'@'localhost';
GRANT SELECT ON Acara_Besar TO 'auditor'@'localhost';
GRANT SELECT ON Staf TO 'auditor'@'localhost';
GRANT SELECT ON Penugasan_Bantuan TO 'auditor'@'localhost';

-- Menerapkan hak akses
FLUSH PRIVILEGES;
