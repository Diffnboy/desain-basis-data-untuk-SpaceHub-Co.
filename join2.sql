SELECT 
    c_lokasi.nama_cabang AS lokasi_acara, a.nama_acara,
    COUNT(pb.id_penugasan) AS total_bantuan_diterima,
    COUNT(DISTINCT pb.id_staf) AS staf_unik_diperbantukan
FROM Acara_Besar a
JOIN Cabang c_lokasi ON a.id_cabang_lokasi = c_lokasi.id_cabang
JOIN Penugasan_Bantuan pb ON a.id_acara = pb.id_acara
JOIN Staf s ON pb.id_staf = s.id_staf
WHERE s.id_cabang_rumah != c_lokasi.id_cabang 
GROUP BY c_lokasi.id_cabang, c_lokasi.nama_cabang, a.id_acara, a.nama_acara
HAVING COUNT(pb.id_penugasan) >= 1
ORDER BY total_bantuan_diterima DESC;
