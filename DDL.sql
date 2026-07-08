CREATE TABLE Cabang (
    id_cabang INT AUTO_INCREMENT PRIMARY KEY,
    nama_cabang VARCHAR(100) UNIQUE NOT NULL,
    kota_lokasi VARCHAR(50) NOT NULL
);

CREATE TABLE Acara_Besar (
    id_acara INT AUTO_INCREMENT PRIMARY KEY,
    nama_acara VARCHAR(150) NOT NULL,
    id_cabang_lokasi INT NOT NULL,
    FOREIGN KEY (id_cabang_lokasi) REFERENCES Cabang(id_cabang) ON DELETE RESTRICT
);

CREATE TABLE Staf (
    id_staf INT AUTO_INCREMENT PRIMARY KEY,
    nama_lengkap VARCHAR(150) NOT NULL,
    posisi_staf VARCHAR(50) NOT NULL CHECK (posisi_staf IN ('Customer Service', 'Cleaning Service')),
    id_cabang_rumah INT NOT NULL,
    FOREIGN KEY (id_cabang_rumah) REFERENCES Cabang(id_cabang) ON DELETE RESTRICT
);

CREATE TABLE Penugasan_Bantuan (
    id_penugasan INT AUTO_INCREMENT PRIMARY KEY,
    id_staf INT NOT NULL,
    id_acara INT NOT NULL,
    tanggal_mulai DATE NOT NULL,
    tanggal_selesai DATE NOT NULL,
    FOREIGN KEY (id_staf) REFERENCES Staf(id_staf) ON DELETE CASCADE,
    FOREIGN KEY (id_acara) REFERENCES Acara_Besar(id_acara) ON DELETE CASCADE,
    CHECK (tanggal_selesai >= tanggal_mulai)
);