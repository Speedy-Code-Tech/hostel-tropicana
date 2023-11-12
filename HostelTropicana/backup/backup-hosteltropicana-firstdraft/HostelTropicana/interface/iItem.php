<?php 
interface iItem{
	public function insert_item($iN, $sN, $mN, $b, $a);
	public function update_item($iN, $sN, $mN, $b, $a,$iID);
	public function get_item($id);
	public function get_all_items();
	public function item_categories();
	public function item_conditions();
	public function item_report($choice);
	public function delete_item($id);
	public function insert_borrow($one, $two, $three, $four, $five,$six,$seven,$eight,$nine,$ten);
}


