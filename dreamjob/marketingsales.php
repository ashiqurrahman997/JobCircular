<?php
session_start();
?>
<!doctype html>
<html>
    <header>
        <style>
            div{
               font-size:20px;
            }
            span{
               color:darkblue;
            }
            p{
               font-size:40px;
               font-style:bold;
               margin-left:320px;
               margin-top:5px;
               color:yellow;
               animation-name: example;
               animation-duration: 4s;
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
    </header>
    <body>
        <p>Jobs in Marketing/Sales Sector</p>
        <?php
                $db_handle=mysqli_connect("localhost","root","","dreamjob") or die("Could not connect");
                $sql22="select * from jobnews where category='Marketing/Sales'";
                $result22=mysqli_query($db_handle,$sql22) or die("Could not execute");
                while($row22=mysqli_fetch_array($result22))
                {
                    $id=$row22['id'];
                    $logo=$row22['logo'];
                    $institutionname=$row22['institutionname'];
                    $post=$row22['post'];
                    $eligibility=$row22['eligibility'];
                    $experience=$row22['experience'];
                    $salary=$row22['salary'];
                    $lastdatetoapply=$row22['lastdatetoapply'];
                    $region=$row22['region'];
                    $category=$row22['category'];
                    echo "<img src='$logo' style='float:left'><span style='margin-left:30px;font-size:32px;font-style:bold'>$institutionname</span><br>";
                    ?>
                    <div>
                    <br></br>
                    <span>Post: </span><?php echo $post;?><br></br>
                    <span>Eligibility: </span><?php echo $eligibility; ?><br></br>
                    <span>Experience: </span><?php echo $experience; ?><br></br>
                    <span>Salary: </span><?php echo $salary; ?><br></br>
                    <span>Deadline: </span><?php echo $lastdatetoapply; ?><br></br>
                    <form name="applyform" action="applybutton.php" method="POST" target="_blank"><!--target attribute use na korle applybutton.php iframe er vetor open hoy.-->
                       <input type="submit" name="applybutton" value="Apply Online" style="background:lightgreen;font-size:15px;"></input><br></br>
                       <input type="hidden" name="circularid" value=<?php echo $id ?>></input>
                    </form>
                    <hr></hr>
                    </div>
                    <?php
                }
            ?>
    </body>
</html>


