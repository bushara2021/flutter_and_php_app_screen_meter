<?php 
include("include/db.php");

  $return["error"] = false;
  $return["message"] = "";
  $return["success"] = false;
  $return["number"] = "";
    if(isset($_GET["name"])&&isset($_GET["id"])&&isset($_GET["type"])&&isset($_GET["text"])&&isset($_GET["phone"])){
$name=$_GET["name"];
$id=$_GET["id"];
$phone=$_GET["phone"];
$type=$_GET["type"];
$text=$_GET["text"];

$sqlcustomer="SELECT * FROM `customers` WHERE id='$id' and name='$name' ";
    $rescustomer = mysqli_query($link, $sqlcustomer); 
$obj = mysqli_fetch_object($rescustomer);
$no_of=$obj->no_of;
$connect_line=$obj->connect_line;
$location=$obj->location;

$sqloffice="SELECT officer_name  FROM `officers` WHERE id='$no_of'";
    $resoffice = mysqli_query($link, $sqloffice); 
$obj = mysqli_fetch_object($resoffice);
$officer_name=$obj->officer_name;



if($no_of!=0){
  $date=date("Y/m/d");
$datetime=date("h:i:sa");
$Date=$date." ".$datetime;
$sql="INSERT INTO `problems` ( `no_of`, `no_con`, `phone`, `text`, `typ_t`, `selve`, `location`, `created_at`) VALUES ( '$no_of', '$id', '$phone', '$text', '$type', '$officer_name', '$location in $connect_line', '$Date');";
    $res = mysqli_query($link, $sql); 

if ($res) {
  $return["success"] = true;
  $sqlproblems="SELECT * FROM `problems` WHERE no_con='$id' and created_at='$Date' ";
    $resproblems = mysqli_query($link, $sqlproblems); 
$obj = mysqli_fetch_object($resproblems);

  
   $return["number"] =$obj->id;
} else {
	  $return["error"] = true;
    $return["message"] = "Your Notification already sending please wait";
}
}

//checking if there is POST data
}else{
echo "No Data Found.";

}

mysqli_close($link);

  header('Content-Type: application/json');
  // tell browser that its a json data
  echo json_encode($return);

?>