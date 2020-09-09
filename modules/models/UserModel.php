<?php

class UserModel extends Model{

	public function get_data($user, $pass)
	{
		$sql = "SELECT du.id, du.nama, du.pass, du.group_id, gp.nama as role FROM `data_user` du JOIN `group` gp on gp.id = du.group_id WHERE du.deleted=0 and (du.nama='".$user."' and du.pass='".$pass."')";

		$this->db->query($sql);

		return $this->db->execute()->toObject();
	}
}