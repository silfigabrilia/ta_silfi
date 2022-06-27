<?php
include '../koneksi.php';

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$response = array();

$q = mysqli_query($con, "SELECT * FROM vitamin_a");

$response["vitamin_a"] = array();
while ($r = mysqli_fetch_array($q)) {
    $vitamin_a = array();
    $vitamin_a["id_vitamin_a"] = $r['id_vitamin_a'];
    $vitamin_a["nama"] = $r['nama'];
    $vitamin_a["keterangan"] = $r['keterangan'];
    array_push($response["vitamin_a"], $vitamin_a);
}
$response["status"] = 0;
$response["message"] = "Get list vitamin_a berhasil";

echo json_encode($response);
