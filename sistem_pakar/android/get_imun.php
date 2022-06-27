<?php
include '../koneksi.php';

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$response = array();

$q = mysqli_query($con, "SELECT * FROM imunitas");

$response["imunitas"] = array();
while ($r = mysqli_fetch_array($q)) {
    $imunitas = array();
    $imunitas["id_imunitas"] = $r['id_imunitas'];
    $imunitas["nama"] = $r['nama'];
    $imunitas["keterangan"] = $r['keterangan'];
    array_push($response["imunitas"], $imunitas);
}
$response["status"] = 0;
$response["message"] = "Get list imunitas berhasil";

echo json_encode($response);
