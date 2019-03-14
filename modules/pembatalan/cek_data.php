 <?php
include "../../config/database.php";
$data_tiket = mysqli_fetch_array(mysqli_query($mysqli, "select * from pembelian where id_pembelian='$_GET[id_pembelian]'"));
//$data_jadwal = array('harga'   	=>  $data_jadwal['harga'],);
echo json_encode($data_tiket);
//print $data_jadwal['harga'];
?>