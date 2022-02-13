<?php 
include("include/db.php");
 if(isset($_GET["name"])&&isset($_GET["id"])){
$name=$_GET["name"];
$id=$_GET["id"];

$sql="SELECT * FROM `power` where no_meter='$id'";
    $res = mysqli_query($link, $sql); 
 
    
if ($res->num_rows >0) {
 
   while($row[] = $res->fetch_assoc()) {
   
   $item =$row;
   
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