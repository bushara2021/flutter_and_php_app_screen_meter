<?php 
include("include/db.php");

    if(isset($_GET["name"])&&isset($_GET["id"])){
$name=$_GET["name"];
$id=$_GET["id"];

$sqlcustomer="SELECT `no_of`, `connect_line` FROM `customers` WHERE id='$id' and name='$name' ";
    $rescustomer = mysqli_query($link, $sqlcustomer); 
$obj = mysqli_fetch_object($rescustomer);
$no_of=$obj->no_of;
$connect_line=$obj->connect_line;

$sql="SELECT * FROM `adverts` where  no_of='5' or no_of='$no_of'and connect_line='$connect_line' or connect_line='All-User'";
    $res = mysqli_query($link, $sql); 
 
   	
if ($res->num_rows >0) {
 
	 while($row[] = $res->fetch_assoc()) {
	 
	 $item = $row;
	 
	 $json = json_encode($item, JSON_NUMERIC_CHECK);
	 
 }
 
} else {
	echo "No Data Found.";
}
echo $json;
$link->close();
//checking if there is POST data
}else{
echo "No Data Found.";

}
?>