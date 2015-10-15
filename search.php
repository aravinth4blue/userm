<?php
include 'config.php';
$search_value 	=mysqli_real_escape_string($conn,$_POST['search']);
$select_qry		="SELECT * FROM tbl_reg where name like '%$search_value%'";
$qry 			= mysqli_query($conn,$select_qry)  or die(mysqli_error($conn));
while($row=mysqli_fetch_array($qry,MYSQLI_BOTH)){
        echo "<tr>";
            echo "<td>".$row['name']."</td>";
            echo "<td>".$row['email']."</td>";
            echo "<td>".$row['dob']."</td>";
            echo "<td>".$row['mobile']."</td>";
			echo '<td><a class="btn btn-xs btn-info" href=read.php?id='.$row["id"].">Read</a>";
			echo '<a class="btn btn-xs btn-danger" href=delete.php?id='.$row["id"].">Delete</a></td>";
			echo '<td><select class="form-control" id="status" name="status"><option value="0" >Allow</option><option value="1">Block</option></select></td>';
        echo "</tr>";
    }
	
	/*else{
	 echo "<tr>";
	 echo 'No records to display';
	 echo "</tr>";
	}*/
	


?>