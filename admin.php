<?php
include 'header.php'; 
require('config.php');
require('function.php');

if(isset($_SESSION['usertype'])){
$usertype=$_SESSION['usertype'];
if($usertype==1){
?>
<script>

$(document).ready( function () {
    
$('#search_key').keyup(function(){
var search_item =$(this).val();
 $.ajax({
    type: "POST",
    url: "search.php",
    data: {search:search_item},
    cache: false,
    success: function(response)
    {
     $('#resultable tbody').html(response);
    
    }
});
});
});

</script>
<section id="admin">
<?php echo "Welcome ".$_SESSION['name']; ?>
<form  class="form-inline">
<div class="form-group">
     <label class="sr-only" for="Name">Name</label>
     <input type="text" id="search_key" class="form-control" id="name" placeholder="name">
     
</div>
<div class="form-group">
<!--<select class="form-control" id="limit" name="limit">
    <option value="5">5</option>
    <option value="10">10</option>
    <option value="15">15</option>
    <option value="20">20</option>
    <option value="25">25</option>
</select>-->
</div>
</form>
<table id="resultable" class="table table-striped table-bordered table-hover">
<thead>
    <tr>
    <th>Name</th>
    <th>Email</th>
    <th>Dob</th>
    <th>Mobile</th>
    <th>Action</th>
    <th>Access</th>
    </tr>
</thead>
<tbody>
<?php
$page           = (int) (!isset($_GET["page"]) ? 1 : $_GET["page"]);
$limit          = 4;
$startpoint     = ($page * $limit) - $limit; 
$statement      = "tbl_reg where usertype='0'";
$query            ="Select * from {$statement} LIMIT {$startpoint} , {$limit}" ;

$result         =mysqli_query($conn,$query )or die(mysqli_error($conn));
while($row=mysqli_fetch_array($result,MYSQLI_BOTH)){
echo "<tr>";
echo "<td>".$row["name"]."</td>";
echo "<td>".$row["email"]."</td>";
echo "<td>".$row["dob"]."</td>";
echo "<td>".$row["mobile"]."</td>";
echo '<td><a class="btn btn-xs btn-info" href=read.php?id='.$row["id"].">Read</a>";
echo '<a class="btn btn-xs btn-danger" href=delete.php?id='.$row["id"].">Delete</a></td>";
echo '<td><select class="form-control" id="status" name="status"><option value="0" >Allow';
echo '</option><option value="1">Block</option></select></td>';

echo "</tr>";

}


?>

</tbody>
</table>
 </section>

   
 
<?php
$query          = "SELECT * FROM {$statement }";

        
$result         = mysqli_query($conn,$query);
$count          = mysqli_num_rows($result);

 echo pagination($count,$limit,$page);
}
}
else{
header("Location: error_authorize.php");
}
include 'footer.php'; ?>