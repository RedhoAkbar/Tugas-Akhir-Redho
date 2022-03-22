<?php
include "config/koneksi.php"; 
function anti_injection($data){
  $filter = mysql_real_escape_string(stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES))));
  return $filter;
}
$username = anti_injection($_POST['username']);
$pass     = anti_injection($_POST['password']);
// pastikan username dan password adalah berupa huruf atau angka.
if (!ctype_alnum($username) OR !ctype_alnum($pass)){
  echo "Sekarang loginnya tidak bisa di injeksi lho.";
}
else {
$pass=md5($_POST['password']);
$login = mysql_query("SELECT * FROM users WHERE id_user='$username' AND password='$pass'");
$ketemu=mysql_num_rows($login);
$r=mysql_fetch_array($login);
		if ($ketemu > 0) {
			session_start();
			("namauser");
			("namalengkap");
			("passuser");
			("level");
		
			$_SESSION['namauser']    = $r['id_user'];
			$_SESSION['namalengkap'] = $r['nama_lengkap'];
			$_SESSION['passuser']    = $r['password'];
			$_SESSION['level']    = $r['level'];
			header('location:adminweb/index.php?module=home');
		}
		else
		{?>
			<script language="JavaScript">
			alert('Username atau Password tidak sesuai !');
			document.location='admin.php';
			</script>
		<?php
	}
}  
?>