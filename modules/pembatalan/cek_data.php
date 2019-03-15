 <?php
include "../../config/database.php";
$data_tiket = mysqli_fetch_array(mysqli_query($mysqli, "select * from pembelian where id_pembelian='$_GET[id_pembelian]'"));
//$data_jadwal = array('harga'   	=>  $data_jadwal['harga'],);
//echo $data_tiket['tgl_berangkat'];
$date_now=date_create(date('Y-m-d'));
$date_brangkat=date_create($data_tiket['tgl_berangkat']);
$diff =date_diff($date_now,$date_brangkat);
$data_tiket['diff_days']=$diff->format("%a");
echo json_encode($data_tiket);
//print $data_jadwal['har"ga'];
?>