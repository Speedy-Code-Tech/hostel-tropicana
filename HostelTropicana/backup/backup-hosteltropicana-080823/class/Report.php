<?php
require_once('../database/Database.php');
require_once('../interface/iPosition.php');
class Report extends Database {
    public function get_items(){
        $sql = "SELECT DISTINCT item FROM supp_borrowed;";
        return $this->getRows($sql);
    }
    public function get_all_tools($choice){
        if($choice=="all"){
            $sql = "SELECT * FROM supp_borrowed;";
        }else{
            $sql = "SELECT * FROM supp_borrowed WHERE item LIKE '%$choice%'";
        }
        return $this->getRows($sql);
    }
    public function get_tools($id)
	{
		$sql="SELECT *
			  FROM supp_borrowed
			  WHERE id = $id
		";
		$result = $this->getRow($sql);
		return $result;
	}
}
$reps = new Report();