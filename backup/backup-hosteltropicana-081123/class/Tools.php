<?php
require_once('../database/Database.php');
require_once('../interface/iTools.php');
class Tools extends Database implements iTools{
	public function __construct()
	{
		parent:: __construct();
	}

	public function insert_tools($iN, $sN, $mN, $b)
	{
		$sql = "INSERT INTO tbl_tools(tagid, toolname,room,quantity)
				VALUES(?,?,?,?);
		";
		$result = $this->insertRow($sql, [$iN, $sN, $mN, $b]);
		return $result;
	}
	public function get_all_tools()
	{
		/*get all items with the office nga naa sa emp*/
		$sql = "SELECT *
				FROM tbl_tools
		";
		$result = $this->getRows($sql);
		return $result;
	}

	public function delete_item($eid)
	{
		$sql = "DELETE FROM tbl_tools WHERE id = ?;";
		return $this->updateRow($sql, [$eid]);
	}
	public function get_tools($id)
	{
		$sql="SELECT *
			  FROM tbl_tools
			  WHERE id = ?
		";
		$result = $this->getRow($sql, [$id]);
		return $result;
	}
	public function update_tool($iN,$id)
	{	
		$sql="UPDATE tbl_tools
		 	  SET  
			  quantity = ?
			  WHERE id = ?;
		";
		$result = $this->updateRow($sql, [$iN,$id]);
		return $result;
	}
	public function update_tools($iN, $sN, $mN, $b,$id)
	{	
		$sql="UPDATE tbl_tools
		 	  SET 
		 	  tagid = ?, 
	 		  toolname = ?, 
			  room = ?, 
			  quantity = ?
			  WHERE id = ?;
		";
		$result = $this->updateRow($sql, [$iN, $sN, $mN, $b,$id]);
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

$item = new Tools();