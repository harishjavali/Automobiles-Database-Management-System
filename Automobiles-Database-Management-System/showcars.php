<html>
<head>
<title>Used Cars: Cars Available</title>
<?php
include_once "dbms.php";

if(!$conn)
		die("connection failed".mysqli_connect_error());
else
		echo "connected";
	
	$sql1="SELECT * FROM cars_for_sale";
$result=mysqli_query($conn,$sql1);
if($result)
{
	 while($row=mysqli_fetch_assoc($result)){
                    foreach($row as $key=>$val){
                        echo "{$key}:"."{$val}<br />";
                    }
                    echo "<br /><hr /><br />";
                }
                
            }
/*	while($row= mysqli_fetch_assoc($result))
 {//var_dump($row);
echo $row['cars_for_sale_id'];
 echo "<br>";
 echo $row['manufacture_name'];
 echo "<br>";
 }
 }*/
 ?>
 </head>
 </html>
 