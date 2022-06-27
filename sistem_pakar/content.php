<?php
switch($page){
	case 'riwayat':
		include "riwayat.php";
		break;
	case 'update_riwayat':
		include "riwayat_update.php";
		break;
	case 'user':
		include "user.php";
		break;
	case 'update_user':
		include "user_update.php";
		break;
	case 'dokter':
		include "dokter.php";
		break;
	case 'update_dokter':
		include "dokter_update.php";
		break;
	case 'admin':
		include "admin.php";
		break;
	case 'update_admin':
		include "admin_update.php";
		break;
	case 'gejala':
		include "gejala.php";
		break;
	case 'update_gejala':
		include "gejala_update.php";
		break;
	case 'penyakit':
		include "penyakit.php";
		break;
	case 'update_penyakit':
		include "penyakit_update.php";
		break;
	case 'rule':
		include "rule.php";
		break;
	case 'update_rule':
		include "rule_update.php";
		break;

	//pengetahuan 
	case 'gizi':
		include "gizi.php";
		break;
	case 'update_gizi':
		include "gizi_update.php";
		break;

	case 'karbohidrat':
		include "karbohidrat.php";
		break;
	case 'update_karbohidrat':
		include "karbohidrat_update.php";
		break;

	case 'protein':
		include "protein.php";
		break;
	case 'update_protein':
		include "protein_update.php";
		break;

	case 'lemak':
		include "lemak.php";
		break;
	case 'update_lemak':
		include "lemak_update.php";
		break;
	//
	case 'tingkat_gizi':
		include "tingkat_gizi.php";
		break;
	case 'update_tingkat_gizi':
		include "tingkat_gizi_update.php";
		break;
			
	case 'gizi_kurang':
		include "gizi_kurang.php";
		break;
	case 'update_gizi_kurang':
		include "gizi_kurang_update.php";
		break;
		
	case 'gizi_cukup':
		include "gizi_cukup.php";
		break;
	case 'update_gizi_cukup':
		include "gizi_cukup_update.php";
		break;
		
	case 'gizi_lebih':
		include "gizi_lebih.php";
		break;
	case 'update_gizi_lebih':
		include "gizi_lebih_update.php";
		break;
	//
	case 'imunitas':
		include "imunitas.php";
		break;
	case 'update_imunitas':
		include "imunitas_update.php";
		break;
		
	case 'vitamin':
		include "vitamin.php";
		break;
	case 'update_vitamin':
		include "vitamin_update.php";
		break;

	case 'vitamin_a':
		include "vitamin_a.php";
		break;
	case 'update_vitamin_a':
		include "vitamin_a_update.php";
		break;

	case 'vitamin_c':
		include "vitamin_c.php";
		break;
	case 'update_vitamin_c':
		include "vitamin_c_update.php";
		break;

	case 'vitamin_e':
		include "vitamin_e.php";
		break;
	case 'update_vitamin_e':
		include "vitamin_e_update.php";
		break;
		
	case 'olahraga':
		include "olahraga.php";
		break;
	case 'update_olahraga':
		include "olahraga_update.php";
		break;

	//
	case 'password':
		include "password.php";
		break;

	default:
		include "beranda.php";
		break;
}
