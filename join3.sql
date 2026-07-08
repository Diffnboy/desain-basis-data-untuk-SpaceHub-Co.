SELECT 
    c_asal.nama_cabang AS cabang_asal,
    c_tujuan.nama_cabang AS cabang_tujuan_acara,
    COUNT(pb.id_penugasan) AS frekuensi_perpindahan,
    COUNT(DISTINCT pb.id_staf) AS jumlah_staf_terlibat,
    SUM(DATEDIFF(pb.tanggal_selesai, pb.tanggal_mulai)) AS total_hari_dihabiskan
FROM Penugasan_Bantuan pb
JOIN Staf s ON pb.id_staf = s.id_staf
JOIN Cabang c_asal ON s.id_cabang_rumah = c_asal.id_cabang
JOIN Acara_Besar a ON pb.id_acara = a.id_acara
JOIN Cabang c_tujuan ON a.id_cabang_lokasi = c_tujuan.id_cabang
WHERE s.posisi_staf = 'Cleaning Service'
GROUP BY c_asal.id_cabang, c_asal.nama_cabang, c_tujuan.id_cabang, c_tujuan.nama_cabang
HAVING COUNT(pb.id_penugasan) > 0
ORDER BY frekuensi_perpindahan DESC;