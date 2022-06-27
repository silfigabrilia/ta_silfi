<?php
include '../koneksi.php';

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$response = array();

$q = mysqli_query($con, "SELECT * FROM protein");

$response["protein"] = array();
while ($r = mysqli_fetch_array($q)) {
    $protein = array();
    $protein["id_protein"] = $r['id_protein'];
    $protein["nama"] = $r['nama'];
    $protein["keterangan"] = $r['keterangan'];
    array_push($response["protein"], $protein);
}
$response["status"] = 0;
$response["message"] = "Get list protein berhasil";

echo json_encode($response);
