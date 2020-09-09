<?php
class View {

	public $viewName = NULL;
	public $data = array();
	public $isRender =  FALSE;

	public function __construct($view){
		$this->viewName = $view;
	}

	public function bind($name, $value = ''){
		if(is_array($name)){
			foreach($name as $attr=>$val){
				$this->data[$attr] = $val;
			}
		}
		else $this->data[$name] = $value;
	}

	public function forceRender(){
		$this->isRender = TRUE;
		extract($this->data);
		$fileEx = explode('/',$this->viewName);
		$file = $fileEx[0];
		$name = $fileEx[1];

		$view = ROOT . DS . 'modules' . DS . $file . DS . 'views' . DS . $name . '.view.php';
		// echo $view;die;
		if(file_exists($view)) require_once $view;
		else echo('View Not Found !');
	}

	public function __destruct(){
		if(! $this->isRender) $this->forceRender();
	}
}
?>