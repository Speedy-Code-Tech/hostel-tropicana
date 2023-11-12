<?php
require_once('../database/Database.php');
require_once('../interface/iEquipment.php');
class Equipment extends Database implements iEquipment{
	public function __construct()
	{
		parent:: __construct();
	}

	public function insert_equipment($iN, $sN, $mN, $b,$bb)
	{
		$sql = "INSERT INTO equipment(tagid, itemname,room,brand,quantity)
				VALUES(?,?,?,?,?);
		";
		$result = $this->insertRow($sql, [$iN, $sN, $mN, $b,$bb]);
		return $result;
	}
	public function get_all_equipment()
	{
		/*get all items with the office nga naa sa emp*/
		$sql = "SELECT *
				FROM equipment
		";
		$result = $this->getRows($sql);
		return $result;
	}

	public function delete_equipment($eid)
	{
		$sql = "DELETE FROM equipment WHERE id = ?;";
		return $this->updateRow($sql, [$eid]);
	}
	public function get_equipment($id)
	{
		$sql="SELECT *
			  FROM equipment
			  WHERE id = ?
		";
		$result = $this->getRow($sql, [$id]);
		return $result;
	}

	public function update_equipment($iN, $sN, $mN, $b,$id,$a)
	{	
		$sql="UPDATE equipment
		 	  SET 
		 	  tagid = ?, 
	 		  itemname = ?, 
			  room = ?, 
			  brand = ?,
			  quantity = ?
			  WHERE id = ?;
		";
		$result = $this->updateRow($sql, [$iN, $sN, $mN, $b,$id,$a]);
		return $result;
	}
	public function insert_borrow($one, $two, $three, $four, $five,$six,$seven,$eight,$nine,$ten)
	{
		$sql = "INSERT INTO supp_borrowed(item, name,date_borrowed,contactno,whereplace,returndate,quantity,category,tagid,room,status)
				VALUES(?, ?, ?, ?, ?, ?, ?,?,?,?,NULL);
		";
		$results = $this->insertRow($sql, [$one, $two, $three, $four, $five,$six,$seven,$eight,$nine,$ten]);
		return $results;
	}
}
$item = new Equipment();