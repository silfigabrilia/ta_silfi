<?php
include '../koneksi.php';

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$response = array();

$q = mysqli_query($con, "SELECT * FROM tingkat_gizi");

$response["tingkat_gizi"] = array();
while ($r = mysqli_fetch_array($q)) {
    $tingkat_gizi = array();
    $tingkat_gizi["id_tingkat_gizi"] = $r['id_tingkat_gizi'];
    $tingkat_gizi["nama"] = $r['nama'];
    $tingkat_gizi["keterangan"] = $r['keterangan'];
    array_push($response["tingkat_gizi"], $tingkat_gizi);
}
$response["status"] = 0;
$response["message"] = "Get list tingkat_gizi berhasil";

echo json_encode($response);
