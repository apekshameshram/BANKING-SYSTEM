<?php
$page_title = "Transfer money";
 ?>

<?php include "config.php"; ?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

     
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Document</title>
</head>

 <body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card mt-5">
                <div class="card-header">
                    <h4>Transfer Money</h4>
                </div>
                <div class="card-body">
                    <form action="" method = "POST" >
                        <div class="form-group mb-3">
                            <label for="">From :-</label>
                                <select name="Sender" id="" class= "form-control" required>
                                    <option value=""><--Select Sender--></option>
                                    <?php

                                        $query = "SELECT * FROM user";
                                        $select = mysqli_query($conn,$query);
                                        if(!$select)
                                        {
                                            die('query failed'.mysqli_error($conn));
                                        }

                                        while($row = mysqli_fetch_array($select))
                                        {
                                            $c_name = $row['Name'];
                                            echo "<option value = '$c_name'>$c_name</option><br>";
                                        }
                                    ?>
                                </select>
                        </div>

                        <div class="form-group mb-3">
                            <label for="">Transfer To:-</label>
                                <select name="Receiver" id="" class= "form-control" required>
                                    <option value=""><--Select Reciver--></option>
                                    <?php

                                        $query = "SELECT * FROM user";
                                        $select = mysqli_query($conn,$query);
                                        if(!$select)
                                        {
                                            die('query failed'.mysqli_error($conn));
                                        }

                                        while($row = mysqli_fetch_array($select))
                                        {
                                            $c_name = $row['Name'];
                                            echo "<option value = '$c_name '>$c_name </option><br>";
                                        }
                                    ?>
                                </select>
                        </div>
                        <div class="form-group mb-3">
                            <label for="">Amount :-</label>
                            <input type="text" name = "Amount" class= "form-control" placeholder="Enter Amount" required>
                        </div>
                        <div class="form-group mb-3">
                            <button type = "submit" name = "transfer" class= "btn btn-primary">Process To Pay</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php

if(isset($_POST['transfer']))
{
    $sender = $_POST['Sender'];
    $receiver = $_POST['Receiver'];
    $amount = $_POST['Amount'];

    $query = "INSERT INTO transaction(Sender,Receiver,Amount) VALUES ('$sender','$receiver','$amount')";
    $insert = mysqli_query($conn,$query);
    if($insert)
    {
         echo '<script type = "text/javascript"> alert("Transaction Successful") </script>';
    }
    else
    {
        echo '<script type = "text/javascript"> alert("Transaction fail") </script>';
    }
}


?>


