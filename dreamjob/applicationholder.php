<?php
   session_start();
   session_regenerate_id();
 ?>
 <!doctype html>
 <html>
     <head>
         <style>
             h1{
               margin-left:220px;
            }
            h2{
              margin-left:150px;
            }
            span{
               font-size:30px;
               color:blue;
               margin-left:30px;
            }
            span.resume{
               font-size:20px;
               color:blue;
            }
            div{
               color:black;
               font-size:20px;
            }
         </style>
     </head>
     <body>
          <h1>You Posted This Circular</h1>
          <?php
            $employerusername=$_SESSION['username'];

            $db_handle=mysqli_connect("localhost","root","","dreamjob") or die("Could not connect");
            $sql26="select id,institutionname,post from jobnews where employerusername='$employerusername'";
            $result26=mysqli_query($db_handle,$sql26) or die("Could not execute");
            while($row26=mysqli_fetch_array($result26))
            {
                $circularid=$row26['id'];
                ?><span><?php echo $row26['institutionname'];?></span><br>
                <span><?php echo "POST: ".$row26['post']; ?></span><br>
                <h2>People who have shown interest for this job : </h2>
            <?php
                $sql27="select applicantusername from applicationholder where circularid='$circularid'";
                $result27=mysqli_query($db_handle,$sql27) or die("Could not execute");
                while($row27=mysqli_fetch_array($result27))
                {
                    $applicantusername=$row27['applicantusername'];
                    $sql28="select * from resumes where username='$applicantusername'";
                    $result28=mysqli_query($db_handle,$sql28) or die("Could not execute 28th query");
                    while($row28=mysqli_fetch_array($result28))
                    {
                        echo $row28['profilepicture']."<br>";?>
                        <div>
                        <span class="resume">Name : </span><?php echo $row28['fullname']."<br><br>";?>
                        <span class="resume">Father's Name : </span><?php echo $row28['fathername']."<br><br>";?>
                        <span class="resume">Mother's Name : </span><?php echo $row28['mothername']."<br><br>";?>
                        <span class="resume">Date of Birth : </span><?php echo $row28['dateofbirth']."<br><br>";?>
                        <span class="resume">Gender : </span><?php echo $row28['gender']."<br><br>";?>
                        <span class="resume">Nationality : </span><?php echo $row28['nationality']."<br><br>";?>
                        <span class="resume">Religion : </span><?php echo $row28['religion']."<br><br>";?>
                        <span class="resume">Highest Education : </span><?php echo $row28['highesteducation']."<br><br>";?>
                        <span class="resume">GPA/CGPA : </span><?php echo $row28['gpacgpa']."<br><br>";?>
                        <span class="resume">Experience : </span><?php echo $row28['experience']."<br><br>";?>
                        <span class="resume">Email : </span><?php echo $row28['email']."<br><br>";?>
                        <span class="resume">Contact No: </span><?php echo $row28['contactno']."<br><br>";?>
                       <hr></hr> <br><br>
                      </div>
                      <?php
                    }
                }
            }
         ?>
     </body>
 </html>
