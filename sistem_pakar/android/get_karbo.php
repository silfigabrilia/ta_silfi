<?php
include '../koneksi.php';

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$response = array();

$q = mysqli_query($con, "SELECT * FROM karbohidrat");

$response["karbohidrat"] = array();
while ($r = mysqli_fetch_array($q)) {
    $karbohidrat = array();
    $karbohidrat["id_karbohidrat"] = $r['id_karbohidrat'];
    $karbohidrat["nama"] = $r['nama'];
    $karbohidrat["keterangan"] = $r['keterangan'];
    array_push($response["karbohidrat"], $karbohidrat);
}
$response["status"] = 0;
$response["message"] = "Get list karbohidrat berhasil";

echo json_encode($response);
