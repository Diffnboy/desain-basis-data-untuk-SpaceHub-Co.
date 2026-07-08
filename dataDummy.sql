INSERT INTO Cabang (nama_cabang, kota_lokasi) VALUES
('SpaceHub Sudirman', 'Jakarta'), ('SpaceHub Kemang', 'Jakarta'),
('SpaceHub Dago', 'Bandung'), ('SpaceHub Braga', 'Bandung'),
('SpaceHub Malioboro', 'Yogyakarta'), ('SpaceHub Seturan', 'Yogyakarta'),
('SpaceHub Pemuda', 'Semarang'), ('SpaceHub Gubeng', 'Surabaya'),
('SpaceHub Rungkut', 'Surabaya'), ('SpaceHub Renon', 'Denpasar'),
('SpaceHub Kuta', 'Denpasar'), ('SpaceHub Pettarani', 'Makassar'),
('SpaceHub Panakkukang', 'Makassar'), ('SpaceHub Sudirman Baru', 'Palembang'),
('SpaceHub Diponegoro', 'Medan');

INSERT INTO Acara_Besar (nama_acara, id_cabang_lokasi) VALUES
('Tech Startup Summit 2026', 1), ('Art Exhibition: Future', 3),
('E-Commerce Bootcamp', 5), ('Annual HR Conference', 8),
('Digital Marketing Masterclass', 10), ('Crypto Meetup', 2),
('Indie Game Developer Fest', 4), ('Creative Writing Workshop', 6),
('Local SEO Seminar', 7), ('Surabaya Tech Week', 9),
('Bali Digital Nomad Festival', 11), ('Makassar Entrepreneur Gathering', 12),
('South Sulawesi Coding Camp', 13), ('Palembang Business Pitch', 14),
('Medan AI Symposium', 15);

INSERT INTO Staf (nama_lengkap, posisi_staf, id_cabang_rumah) VALUES
('Budi Santoso', 'Customer Service', 1), ('Siti Aminah', 'Cleaning Service', 1),
('Andi Wijaya', 'Customer Service', 2), ('Dewi Lestari', 'Cleaning Service', 2),
('Rizky Pratama', 'Customer Service', 3), ('Ayu Wandira', 'Cleaning Service', 3),
('Fajar Nugraha', 'Customer Service', 4), ('Rina Melati', 'Cleaning Service', 4),
('Dodi Hendra', 'Customer Service', 5), ('Maya Sari', 'Cleaning Service', 5),
('Gilang Ramadhan', 'Customer Service', 8), ('Nina Kusuma', 'Cleaning Service', 8),
('Bagas Putra', 'Customer Service', 10), ('Lia Ananda', 'Cleaning Service', 10),
('Hasan Basri', 'Customer Service', 12), ('Tuti Haryanti', 'Cleaning Service', 12),
('Eko Prasetyo', 'Customer Service', 15), ('Yuli Susanti', 'Cleaning Service', 15),
('Arif Budiman', 'Customer Service', 6), ('Indah Permata', 'Cleaning Service', 7);

INSERT INTO Penugasan_Bantuan (id_staf, id_acara, tanggal_mulai, tanggal_selesai) VALUES
(2, 2, '2026-06-01', '2026-06-03'), (4, 2, '2026-06-01', '2026-06-03'),
(6, 1, '2026-06-05', '2026-06-06'), (8, 10, '2026-06-10', '2026-06-12'),
(10, 4, '2026-06-15', '2026-06-17'), (1, 5, '2026-06-20', '2026-06-22'),
(3, 5, '2026-06-20', '2026-06-22'), (5, 11, '2026-07-01', '2026-07-05'),
(7, 12, '2026-07-10', '2026-07-11'), (12, 11, '2026-07-01', '2026-07-05'),
(14, 12, '2026-07-10', '2026-07-11'), (16, 15, '2026-07-15', '2026-07-17'),
(18, 1, '2026-08-01', '2026-08-03'), (20, 3, '2026-08-05', '2026-08-07'),
(9, 4, '2026-06-15', '2026-06-17');
