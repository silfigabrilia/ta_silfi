<?php
include '../koneksi.php';

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$response = array();

$q = mysqli_query($con, "SELECT * FROM vitamin");

$response["vitamin"] = array();
while ($r = mysqli_fetch_array($q)) {
    $vitamin = array();
    $vitamin["id_vitamin"] = $r['id_vitamin'];
    $vitamin["nama"] = $r['nama'];
    $vitamin["keterangan"] = $r['keterangan'];
    array_push($response["vitamin"], $vitamin);
}
$response["status"] = 0;
$response["message"] = "Get list vitamin berhasil";

echo json_encode($response);
