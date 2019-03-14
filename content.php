
<?php
/* panggil file database.php untuk koneksi ke database */
require_once "config/database.php";
/* panggil file fungsi tambahan */
require_once "config/fungsi_tanggal.php";
require_once "config/fungsi_rupiah.php";
// fungsi untuk pengecekan status login user
// jika user belum login, alihkan ke halaman login dan tampilkan message = 1
if (empty($_SESSION['username']) && empty($_SESSION['password'])){
	echo "<meta http-equiv='refresh' content='0; url=index.php?alert=1'>";
}
// jika user sudah login, maka jalankan perintah untuk pemanggilan file halaman konten
else {
	// jika halaman konten yang dipilih beranda, panggil file view beranda
	if ($_GET['module'] == 'beranda') {
		include "modules/beranda/view.php";
	}
	// Master Data
	elseif ($_GET['module'] == 'karyawan') {
		include "modules/karyawan/view.php";
	}
	// jika halaman konten yang dipilih form user, panggil file form user
	elseif ($_GET['module'] == 'form_karyawan') {
		include "modules/karyawan/form.php";
	}
	//
	elseif ($_GET['module'] == 'pelanggan') {
		include "modules/pelanggan/view.php";
	}
	// jika halaman konten yang dipilih form user, panggil file form user
	elseif ($_GET['module'] == 'form_pelanggan') {
		include "modules/pelanggan/form.php";
	}
	elseif ($_GET['module'] == 'jurusan') {
		include "modules/jurusan/view.php";
	}
	// jika halaman konten yang dipilih form user, panggil file form user
	elseif ($_GET['module'] == 'form_jurusan') {
		include "modules/jurusan/form.php";
	}
	elseif ($_GET['module'] == 'jadwal') {
		include "modules/jadwal/view.php";
	}
	// jika halaman konten yang dipilih form user, panggil file form user
	elseif ($_GET['module'] == 'form_jadwal') {
		include "modules/jadwal/form.php";
	}
	elseif ($_GET['module'] == 'harga') {
		include "modules/harga/view.php";
	}
	// jika halaman konten yang dipilih form user, panggil file form user
	elseif ($_GET['module'] == 'form_harga') {
		include "modules/harga/form.php";
	}
	
	// -----------------------------------------------------------------------------
	// Transaksi
	// jika halaman konten yang dipilih laporan stok, panggil file view laporan stok
	elseif ($_GET['module'] == 'pembelian') {
		include "modules/pembelian/view.php";
	}
	// -----------------------------------------------------------------------------
	// jika halaman konten yang dipilih laporan obat masuk, panggil file view laporan obat masuk
	elseif ($_GET['module'] == 'form_pembelian') {
		include "modules/pembelian/form.php";
	}
	elseif ($_GET['module'] == 'form_pembelian2') {
		include "modules/pembelian/form2.php";
	}
	// -----------------------------------------------------------------------------
	// jika halaman konten yang dipilih laporan stok, panggil file view laporan stok
	
	// -----------------------------------------------------------------------------
	// jika halaman konten yang dipilih laporan stok, panggil file view laporan stok
	elseif ($_GET['module'] == 'pembayaran') {
		include "modules/pembayaran/view.php";
	}
	// -----------------------------------------------------------------------------
	// jika halaman konten yang dipilih laporan obat masuk, panggil file view laporan obat masuk
	elseif ($_GET['module'] == 'form_pembayaran') {
		include "modules/pembayaran/form.php";
	}

	elseif ($_GET['module'] == 'pembatalan') {
		include "modules/pembatalan/view.php";
	}
	// -----------------------------------------------------------------------------
	// jika halaman konten yang dipilih laporan obat masuk, panggil file view laporan obat masuk
	elseif ($_GET['module'] == 'form_pembatalan') {
		include "modules/pembatalan/form.php";
	}
	elseif ($_GET['module'] == 'form_pembatalan2') {
		include "modules/pembatalan/form2.php";
	}

	//-----------------------------------------------------------------

	elseif ($_GET['module'] == 'lap-pembelian') {
		include "modules/lap-pembelian/view.php";
	}
	// -----------------------------------------------------------------------------
	// jika halaman konten yang dipilih laporan obat masuk, panggil file view laporan obat masuk
	elseif ($_GET['module'] == 'form_lap-pembelian') {
		include "modules/lap-pembelian/form.php";
	}

	elseif ($_GET['module'] == 'lap-pembayaran') {
		include "modules/lap-pembayaran/view.php";
	}
	// -----------------------------------------------------------------------------
	// jika halaman konten yang dipilih laporan obat masuk, panggil file view laporan obat masuk
	elseif ($_GET['module'] == 'form_lap-pembayaran') {
		include "modules/pembayaran/form.php";
	}


	// -----------------------------------------------------------------------------
	// jika halaman konten yang dipilih user, panggil file view user
	elseif ($_GET['module'] == 'user') {
		include "modules/user/view.php";
	}
	// jika halaman konten yang dipilih form user, panggil file form user
	elseif ($_GET['module'] == 'form_user') {
		include "modules/user/form.php";
	}
	// -----------------------------------------------------------------------------
	// jika halaman konten yang dipilih profil, panggil file view profil
	elseif ($_GET['module'] == 'profil') {
		include "modules/profil/view.php";
	}
	// jika halaman konten yang dipilih form profil, panggil file form profil
	elseif ($_GET['module'] == 'form_profil') {
		include "modules/profil/form.php";
	}
	// -----------------------------------------------------------------------------
	
	// jika halaman konten yang dipilih password, panggil file view password
	elseif ($_GET['module'] == 'password') {
		include "modules/password/view.php";
	}
}
?>