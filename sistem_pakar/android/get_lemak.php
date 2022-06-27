<?php
include '../koneksi.php';

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$response = array();

$q = mysqli_query($con, "SELECT * FROM lemak");

$response["lemak"] = array();
while ($r = mysqli_fetch_array($q)) {
    $lemak = array();
    $lemak["id_lemak"] = $r['id_lemak'];
    $lemak["nama"] = $r['nama'];
    $lemak["keterangan"] = $r['keterangan'];
    array_push($response["lemak"], $lemak);
}
$response["status"] = 0;
$response["message"] = "Get list lemak berhasil";

echo json_encode($response);
