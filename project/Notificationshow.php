<?php 
include("include/db.php");


 $json = file_get_contents('php://input');
 
 // Decoding the received JSON.
 $obj = json_decode($json,true);
 
 // Populate ID from JSON $obj array and store into $ID variable.
 $id = $obj['id'];
              //  if(isset($_GET["no_of"])){

$sql="SELECT * FROM `problems` WHERE id='$id'";
    $res = mysqli_query($link, $sql); 
 
    
if ($res->num_rows >0) {
 
   while($row[] = $res->fetch_assoc()) {
   
   $item = $row;
   
   $json = json_encode($item, JSON_NUMERIC_CHECK);
   
 }
 
} else {
  echo "No Data Found.";
}
$link->close();
 echo $json;

?>