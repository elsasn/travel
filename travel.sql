/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.1.37-MariaDB : Database - travel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`travel` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `travel`;

/*Table structure for table `bayar` */

DROP TABLE IF EXISTS `bayar`;

CREATE TABLE `bayar` (
  `id_bayar` varchar(20) NOT NULL,
  `id_booking` varchar(20) DEFAULT NULL,
  `harga` varchar(20) DEFAULT NULL,
  `subtotal` varchar(50) DEFAULT NULL,
  `jml_bayar` varchar(50) DEFAULT NULL,
  `jenis_bayar` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `biaya_jemput` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_bayar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bayar` */

/*Table structure for table `data_armada` */

DROP TABLE IF EXISTS `data_armada`;

CREATE TABLE `data_armada` (
  `id_armada` varchar(20) NOT NULL,
  `jumlah` int(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_armada`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `data_armada` */

/*Table structure for table `data_jadwal` */

DROP TABLE IF EXISTS `data_jadwal`;

CREATE TABLE `data_jadwal` (
  `id_jadwal` varchar(20) NOT NULL,
  `nama_jurusan` varchar(20) DEFAULT NULL,
  `harga` int(20) DEFAULT NULL,
  `jam_berangkat` int(20) DEFAULT NULL,
  `kapasitas` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `data_jadwal` */

insert  into `data_jadwal`(`id_jadwal`,`nama_jurusan`,`harga`,`jam_berangkat`,`kapasitas`) values 
('JDWL-000001','JOGJA-KEBUMEN',70000,20,'10'),
('JDWL-000002','JOGJA-MAJENANG',100000,10,'20');

/*Table structure for table `data_jurusan` */

DROP TABLE IF EXISTS `data_jurusan`;

CREATE TABLE `data_jurusan` (
  `id_jurusan` varchar(20) NOT NULL,
  `nama_jurusan` varchar(20) DEFAULT NULL,
  `harga` int(20) DEFAULT NULL,
  `jam_berangkat` int(20) DEFAULT NULL,
  `kapasitas` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `data_jurusan` */

insert  into `data_jurusan`(`id_jurusan`,`nama_jurusan`,`harga`,`jam_berangkat`,`kapasitas`) values 
('JR-000001','JOJGA - PANGANDARAN',180000,9,'20'),
('JR-000002','JOGJA - PANGANDARAN ',180000,16,'20');

/*Table structure for table `data_karyawan` */

DROP TABLE IF EXISTS `data_karyawan`;

CREATE TABLE `data_karyawan` (
  `id_karyawan` varchar(20) NOT NULL,
  `nama_karyawan` varchar(20) DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_telp` int(20) DEFAULT NULL,
  PRIMARY KEY (`id_karyawan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `data_karyawan` */

insert  into `data_karyawan`(`id_karyawan`,`nama_karyawan`,`jabatan`,`jenis_kelamin`,`alamat`,`no_telp`) values 
('KRY-000002','kmji','Operator','Perempuan','kio',79),
('KRY-000003','uyguyg','Super Admin','Laki - Laki','ytgrf',987),
('KRY-000004','dsd','Operator','Perempuan','efe',212);

/*Table structure for table `data_pelanggan` */

DROP TABLE IF EXISTS `data_pelanggan`;

CREATE TABLE `data_pelanggan` (
  `id_pelanggan` varchar(20) NOT NULL,
  `nama_pelanggan` varchar(20) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_telp` int(20) DEFAULT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `data_pelanggan` */

insert  into `data_pelanggan`(`id_pelanggan`,`nama_pelanggan`,`jenis_kelamin`,`alamat`,`no_telp`) values 
('PLG-000002','fsf','Laki-laki','sdfsf',32432),
('PLG-000003','jhj','Perempuan','khh',868);

/*Table structure for table `data_supir` */

DROP TABLE IF EXISTS `data_supir`;

CREATE TABLE `data_supir` (
  `id_supir` varchar(20) NOT NULL,
  `nama_supir` varchar(20) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_supir`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `data_supir` */

/*Table structure for table `data_user` */

DROP TABLE IF EXISTS `data_user`;

CREATE TABLE `data_user` (
  `id_user` varchar(20) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `data_user` */

/*Table structure for table `det_bayar` */

DROP TABLE IF EXISTS `det_bayar`;

CREATE TABLE `det_bayar` (
  `id_det_bayar` varchar(20) NOT NULL,
  `id_bayar` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_det_bayar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `det_bayar` */

/*Table structure for table `det_pembayaran` */

DROP TABLE IF EXISTS `det_pembayaran`;

CREATE TABLE `det_pembayaran` (
  `id_det_bayar` varchar(20) NOT NULL,
  `id_bayar` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_det_bayar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `det_pembayaran` */

/*Table structure for table `det_trans_booking` */

DROP TABLE IF EXISTS `det_trans_booking`;

CREATE TABLE `det_trans_booking` (
  `id_det_trans_booking` varchar(50) DEFAULT NULL,
  `id_booking` varchar(20) DEFAULT NULL,
  `id_jurusan` varchar(20) DEFAULT NULL,
  `id_supir` varchar(20) DEFAULT NULL,
  `harga` varchar(20) DEFAULT NULL,
  `jumlah_tiket` int(11) DEFAULT NULL,
  `total_bayar` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `det_trans_booking` */

/*Table structure for table `is_users` */

DROP TABLE IF EXISTS `is_users`;

CREATE TABLE `is_users` (
  `id_user` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telepon` varchar(13) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `hak_akses` enum('Super Admin','Manajer','Gudang') NOT NULL,
  `status` enum('aktif','blokir') NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`),
  KEY `level` (`hak_akses`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `is_users` */

insert  into `is_users`(`id_user`,`username`,`nama_user`,`password`,`email`,`telepon`,`foto`,`hak_akses`,`status`,`created_at`,`updated_at`) values 
(1,'superadmin','superadmin','17c4520f6cfd1ab53d8745e84681eb49','superadmin@gmail.com','085669919769','user-default.png','Super Admin','aktif','2017-04-01 15:15:15','2019-01-25 16:00:23'),
(2,'kadina','Kadina Putri','202cb962ac59075b964b07152d234b70','kadinaputri@gmail.com','085680892909','kadina.png','Manajer','aktif','2017-04-01 15:15:15','2017-04-01 15:15:15'),
(3,'danang','Danang Kesuma','202cb962ac59075b964b07152d234b70','danang@gmail.com','085758858855','','Gudang','aktif','2017-04-01 15:15:15','2017-04-01 15:15:15');

/*Table structure for table `jadwal` */

DROP TABLE IF EXISTS `jadwal`;

CREATE TABLE `jadwal` (
  `id_jadwal` varchar(20) NOT NULL,
  `nama_jurusan` varchar(20) DEFAULT NULL,
  `harga` int(20) DEFAULT NULL,
  `jam_berangkat` time DEFAULT NULL,
  `kapasitas` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jadwal` */

insert  into `jadwal`(`id_jadwal`,`nama_jurusan`,`harga`,`jam_berangkat`,`kapasitas`) values 
('JDWL-000001','JOGJA-KEBUMEN',70000,'08:00:00','17');

/*Table structure for table `jurusan` */

DROP TABLE IF EXISTS `jurusan`;

CREATE TABLE `jurusan` (
  `id_jurusan` varchar(50) NOT NULL,
  `nama_jurusan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jurusan` */

insert  into `jurusan`(`id_jurusan`,`nama_jurusan`) values 
('JUR-1001 ','JOGJA-PURWOREJO '),
('JUR-1002 ','JOGJA-KEBUMEN'),
('JUR-1003 ','JOGJA-WANGON'),
('JUR-1004 ','JOGJA-KR.PCUNG'),
('JUR-1005 ','JOGJA-MAJENANG');

/*Table structure for table `ktp` */

DROP TABLE IF EXISTS `ktp`;

CREATE TABLE `ktp` (
  `nik` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `ttl` date DEFAULT NULL,
  `jk` varchar(50) DEFAULT NULL,
  `alamat` text,
  `rt` int(11) DEFAULT NULL,
  `rw` int(11) DEFAULT NULL,
  `kel` varchar(50) DEFAULT NULL,
  `kec` varchar(50) DEFAULT NULL,
  `agama` enum('Islam','Kristen','Katolik','Hindu','Budha') DEFAULT NULL,
  `status_kawin` enum('Kawin','Belum Kawin') DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `kewarganegaraan` enum('WNI','WNA') DEFAULT NULL,
  `masa_berlaku` varchar(50) DEFAULT 'SEUMUR HIDUP',
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ktp` */

insert  into `ktp`(`nik`,`nama`,`tempat_lahir`,`ttl`,`jk`,`alamat`,`rt`,`rw`,`kel`,`kec`,`agama`,`status_kawin`,`pekerjaan`,`kewarganegaraan`,`masa_berlaku`) values 
('NIK-000003','Elsa SN','Bogor','2019-03-06','Laki-Laki','Sleman',3,2,'Sleman','Sleman','Kristen','Belum Kawin','Pelajar',NULL,'Seumur Hidup'),
('NIK-000004','ffq','rqwrq','2019-02-27','Perempuan','rqwrq',0,1,'rwr','rqwrq','Budha','Kawin','rq',NULL,'qrq');

/*Table structure for table `pembatalan` */

DROP TABLE IF EXISTS `pembatalan`;

CREATE TABLE `pembatalan` (
  `id_pembatalan` varchar(20) NOT NULL,
  `tgl_pembatalan` date DEFAULT NULL,
  `id_pembelian` varchar(20) DEFAULT NULL,
  `tgl_pembelian` date DEFAULT NULL,
  `tgl_berangkat` date DEFAULT NULL,
  `jumlah_tiket` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `jumlah_tiket_kembali` int(11) DEFAULT NULL,
  `jumlah_uang_kembali` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pembatalan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pembatalan` */

insert  into `pembatalan`(`id_pembatalan`,`tgl_pembatalan`,`id_pembelian`,`tgl_pembelian`,`tgl_berangkat`,`jumlah_tiket`,`subtotal`,`jumlah_tiket_kembali`,`jumlah_uang_kembali`) values 
('PMB-2019-0001','2019-03-15','PBL-2019-0001',NULL,'2019-03-18',2,140000,1,35000),
('PMB-2019-0002','2019-03-15','PBL-2019-0002',NULL,'2019-03-18',2,210000,1,52500);

/*Table structure for table `pembayaran` */

DROP TABLE IF EXISTS `pembayaran`;

CREATE TABLE `pembayaran` (
  `id_pembayaran` varchar(20) NOT NULL,
  `id_pembelian` varchar(20) DEFAULT NULL,
  `id_jurusan` varchar(20) DEFAULT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `subtotal` int(50) DEFAULT NULL,
  `jumlah_bayar` int(50) DEFAULT NULL,
  `jenis_bayar` varchar(20) DEFAULT NULL,
  `status` enum('Lunas','Belum Lunas') DEFAULT 'Lunas',
  PRIMARY KEY (`id_pembayaran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pembayaran` */

insert  into `pembayaran`(`id_pembayaran`,`id_pembelian`,`id_jurusan`,`tgl_transaksi`,`subtotal`,`jumlah_bayar`,`jenis_bayar`,`status`) values 
('PBYR-2019-0001','PBYR-2019-0001',NULL,'2019-02-18',140000,140000,NULL,'Lunas');

/*Table structure for table `pembelian` */

DROP TABLE IF EXISTS `pembelian`;

CREATE TABLE `pembelian` (
  `id_pembelian` varchar(20) NOT NULL,
  `id_pelanggan` varchar(20) DEFAULT NULL,
  `tgl_pembelian` date DEFAULT NULL,
  `id_jadwal` varchar(20) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `tgl_berangkat` date DEFAULT NULL,
  `jumlah_tiket` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pembelian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pembelian` */

insert  into `pembelian`(`id_pembelian`,`id_pelanggan`,`tgl_pembelian`,`id_jadwal`,`harga`,`tgl_berangkat`,`jumlah_tiket`,`subtotal`) values 
('PBL-2019-0001','PLG-000002','2019-03-15','JDWL-000001',70000,'2019-03-18',1,140000),
('PBL-2019-0002','PLG-000002','2019-03-15','JDWL-000001',70000,'2019-03-18',1,210000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
