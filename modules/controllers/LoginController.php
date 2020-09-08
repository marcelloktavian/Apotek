<?php

class LoginController extends Controller {

	public function index() {

		$login = isset($_SESSION["login"]) ? $_SESSION["login"] : '';

		if($login!=='') {
			$this->redirect('index.php');
		}

		$masuk = null;

		if($_SERVER["REQUEST_METHOD"] == "POST") {

			$masuk = false;

			$username = isset($_POST["username"]) ? $_POST["username"] : '';
			$password = isset($_POST["password"]) ? $_POST["password"] : '';

			//ambil nama tabel
			$this->model('user');

			$user = $this->user->getWhere(array(
				'nama' => $username,
				'pass' => $password,
			));

			if(count($user) > 0) {
				//berhasil masuk
				$masuk = true;
				$_SESSION["login"] = $user[0];

				$this->redirect('index.php');
			}
		}
		$view = $this->view('login')->bind('masuk', $masuk);
	}

	public function logout() {
		unset($_SESSION["login"]);
		$this->redirect('index.php');
	}
	
}
?>