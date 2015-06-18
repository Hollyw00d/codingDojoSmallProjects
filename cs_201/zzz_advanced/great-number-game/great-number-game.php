<?php
session_start();
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Great Number Game Assignment</title>

</head>
<body>

<h1>Welcome to the Great Number Game!</h1>

<p>I am thinking of a number between 1 and 100.</p>

<p class="hide-if-correct"><em>Take a guess!</em></p>

<h3><?php
if(isset($_SESSION['rand_num_session']) && $_SESSION['my_guess'] < $_SESSION['rand_num_session'])
{
    echo 'You are too low!';
}
elseif(isset($_SESSION['rand_num_session']) && $_SESSION['my_guess'] > $_SESSION['rand_num_session'])
{
    echo 'You are too high!';
}
elseif(isset($_SESSION['rand_num_session']) && $_SESSION['my_guess'] == $_SESSION['rand_num_session'])
{
    echo 'You are correct and the random number is ' .
$_SESSION['rand_num_session'] . '!!!';
    echo '
    <style type="text/css">
        .hide-if-correct {
            display: none;
        }
    </style>';
}
?></h3>

<h6>Session Random Number: <?php echo $_SESSION['rand_num_session']; ?><br />
My Guess: <?php echo $_SESSION['my_guess']; ?>
</h6>


    <form class="hide-if-correct" action="processing.php" method="post">

        <p><label for="guess"><input type="number" name="guess" placeholder="My Guess"/></label></p>

        <p><label for="submit"><input type="submit" value="Submit"/></label></p>

    </form>



<p><a href="reset.php">Reset Game</a></p>

</body>
</html>