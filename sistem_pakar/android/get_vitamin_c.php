<?php
include '../koneksi.php';

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$response = array();

$q = mysqli_query($con, "SELECT * FROM vitamin_c");

$response["vitamin_c"] = array();
while ($r = mysqli_fetch_array($q)) {
    $vitamin_c = array();
    $vitamin_c["id_vitamin_c"] = $r['id_vitamin_c'];
    $vitamin_c["nama"] = $r['nama'];
    $vitamin_c["keterangan"] = $r['keterangan'];
    array_push($response["vitamin_c"], $vitamin_c);
}
$response["status"] = 0;
$response["message"] = "Get list vitamin_c berhasil";

echo json_encode($response);
