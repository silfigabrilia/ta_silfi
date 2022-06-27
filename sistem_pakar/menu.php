<?php
$page = isset($_GET['page']) ? $_GET['page'] : "";
$level = isset($_SESSION['LOG_LEVEL']) ? $_SESSION['LOG_LEVEL'] : "";
?>
<li <?php if ($page == "") echo 'class="active"'; ?>><a href="./"><i class="fa fa-home"></i> <span>Beranda</span></a></li>
<?php if ($level == "Admin") { ?>
    <li <?php if ($page == "admin" || $page == "update_admin") echo 'class="active"'; ?>><a href="?page=admin"><i class="fa fa-user"></i> <span>Admin</span></a></li>
    <li <?php if ($page == "dokter" || $page == "update_dokter") echo 'class="active"'; ?>><a href="?page=dokter"><i class="fa fa-user-md"></i> <span>Dokter</span></a></li>
    <li <?php if ($page == "user" || $page == "update_user") echo 'class="active"'; ?>><a href="?page=user"><i class="fa fa-users"></i> <span>User</span></a></li>
<?php } elseif ($level == "Dokter") { ?>
    <li <?php if ($page == "gejala" || $page == "update_gejala") echo 'class="active"'; ?>><a href="?page=gejala"><i class="fa fa-heartbeat"></i> <span>Gejala</span></a></li>
    <li <?php if ($page == "penyakit" || $page == "update_penyakit") echo 'class="active"'; ?>><a href="?page=penyakit"><i class="fa fa-medkit"></i> <span>Penyakit</span></a></li>
    <li <?php if ($page == "rule" || $page == "update_rule") echo 'class="active"'; ?>><a href="?page=rule"><i class="fa fa-book"></i> <span>Aturan</span></a></li>
    <li <?php if ($page == "gizi" || $page == "update_gizi") echo 'class="active"'; ?>><a href="?page=gizi"><i class="fa fa-book"></i> <span>Gizi</span></a></li>
    <li <?php if ($page == "karbohidrat" || $page == "update_karbohidrat") echo 'class="active"'; ?>><a href="?page=karbohidrat"><i class="fa fa-book"></i> <span>Karbohidrat</span></a></li>
    <li <?php if ($page == "protein" || $page == "update_protein") echo 'class="active"'; ?>><a href="?page=protein"><i class="fa fa-book"></i> <span>Protein</span></a></li>
    <li <?php if ($page == "lemak" || $page == "update_lemak") echo 'class="active"'; ?>><a href="?page=lemak"><i class="fa fa-book"></i> <span>Lemak</span></a></li>
    <li <?php if ($page == "tingkat_gizi" || $page == "update_tingkat_gizi") echo 'class="active"'; ?>><a href="?page=tingkat_gizi"><i class="fa fa-book"></i> <span>Pengetahuan Tingkat Gizi</span></a></li>
    <li <?php if ($page == "gizi_kurang" || $page == "update_gizi_kurang") echo 'class="active"'; ?>><a href="?page=gizi_kurang"><i class="fa fa-book"></i> <span>Gizi Kurang</span></a></li>
    <li <?php if ($page == "gizi_cukup" || $page == "update_gizi_cukup") echo 'class="active"'; ?>><a href="?page=gizi_cukup"><i class="fa fa-book"></i> <span>Gizi Cukup</span></a></li>
    <li <?php if ($page == "gizi_lebih" || $page == "update_gizi_lebih") echo 'class="active"'; ?>><a href="?page=gizi_lebih"><i class="fa fa-book"></i> <span>Gizi Lebih</span></a></li>
    <li <?php if ($page == "imunitas" || $page == "update_imunitas") echo 'class="active"'; ?>><a href="?page=imunitas"><i class="fa fa-book"></i> <span>Imunitas</span></a></li>
    <li <?php if ($page == "vitamin" || $page == "update_vitamin") echo 'class="active"'; ?>><a href="?page=vitamin"><i class="fa fa-book"></i> <span>Vitamin</span></a></li>
    <li <?php if ($page == "vitamin_a" || $page == "update_vitamin_a") echo 'class="active"'; ?>><a href="?page=vitamin_a"><i class="fa fa-book"></i> <span>Vitamin A</span></a></li>
    <li <?php if ($page == "vitamin_c" || $page == "update_vitamin_c") echo 'class="active"'; ?>><a href="?page=vitamin_c"><i class="fa fa-book"></i> <span>Vitamin C</span></a></li>
    <li <?php if ($page == "vitamin_e" || $page == "update_vitamin_e") echo 'class="active"'; ?>><a href="?page=vitamin_e"><i class="fa fa-book"></i> <span>Vitamin E</span></a></li>
    <li <?php if ($page == "olahraga" || $page == "update_olahraga") echo 'class="active"'; ?>><a href="?page=olahraga"><i class="fa fa-book"></i> <span>Olahraga</span></a></li>
    <li <?php if ($page == "riwayat" || $page == "update_riwayat") echo 'class="active"'; ?>><a href="?page=riwayat"><i class="fa fa-history"></i> <span>Riwayat Diagnosa</span></a></li>
<?php } ?>
<li <?php if ($page == "password") echo 'class="active"'; ?>><a href="?page=password"><i class="fa fa-unlock-alt"></i> <span>Ubah Password</span></a></li>
<li><a href="logout.php"><i class="fa fa-sign-out"></i> <span>Keluar</span></a></li>