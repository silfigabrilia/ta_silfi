<?php
include '../koneksi.php';

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$response = array();

$q = mysqli_query($con, "SELECT * FROM gizi_kurang");

$response["gizi_kurang"] = array();
while ($r = mysqli_fetch_array($q)) {
    $gizi_kurang = array();
    $gizi_kurang["id_gizi_kurang"] = $r['id_gizi_kurang'];
    $gizi_kurang["nama"] = $r['nama'];
    $gizi_kurang["keterangan"] = $r['keterangan'];
    array_push($response["gizi_kurang"], $gizi_kurang);
}
$response["status"] = 0;
$response["message"] = "Get list gizi_kurang berhasil";

echo json_encode($response);
