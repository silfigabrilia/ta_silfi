<?php
include '../koneksi.php';

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$response = array();

$q = mysqli_query($con, "SELECT * FROM gizi_lebih");

$response["gizi_lebih"] = array();
while ($r = mysqli_fetch_array($q)) {
    $gizi_lebih = array();
    $gizi_lebih["id_gizi_lebih"] = $r['id_gizi_lebih'];
    $gizi_lebih["nama"] = $r['nama'];
    $gizi_lebih["keterangan"] = $r['keterangan'];
    array_push($response["gizi_lebih"], $gizi_lebih);
}
$response["status"] = 0;
$response["message"] = "Get list gizi_lebih berhasil";

echo json_encode($response);
