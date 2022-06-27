<?php
include '../koneksi.php';

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$response = array();

$q = mysqli_query($con, "SELECT * FROM olahraga");

$response["olahraga"] = array();
while ($r = mysqli_fetch_array($q)) {
    $olahraga = array();
    $olahraga["id_olahraga"] = $r['id_olahraga'];
    $olahraga["nama"] = $r['nama'];
    $olahraga["keterangan"] = $r['keterangan'];
    array_push($response["olahraga"], $olahraga);
}
$response["status"] = 0;
$response["message"] = "Get list olahraga berhasil";

echo json_encode($response);
