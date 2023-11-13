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
    public function view_return($tagid,$id){
        $sql="SELECT *
        FROM supp_borrowed
        WHERE tagid = ? AND id = ? AND status = 'Borrowed'
        ";
        $result = $this->getRow($sql,[$tagid,$id]);
        return $result;
    } 
    public function return_return($tagid,$item,$dateborrowed,$quan,$setQuan,$category,$myId){
 
        if($category=="Tools"){
            $sql="SELECT quantity
            FROM tbl_tools
            WHERE tagid = ?
            ";
        }else if($category=="Supplies"){
            $sql="SELECT quantity
            FROM tbl_items
            WHERE tagid = ?
            ";
        }else if($category=="Equipment"){
            $sql="SELECT quantity
            FROM equipment
            WHERE tagid = ?
            ";
        }
        
        $result = $this->getRow($sql,[$tagid]);
        $quant =  $result['quantity'];
    
        if($result){
            if($category=="Tools"){
                $update="UPDATE tbl_tools
                SET 
               quantity = ?
               WHERE tagid = ?;
                ";
            }else if($category=="Supplies"){
                $update="UPDATE tbl_items
                SET 
               quantity = ?
               WHERE tagid = ?;
                ";
            }else if($category=="Equipment"){
                $update="UPDATE equipment
                SET 
               quantity = ?
               WHERE tagid = ?;
                ";
            }
        }
       
        $updated = $this->updateRow($update, [$quant+$setQuan,$tagid]);
        if($updated){ 
  
                $quanborrowed="SELECT quantity FROM supp_borrowed
                    WHERE tagid = ? AND date_borrowed = '0000-00-00';
                ";
                $res = $this->getRow($quanborrowed,[$tagid]);
        
            $borrowedQuan =  $res['quantity'];
    
            if($res){
                $updateBorrowed="UPDATE supp_borrowed
                SET 
                quantity = ?
                WHERE tagid = ? AND id = ?  AND date_borrowed = '0000-00-00';
                    ";

               $upd =     $this->updateRow($updateBorrowed, [$borrowedQuan+$setQuan,$tagid,$myId]);
              if($upd){
                        $quanborroweds="SELECT quantity FROM supp_borrowed
                        WHERE tagid = ? AND id = ?  AND date_borrowed = '$dateborrowed';
                    ";
                        $resu = $this->getRow($quanborroweds,[$tagid,$myId]);
                    $borrowedQuans =  $resu['quantity'];
                        
                        if($borrowedQuans){
                            $updateBorrowed="UPDATE supp_borrowed
                            SET 
                            quantity = ?
                            WHERE tagid = ? AND id = ?  AND date_borrowed = '$dateborrowed';
                                ";

                            $upd =     $this->updateRow($updateBorrowed, [$borrowedQuans-$setQuan,$tagid,$myId]);
                           if($upd){
                            $quanborrows="SELECT quantity FROM supp_borrowed
                            WHERE tagid = ? AND id = ?  AND status = 'Borrowed';
                        ";
                            $resul = $this->getRow($quanborrows,[$tagid,$myId]);
                            $borrowedQuans1 =  $resul['quantity'];
                            if($borrowedQuans1<=0){
                                    $sql = "DELETE FROM supp_borrowed WHERE tagid = ? AND id = ?  AND date_borrowed = '$dateborrowed';";
                                    // return "deleted";
                                    $del =  $this->updateRow($sql, [$tagid,$myId]);
                                    return $del;
                            }
                           }
                        }
                        
                        
                        
                 
                    
                 
                }
                        
            }

        }
        return "Sucess";
    }

    public function sortingsDate($fromDate, $toDate){
        $sql="SELECT *
        FROM supp_borrowed
        WHERE (date_borrowed>=? AND date_borrowed<=?) OR
        (item_created>=? AND item_created<=?) 
        ";
       
        $result = $this->getRows($sql,[$fromDate,$toDate,$fromDate,$toDate]);
        return $result;
    }

}
$reps = new Report();

