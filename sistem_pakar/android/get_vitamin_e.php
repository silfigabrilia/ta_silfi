<?php
include '../koneksi.php';

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$response = array();

$q = mysqli_query($con, "SELECT * FROM vitamin_e");

$response["vitamin_e"] = array();
while ($r = mysqli_fetch_array($q)) {
    $vitamin_e = array();
    $vitamin_e["id_vitamin_e"] = $r['id_vitamin_e'];
    $vitamin_e["nama"] = $r['nama'];
    $vitamin_e["keterangan"] = $r['keterangan'];
    array_push($response["vitamin_e"], $vitamin_e);
}
$response["status"] = 0;
$response["message"] = "Get list vitamin_e berhasil";

echo json_encode($response);
