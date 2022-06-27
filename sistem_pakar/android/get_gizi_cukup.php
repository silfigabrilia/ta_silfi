<?php
include '../koneksi.php';

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$response = array();

$q = mysqli_query($con, "SELECT * FROM gizi_cukup");

$response["gizi_cukup"] = array();
while ($r = mysqli_fetch_array($q)) {
    $gizi_cukup = array();
    $gizi_cukup["id_gizi_cukup"] = $r['id_gizi_cukup'];
    $gizi_cukup["nama"] = $r['nama'];
    $gizi_cukup["keterangan"] = $r['keterangan'];
    array_push($response["gizi_cukup"], $gizi_cukup);
}
$response["status"] = 0;
$response["message"] = "Get list gizi_cukup berhasil";

echo json_encode($response);
