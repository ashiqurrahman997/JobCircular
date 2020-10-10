<?php
   session_start();
   session_regenerate_id(); 
   
   
   if(isset($_POST['submit'])&&$_POST['submit']=='NO')
   {
       
        $y="yes";
		$i=$_POST['circularid'];
		
       $db_handle=mysqli_connect("localhost","root","","dreamjob") or die("Could not connect");
       $sql25="UPDATE `jobnews` SET `approve`='YES' WHERE approve='NO' and id='$i'";
       $result25=mysqli_query($db_handle,$sql25) or die("Could not execute");
       mysqli_close($db_handle);
   }
   
    if(isset($_POST['submit'])&&$_POST['submit']=='YES')
   {
       
        $y="yes";
		$i=$_POST['circularid'];
		
       $db_handle=mysqli_connect("localhost","root","","dreamjob") or die("Could not connect");
       $sql25="UPDATE `jobnews` SET `approve`='NO' WHERE approve='YES' and id='$i'";
       $result25=mysqli_query($db_handle,$sql25) or die("Could not execute");
       mysqli_close($db_handle);
   }
 ?>
             
 
<!doctype html>
<html>
 <title>ADMIN</title>
    <head>
	 <meta charset="utf-8">
	 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
       
	   <style>
           body{
			   padding-left=20px;
			   background:#ff8080;
		   }

            span{
               color:darkblue;
            }
			
            p{
			  text-align: center;
               font-size:40px;
               font-style:bold;
             
               color:yellow;
               animation-name: example;
               animation-duration: 2s;
               animation-iteration-count:infinite;
               text-shadow:2px 2px;
            }
            @keyframes example {
                     0%   {color: blue;}
                      25% {color: gold;}
                      50% {color: red;}
                      100% {color: orange;}
            }
            
        </style>
    </head>
    <body >
	
           <br><br>
		   
            <p >ADMIN</p>
			<br><br>
            <?php
                $db_handle=mysqli_connect("localhost","root","","dreamjob") or die("Could not connect");
                $sql4="SELECT * FROM `jobnews`" ;
                $result4=mysqli_query($db_handle,$sql4) or die("Could not execute");
                while($row4=mysqli_fetch_array($result4))
                {
                    $id=$row4['id'];
                    $logo=$row4['logo'];
                    $institutionname=$row4['institutionname'];
                    $post=$row4['post'];
                    $eligibility=$row4['eligibility'];
                    $experience=$row4['experience'];
                    $salary=$row4['salary'];
                    $lastdatetoapply=$row4['lastdatetoapply'];
                    $region=$row4['region'];
                    $category=$row4['category'];
					$approve=$row4['approve'];
                    echo "<img src='$logo' style='float:left'><span style='margin-left:30px;font-size:25px;font-style:bold'>$institutionname</span>";
                    ?>
                    
                   
                  <div class="container">      
                  <table class="table table-striped">
					
					 <thead>
					 <tr>
                  <th> Post: </th>
                  <th>     Eligibility: </th>
                  <th>       Experience: </th>
                  <th>      Salary </th>
                  <th>     Deadline </th> 
			      <th>    Approve</th> 
                     </tr>
					</thead>
					<tr>
					
                   
                   <td>  <?php echo $post;?>  </td> 
                   <td>    <?php echo $eligibility; ?> </td> 
                   <td>  <?php echo $experience; ?> </td> 
                   <td>  <?php echo $salary; ?>  </td> 
                   <td>   <?php echo $lastdatetoapply; ?> </td> 
                   <td>   <form name="applyform"  method="POST" >
                      <input type="submit" name="submit" value=<?php echo $approve ?> style="background:lightgreen;font-size:15px;"></input>
                       <input type="hidden" name="circularid" value=<?php echo $id ?>></input>
                    </form> </td> 
				
					</tr>
					</table>
					</div>
                    <hr></hr>
                    </div>
                    <?php
                }
                mysqli_close($db_handle);
            ?>

    </body>
</html>
