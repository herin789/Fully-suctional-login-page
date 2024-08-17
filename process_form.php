<!-- login page -->
<?php
    $user="root";
    $pass="";
    $db="login";
    $host="localhost";
    $conn=new mysqli($host,$user,$pass,$db);
    if($conn->connect_error)
    {
        die("Connection failed: ".$conn->connect_error);
    }
    else 
    {
        echo "Connected successfully";
    }
        $user =$_REQUEST['Username'];
        $pass = $_REQUEST['pass'];
        $sql = "INSERT INTO `login`.`login` (`Username`, `Password`, `date`) VALUES ('$user','$pass', current_timestamp());";
        if ($conn->query($sql) === TRUE) {
            echo "New record created successfully";
        } else {
            echo "Error: ". $sql. "<br>". $conn->error;
        }
        $conn->close();
        header("Location: home.html");
?>