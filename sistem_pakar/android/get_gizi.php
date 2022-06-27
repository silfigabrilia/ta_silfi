<?php
include '../koneksi.php';

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$response = array();

$q = mysqli_query($con, "SELECT * FROM gizi");

$response["gizi"] = array();
while ($r = mysqli_fetch_array($q)) {
    $gizi = array();
    $gizi["id_gizi"] = $r['id_gizi'];
    $gizi["nama"] = $r['nama'];
    $gizi["keterangan"] = $r['keterangan'];
    array_push($response["gizi"], $gizi);
}
$response["status"] = 0;
$response["message"] = "Get list gizi berhasil";

echo json_encode($response);
