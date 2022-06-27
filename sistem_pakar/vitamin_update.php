<?php
$link_data = '?page=vitamin';
$link_update = '?page=update_vitamin';

$nama = '';
$keterangan = '';

if (isset($_POST['save'])) {
    $error = '';
    $id = $_POST['id'];
    $action = $_POST['action'];
    $nama = $_POST['nama'];
    $keterangan = mysqli_escape_string($con, $_POST['keterangan']);

    if (empty($error)) {
        if ($action == 'add') {
            if (mysqli_num_rows(mysqli_query($con, "select * from vitamin where nama='" . $nama . "'")) > 0) {
                $error = 'nama sudah ada';
            } else {
                $q = "insert into vitamin(nama,keterangan) values ('" . $nama . "','" . $keterangan . "')";
                mysqli_query($con, $q);
                exit("<script>location.href='" . $link_data . "';</script>");
            }
        }
        if ($action == 'edit') {
            $q = mysqli_query($con, "select * from vitamin where id_vitamin='" . $id . "'");
            $r = mysqli_fetch_array($q);
            $nama_tmp = $r['nama'];
            if (mysqli_num_rows(mysqli_query($con, "select * from vitamin where nama='" . $nama . "' and nama<>'" . $nama_tmp . "'")) > 0) {
                $error = 'nama sudah ada';
            } else {
                $q = "update vitamin set nama='" . $nama . "',keterangan='" . $keterangan . "' where id_vitamin='" . $id . "'";
                mysqli_query($con, $q);
                exit("<script>location.href='" . $link_data . "';</script>");
            }
        }
    }
} else {
    $action = empty($_GET['action']) ? 'add' : $_GET['action'];
    if ($action == 'edit') {
        $id = $_GET['id'];
        $q = mysqli_query($con, "select * from vitamin where id_vitamin='" . $id . "'");
        $r = mysqli_fetch_array($q);
        $nama = $r['nama'];
        $keterangan = $r['keterangan'];
    }
    if ($action == 'delete') {
        $id = $_GET['id'];
        mysqli_query($con, "delete from vitamin where id_vitamin='" . $id . "'");
        exit("<script>location.href='" . $link_data . "';</script>");
    }
}
?>
<div class="box box-success">
    <div class="box-header with-border">
        <h3 class="box-title">Pengetahuan Vitamin</h3>
    </div>
    <form class="form-horizontal" action="<?php echo $link_update; ?>" method="post">
        <input name="id" type="hidden" value="<?php echo $id; ?>">
        <input name="action" type="hidden" value="<?php echo $action; ?>">
        <div class="box-body">
            <?php
            if (!empty($error)) {
                echo '<div class="alert bg-danger" role="alert">' . $error . '</div>';
            }
            ?>
            <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Nama</label>
                <div class="col-sm-4">
                    <input name="nama" id="nama" class="form-control" required type="text" value="<?php echo $nama; ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="keterangan" class="col-sm-2 control-label">Keterangan</label>
                <div class="col-sm-4">
                    <input name="keterangan" id="keterangan" class="form-control" required type="text" value="<?php echo $keterangan; ?>">
                </div>
            </div>
        </div>
        <div class="box-footer">
            <div class="text-center col-sm-6">
                <button type="submit" name="save" class="btn btn-success"><i class="fa fa-save"></i> Simpan</button>
                <a href="<?php echo $link_data; ?>" class="btn btn-default"><i class="fa fa-times"></i> Batal</a>
            </div>
        </div>
    </form>
</div>