<?php
include '../koneksi.php';

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$response = array();

if (isset($input['hasil']) && isset($input['id_pengguna'])) {

    $hasil = $input['hasil'];
    $id_pengguna = $input['id_pengguna'];
    $tanggal = date('Y-m-d');

    $hsl = explode("#", $hasil);
    $arr_gejala_terpilih = array();

    foreach ($hsl as $val) {
        $q2 = mysqli_query($con, "select id_gejala from gejala where nama_gejala='$val'");
        if (mysqli_num_rows($q2) > 0) {
            $r2 = mysqli_fetch_array($q2);
            $id_gejala = $r2['id_gejala'];
            $arr_gejala_terpilih[] = $id_gejala;
        }
    }

    $id_penyakit_hasil = '';
    $nama_penyakit_hasil = '';

    $isDone = false;

    $gejalaTerpilih = '(';

    $separator = ',';

    for ($i = 0; $i < count($arr_gejala_terpilih); $i++) {
        if (($i + 1) == count($arr_gejala_terpilih))
            $separator = '';

        $gejalaTerpilih .= $arr_gejala_terpilih[$i] . $separator;
    }

    $gejalaTerpilih .= ')';

    // $response['status'] = 0;
    // $response['id_penyakit'] = 1;
    // $response['nama_penyakit'] = $gejalaTerpilih;

    $sqls = mysqli_query($con, "SELECT id_penyakit, COUNT(id_penyakit) as total FROM `rule` WHERE id_gejala IN $gejalaTerpilih group by id_penyakit order by total desc;");
    while ($r = mysqli_fetch_array($sqls)) {
        if (!$isDone) {
            if ($r['total'] >= 3) {
                $id_penyakit_hasil = $r['id_penyakit'];

                $sqlpenyakit = mysqli_query($con, "select id_penyakit,nama_penyakit from penyakit where id_penyakit = $id_penyakit_hasil");
                while ($p = mysqli_fetch_array($sqlpenyakit)) {
                    $nama_penyakit_hasil = $p['nama_penyakit'];
                }

                $isDone = true;
            }
        }
    }

    if ($isDone == false) {
        $sql1 = mysqli_query($con, "select id_penyakit,nama_penyakit from penyakit order by id_penyakit");
        while ($r = mysqli_fetch_array($sql1)) {
            $id_penyakit = $r['id_penyakit'];
            $nama_penyakit = $r['nama_penyakit'];
            $arr_gejala_penyakit = array();
            $sql_at = mysqli_query($con, "select id_gejala from rule where id_penyakit='$id_penyakit' order by id_gejala");
            while ($r_at = mysqli_fetch_array($sql_at)) {
                $id_gejala = $r_at['id_gejala'];
                $arr_gejala_penyakit[] = $id_gejala;
            }

            if (arrays_are_equal($arr_gejala_terpilih, $arr_gejala_penyakit)) {
                // if (!array_diff($arr_gejala_terpilih, $arr_gejala_penyakit)) {
                $id_penyakit_hasil = $id_penyakit;
                $nama_penyakit_hasil = $nama_penyakit;
            }
        }
    }


    if ($nama_penyakit_hasil != '') {
        $q = "insert into riwayat(id_pengguna,id_penyakit,tanggal) values ('" . $id_pengguna . "','" . $id_penyakit_hasil . "','" . $tanggal . "')";
        mysqli_query($con, $q);
    } else {
        $nama_penyakit_hasil = 'Tidak ada jenis penyakit yang sesuai dengan gejala terpilih';
        // $nama_penyakit_hasil = $arr_gejala_terpilih;
        $q = "insert into riwayat(id_pengguna,tanggal) values ('" . $id_pengguna . "','" . $tanggal . "')";
        mysqli_query($con, $q);
    }

    $response["status"] = 0;
    $response["gejala"] = $gejalaTerpilih;
    $response["id_penyakit"] = $id_penyakit_hasil;
    $response["nama_penyakit"] = $nama_penyakit_hasil;
} else {
    $response["status"] = 2;
    $response["message"] = "Parameter ada yang kosong";
}

function arrays_are_equal($array1, $array2)
{
    array_multisort($array1);
    array_multisort($array2);
    return (serialize($array1) === serialize($array2));
}

echo json_encode($response);
