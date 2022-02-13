<?php 
include("include/db.php");

  $return["error"] = false;
  $return["message"] = "";
  $return["success"] = false;

  if(isset($_POST["name"]) && isset($_POST["id"])){
       //checking if there is POST data

       $name = $_POST["name"];
       $id = $_POST["id"];

       $users = mysqli_real_escape_string($link, $name);
       //escape inverted comma query conflict from string

       $sql = "SELECT * FROM `customers` WHERE name= '$name'";
       //building SQL query
       $res = mysqli_query($link, $sql);
       $numrows = mysqli_num_rows($res);
       //check if there is any row
       if($numrows > 0){
           //is there is any data with that username
           $obj = mysqli_fetch_object($res);
           //get row as object
           if($id == $obj->id){
               $return["success"] = true;
              // $return["id"] = $obj->id;
              // $return ["name"] = $obj->name;
            // $return["email"] = $obj->email;
           }else{
               $return["error"] = true;
               $return["message"] = "Your Number-Meter is Incorrect.";
           }
       }else{
           $return["error"] = true;
           $return["message"] = 'No username found.';
       }
  }else{
      $return["error"] = true;
      $return["message"] = 'Send all parameters.';
  }

  mysqli_close($link);

  header('Content-Type: application/json');
  // tell browser that its a json data
  echo json_encode($return);
  //converting array to JSON string
?>