<?php

use \modules\testlogin\controllers\MainController;

class SatuanController extends MainController {

    public function index() {
        $this->template('satuan' ,array('artikel' => 'test'));
    }


}
?>