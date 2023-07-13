DROP TABLE tbl_disposisi;

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_disposisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tbl_disposisi VALUES("2","Untuk magang","permohohan Pembayaran ","Penting","2023-05-18","segera ","37","1");



DROP TABLE tbl_instansi;

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `manager` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_instansi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_instansi VALUES("1","Umum Komunikasi TJSL dan Aset Properti ","PT. PLN UNIT INDUK PEMBANGKITAN SUMATERA BAGIAN SELATAN ","Aktif","Jln. Demang Lebar Daun No.375, Kec. Ilir Barat I, Palembang, Sumatera Selatan 30131, Indonesia","Riska Adrianti","86080622","https://www.pln-uiksbs.co.id/","info.kitsbs@pln.co.id","Logo_PLN.png","1");



DROP TABLE tbl_klasifikasi;

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_klasifikasi`)
) ENGINE=InnoDB AUTO_INCREMENT=1308 DEFAULT CHARSET=latin1;

INSERT INTO tbl_klasifikasi VALUES("1307","12","PT. PLN UNIT INDUK PEMBANGKITAN SUMATERA BAGIAN SELATAN ","bla bla","1");



DROP TABLE tbl_sett;

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_sett`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_sett VALUES("1","10","10","5","1");



DROP TABLE tbl_surat_keluar;

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_keluar VALUES("3","1","as","1","sacS","QW","2023-04-20","2023-04-15","4605-02.001.PP.KGB.VOLTA.IX.2022.pdf","WDD","1");



DROP TABLE tbl_surat_masuk;

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  `nilai_tagihan` text NOT NULL,
  `periode_ba` text NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_masuk VALUES("37","10","0004.PJ/DAN.01.02/G22000000/2022 ","PT. CAHAYA DUTA PERSADA  UPK TARAHAN  ","Pekerjakaan Pengadaan ","12 ren","Erwanto Saputra","2023-05-31","2023-05-01","8246-5-1139-AS.01.03-X-2022.pdf","PERMOHONAN PEMBAYARAN ","1","Rp. 58.233.579","Lembur Agustus 2021");
INSERT INTO tbl_surat_masuk VALUES("38","11","0019.PJ/DAN.01.02/C22000000/2021","KSO PT. ADIB MULTI ENGINEERING DAN PT. MARIANI GROUP UPK TELUK SIRIH ","Pekerjaan Pengadaan Kendaraan dan Pengemudi PLN UPK Teluk Sirih Periode SPPD dan Lembur September 2023","12kso","Erwanto Saputra ","2023-05-22","2023-05-22","1180-002.T-HJP-XI-2022.pdf","PERMOHONAN PEMBAYARAN ","1","Rp. 33.135.144","Lembur SPPD Oktober 2022");
INSERT INTO tbl_surat_masuk VALUES("39","12","0019.PJ/DAN.01.02/C22000000/2022","KSO PT. ADIB MULTI ENGINEERING DAN PT. MARIANI GROUP UPK TELUK SIRIH ","Pekerjaan Pengadaan Kendaraan dan Pengemudi PLN UPK Teluk Sirih Periode SPPD dan Lembur September 2022","12g","Erwanto Saputra ","2023-05-03","2023-05-22","2136-02.001.PP.KGB.VOLTA.IX.2022.pdf","PERMOHONAN PEMBAYARAN ","1","Rp. 42.620.158","Lembur Dan SPPD September 2022");
INSERT INTO tbl_surat_masuk VALUES("40","13","0019.TJ/DAN.01.02/C22000000/2022","KSO PT. ADIB MULTI ENGINEERING DAN PT. MARIANI GROUP UPK TELUK SIRIH ","Pekerjaan Pengadaan Kendaraan dan Pengemudi PLN UPK Teluk Sirih Periode SPPD dan Lembur September 2022","13ksop","Erwanto Saputra ","2023-05-22","2023-05-22","1179-02.001.PP.KGB.VOLTA.IX.2022.pdf","PERMOHONAN PEMBAYARAN ","1","Rp. 42.620.158","Lembur Dan SPPD September 2022");
INSERT INTO tbl_surat_masuk VALUES("41","14","3100510464.PJ/613/STIR/2015","PT. CAHAYA CITRA MULIA UPK TELUK SIRIH","Pekerjaan Pengadaan Pengoperasian dan Pemeliharaan Gedung dan Pertamanan (Area Power House dan Boiler Building) PLN UPK Teluk Sirih Periode Oktober 2022 ","14er","Erwanto Saputra ","2023-05-23","2023-05-22","864-02.001.PP.KGB.VOLTA.IX.2022.pdf","PERMOHONAN PEMBAYARAN ","1","Rp. 41.634.369","Oktober 2022");
INSERT INTO tbl_surat_masuk VALUES("42","15","0019.PJ/DAN.01.02/C220000000/2021","KSO PT. ADIB MULTI ENGINEERING DAN PT. MARIANI GROUP UPK TELUK SIRIH ","Pekerjaan Pengadaan Kendaraan dan Pengemudi PLN UPK Teluk Sirih Periode Februari 2022","15 we","Erwanto Saputra ","2023-05-22","2023-05-22","7391-02.001.PP.KGB.VOLTA.IX.2022.pdf","PERMOHONAN PEMBAYARAN ","1","Rp. 5.973.180","Februari 2022");



DROP TABLE tbl_user;

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tbl_user VALUES("1","Maulida","1386216b52067a593d30aa634d8c4f29","Maulida ","-12345678","1");
INSERT INTO tbl_user VALUES("2","Erwanto","25d55ad283aa400af464c76d713c07ad","Erwanto","86080622","3");



