<?php
require_once('../database/Database.php');
require_once('../interface/iItem.php');
class Item extends Database implements iItem{
	public function __construct()
	{
		parent:: __construct();
	}

	public function insert_item($iN, $sN, $mN, $b, $a)
	{
		$sql = "INSERT INTO tbl_items(tagid, supplyname,room,brand,quantity)
				VALUES(?,?,?,?,?);
		";
		$result = $this->insertRow($sql, [$iN, $sN, $mN, $b, $a]);
		return $result;
	}
	
	public function update_item($iN, $sN, $mN, $b, $a,$iID)
	{	
		$sql="UPDATE tbl_items
		 	  SET 
		 	  tagid = ?, 
	 		  supplyname = ?, 
			  room = ?, 
			  brand = ?, 
			  quantity = ?
			  WHERE id = ?;
		";
		$result = $this->updateRow($sql, [$iN, $sN, $mN, $b, $a,$iID]);
		return $result;
	}
	public function update_items($iN,$iID)
	{	
		$sql="UPDATE tbl_items
		 	  SET  
			  quantity = ?
			  WHERE tagid = ?;
		";
		$result = $this->updateRow($sql, [$iN,$iID]);
		return $result;
	}
	public function update_tools($iN,$iID)
	{	
		$sql="UPDATE tbl_tools
		 	  SET  
			  quantity = ?
			  WHERE tagid = ?;
		";
		$result = $this->updateRow($sql, [$iN,$iID]);
		return $result;
	}
	public function update_equip($iN,$iID)
	{	
		$sql="UPDATE equipment
		 	  SET  
			  quantity = ?
			  WHERE tagid = ?;
		";
		$result = $this->updateRow($sql, [$iN,$iID]);
		return $result;
	}
	public function get_quantity($id)
	{
		$sql="SELECT quantity
			  FROM tbl_items
			  WHERE tagid = $id
		";
		$result = $this->getRow($sql);
		return $result;
	}

	public function get_item($id)
	{
		$sql="SELECT *
			  FROM tbl_items
			  WHERE id = ?
		";
		$result = $this->getRow($sql, [$id]);
		return $result;
	}

	public function get_all_items()
	{
		/*get all items with the office nga naa sa emp*/
		$sql = "SELECT *
				FROM tbl_items
		";
		$result = $this->getRows($sql);
		return $result;
	}

	public function item_categories()
	{
		$sql = "SELECT * FROM tbl_cat";
		return $this->getRows($sql);
	}

	public function item_conditions()
	{
		$sql = "SELECT * FROM tbl_con";
		return $this->getRows($sql);
	}
	public function delete_item($eid)
	{
		$sql = "DELETE FROM tbl_items WHERE id = ?;";
		return $this->updateRow($sql, [$eid]);
	}

	public function item_report($choice)
	{
		$sql = "";
		if($choice=="all"){
			$sql = "SELECT *
			FROM supp_borrowed";
			
		return $this->getRows($sql);
		}else if($choice == 'Tools'){
			$sql = "SELECT *
					FROM supp_borrowed
					WHERE category = ?";
			return $this->getRows($sql,['tools']);
		}else if($choice == 'Supplies'){
			$sql = "SELECT *
					FROM supp_borrowed
					WHERE category = ?";
			return $this->getRows($sql, ['Supplies']);
		}else if($choice == 'Equipment'){
			//condemed
			$sql = "SELECT *
					FROM supp_borrowed
					WHERE category = ?";
      			return $this->getRows($sql, ["Equipment"]);
		}else if($choice == 'Borrowed'){
			//condemed
			$sql = "SELECT *
					FROM supp_borrowed
					WHERE status = ?";
      			return $this->getRows($sql, ["Borrowed"]);
		}
	}//end item_report
	public function item_report_based_dates($choice)
	{
		$sql = "";
		if($choice=="Daily"){
			$sql = "SELECT * FROM supp_borrowed WHERE date_borrowed = ?;";

			
	return $this->getRows($sql,[date('Y-m-d')]);
		}else if($choice == 'Weekly'){
			$date = date('Y-m-d');
			$month = date('m');
			$day = date('d');
			$year = date('Y');
			$prevWeek6 = $year.'-'.$month.'-'.$day-6;
			$prevWeek5 = $year.'-'.$month.'-'.$day-5;
			$prevWeek4 = $year.'-'.$month.'-'.$day-4;
			$prevWeek3 = $year.'-'.$month.'-'.$day-3;
			$prevWeek2 = $year.'-'.$month.'-'.$day-2;
			$prevWeek1 = $year.'-'.$month.'-'.$day-1;
			$sql = "SELECT *
					FROM supp_borrowed
					WHERE date_borrowed = '$prevWeek1' 
					OR date_borrowed = '$prevWeek2'
					OR date_borrowed = '$prevWeek3'
					OR date_borrowed = '$prevWeek4'
					OR date_borrowed = '$prevWeek5'
					OR date_borrowed = '$prevWeek6'
					OR date_borrowed = '$date'";
		
			return $this->getRows($sql);
		}else if($choice == 'Monthly'){
			$month =strval('-'.date('m').'-');
			$sql = "SELECT * FROM supp_borrowed WHERE date_borrowed LIKE '%$month%'";

			
			return $this->getRows($sql);
		}
	}//end item_report
	public function insert_borrow($one, $two, $three, $four, $five,$six,$seven,$eight,$nine,$ten)
	{
		$sql = "INSERT INTO supp_borrowed(item, name,date_borrowed,contactno,whereplace,returndate,quantity,category,tagid,room,status)
				VALUES(?, ?, ?, ?, ?, ?, ?,?,?,?,NULL);
		";
		$results = $this->insertRow($sql, [$one, $two, $three, $four, $five,$six,$seven,$eight,$nine,$ten]);
		return $results;
	}
	public function insert_borrowed($one, $two, $three, $four, $five,$six,$seven,$eight,$nine,$ten,$eleven)
	{
		$sql = "INSERT INTO supp_borrowed(item, name,date_borrowed,contactno,whereplace,returndate,quantity,category,tagid,room,status)
				VALUES(?, ?, ?, ?, ?, ?, ?,?,?,?,?);
		";
		$results = $this->insertRow($sql, [$one, $two, $three, $four, $five,$six,$seven,$eight,$nine,$ten,$eleven]);
		return $results;
	}
	public function delete_report()
	{
		$sql = "DELETE FROM supp_borrowed";
		
		$results = $this->deleteRow($sql);
		return $results;
	}

}

$item = new Item();

/* End of file Item.php */
/* Location: .//D/xampp/htdocs/deped/class/Item.php */
