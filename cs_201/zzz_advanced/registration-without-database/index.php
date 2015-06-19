<?php
session_start();

?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration without a Database</title>
    <link rel="stylesheet" href="css/styles.css"/>

</head>
<body>

<div id="wrapper">

    <h1>Registration without a Database</h1>
    
    <p><strong><span class="red">*</span> items are required.</strong></p>

    <form class="hide-if-no-errors" action="process.php" method="post">

        <p>Email: <input type="text" name="email"/> <span class="red">*</span></p>
        <p>First Name: <input type="text" name="first_name"/> <span class="red">*</span></p>
        <p>Last Name: <input type="text" name="last_name"/> <span class="red">*</span></p>
        <p>Password: <input type="password" name="password"/> <span class="red">*</span></p>
        <p>Confirm Password: <input type="password" name="confirm_password"/> <span class="red">*</span></p>
        <p>Birth Date: <input type="date" name="birth_date"/></p>
        <p>Profile Picture: <input type="file" name="file"/></p>
        <input type="submit" value="Submit"/>

    </form>


    <?php
    if(isset($_SESSION['errors']))
    {
        echo '<div id="errors">';
        foreach($_SESSION['errors'] as $value)
        {
            echo '<p class="red">' . $value . '</p>';
        }
        echo '</div>';
    }
    ?>

    <h3><a href="reset.php">Reset Form</a></h3>


</div>

</body>
</html>