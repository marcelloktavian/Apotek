<?php

use \modules\controllers\MainController;

class HomeController extends MainController {

	public function index() {
		$data = $_SESSION["login"];
		
		$this->template('home', array('userData' => $data));
	}

}
?>