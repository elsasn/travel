<?php


// print_r($_POST);
// die;


session_start();


// Panggil koneksi database.php untuk koneksi database
require_once "../../config/database.php";

// fungsi untuk pengecekan status login user 
// jika user belum login, alihkan ke halaman login dan tampilkan pesan = 1
if (empty($_SESSION['username']) && empty($_SESSION['password'])){
    echo "<meta http-equiv='refresh' content='0; url=index.php?alert=1'>";
} else { // jika user sudah login, maka jalankan perintah untuk insert, update, dan delete
    $act = isset($_GET['act']) ? $_GET['act'] : '';
    
    if ($act == 'insert') {
        // print_r($_POST);die();
        if (isset($_POST['simpan'])) {
            // ambil data hasil submit dari form
            $id_pembatalan  = mysqli_real_escape_string($mysqli, trim($_POST['id_pembatalan']));
            $id_pembelian  = mysqli_real_escape_string($mysqli, trim($_POST['id_pembelian']));
            $tgl_pembatalan  = mysqli_real_escape_string($mysqli, trim($_POST['tgl_pembatalan']));
            $jumlah_tiket  = mysqli_real_escape_string($mysqli, trim($_POST['jumlah_tiket']));
            $subtotal  = mysqli_real_escape_string($mysqli, trim($_POST['subtotal']));
            $jumlah_tiket_kembali  = mysqli_real_escape_string($mysqli, trim($_POST['jumlah_tiket_kembali']));
            $jumlah_uang_kembali  = mysqli_real_escape_string($mysqli, trim($_POST['jumlah_uang_kembali']));
            
              // print_r($_POST);
              // die;
          
            //$created_user = $_SESSION['id_user'];
            // perintah query untuk menyimpan data ke tabel pembelian
            //print_r($query);

            $query = mysqli_query($mysqli, "INSERT INTO pembatalan(id_pembatalan,id_pembelian,tgl_pembatalan,jumlah_tiket,subtotal,jumlah_tiket_kembali,jumlah_uang_kembali)
                VALUES ('$id_pembatalan','$id_pembelian','tgl_pembatalan','$jumlah_tiket','$subtotal','$jumlah_tiket_kembali','$jumlah_uang_kembali')")
                or die('Ada kesalahan pada query insert : '.mysqli_error($mysqli));


            if ($query) {
                //menambah stok 
                mysqli_query($mysqli, "UPDATE jadwal set kapasitas=$jumlah_tiket_kembali+kapasitas where id_jadwal='$id_jadwal'")or die('Ada kesalahan pada query insert : '.mysqli_error($mysqli));
                // jika berhasil tampilkan pesan berhasil simpan data
                header("location: ../../main.php?module=pembatalan&alert=1");
            }   
        }   
    } else if ($act == 'update') {
        if (isset($_POST['simpan'])) {
            if (isset($_POST['id_pembatalan'])) {
                // ambil data hasil submit dari form
            $id_pembatalan  = mysqli_real_escape_string($mysqli, trim($_POST['id_pembatalan']));
            $id_pembelian  = mysqli_real_escape_string($mysqli, trim($_POST['id_pembelian']));
            $tgl_pembatalan  = mysqli_real_escape_string($mysqli, trim($_POST['tgl_pembatalan']));
            $jumlah_tiket  = mysqli_real_escape_string($mysqli, trim($_POST['jumlah_tiket']));
            $subtotal  = mysqli_real_escape_string($mysqli, trim($_POST['subtotal']));
            $jumlah_tiket_kembali  = mysqli_real_escape_string($mysqli, trim($_POST['jumlah_tiket_kembali']));
            $jumlah_uang_kembali  = mysqli_real_escape_string($mysqli, trim($_POST['jumlah_uang_kembali']));
            
           

                //$updated_user = $_SESSION['id_user'];
                // print_r($_POST);
                // die;
                // perintah query untuk mengubah data pada tabel pembelian
                $query = mysqli_query($mysqli, "UPDATE pembatalan SET  id_pembatalan        = '$id_pembatalan',
                                                                    id_pembelian                = '$id_pembelian',
                                                                    tgl_pembatalan                = '$tgl_pembatalan',
                                                                    jumlah_tiket                    = '$jumlah_tiket',
                                                                    subtotal                       = '$subtotal',
                                                                    jumlah_tiket_kembali                = '$jumlah_tiket_kembali',
                                                                      jumlah_uang_kembali                = '$jumlah_uang_kembali'
                                                            
                                                              WHERE id_pembatalan                = '$id_pembatalan'")
                                                or die('Ada kesalahan pada query update : '.mysqli_error($mysqli));

                // cek query
                // print_r($query);
                // die;
                if ($query) {
                    // jika berhasil tampilkan pesan berhasil update data
                    header("location: ../../main.php?module=pembatalan&alert=2");
                }         
            }
        }
    } else if ($act == 'delete') {
        if (isset($_GET['id'])) {
            $id_pembatalan = $_GET['id'];
    
            // perintah query untuk menghapus data pada tabel obat
            $query = mysqli_query($mysqli, "DELETE FROM pembatalan WHERE id_pembatalan='$id_pembatalan'")
                                            or die('Ada kesalahan pada query delete : '.mysqli_error($mysqli));

            // cek hasil query
            if ($query) {
                // jika berhasil tampilkan pesan berhasil delete data
                header("location: ../../main.php?module=pembatalan&alert=3");
            }
        }
    }       
}       
?>