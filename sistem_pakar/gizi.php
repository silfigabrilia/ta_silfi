<?php
$link_data = '?page=gizi';
$link_update = '?page=update_gizi';

$list_data = '';
$q = "select * from gizi order by id_gizi desc";
$q = mysqli_query($con, $q);
if (mysqli_num_rows($q) > 0) {
    while ($r = mysqli_fetch_array($q)) {
        $id = $r['id_gizi'];
        $list_data .= '
		<tr>
		<td></td>
		<td>' . $r['nama'] . '</td>
		<td>' . $r['keterangan'] . '</td>
		<td>
		<a href="' . $link_update . '&amp;id=' . $id . '&amp;action=edit" class="btn btn-success btn-xs" title="Ubah"><i class="fa fa-edit"></i> Ubah</a> &nbsp;
		<a href="#" data-href="' . $link_update . '&amp;id=' . $id . '&amp;action=delete" data-toggle="modal" data-target="#confirm-delete" class="btn btn-danger btn-xs" title="Hapus"><i class="fa fa-trash"></i> Hapus</a></td>
		</tr>';
    }
}
?>
<div class="box box-success">
    <div class="box-header with-border">
        <h3 class="box-title">Pengetahuan Gizi</h3>
        <div class="box-tools">
            <a href="<?php echo $link_update; ?>" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i> Tambah</a>
        </div>
    </div>
    <div class="box-body">
        <div class="table-responsive">
            <table class="table table-striped table-bordered" id="dataTables1">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Keterangan</th>
                        <th width="150">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php echo $list_data; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>