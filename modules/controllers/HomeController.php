<?php

use \modules\controllers\MainController;

class HomeController extends MainController {

    public function index() {
        $this->view('dashboard');
    }
    
}
?>