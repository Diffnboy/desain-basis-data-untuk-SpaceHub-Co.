SELECT 
    s.nama_lengkap, s.posisi_staf, c_asal.nama_cabang AS cabang_rumah,
    COUNT(pb.id_penugasan) AS total_keterlibatan_acara,
    SUM(DATEDIFF(pb.tanggal_selesai, pb.tanggal_mulai)) AS total_hari_lembur
FROM Staf s
JOIN Cabang c_asal ON s.id_cabang_rumah = c_asal.id_cabang
JOIN Penugasan_Bantuan pb ON s.id_staf = pb.id_staf
JOIN Acara_Besar a ON pb.id_acara = a.id_acara
GROUP BY s.id_staf, s.nama_lengkap, s.posisi_staf, c_asal.nama_cabang
HAVING SUM(DATEDIFF(pb.tanggal_selesai, pb.tanggal_mulai)) > 0
ORDER BY total_hari_lembur DESC;
