<?php
session_start();

if(!isset($_SESSION['rand_num_session']))
{
    $_SESSION['rand_num_session'] = rand(1, 100);
}

$_SESSION['my_guess'] = $_POST['guess'];

header('Location: great-number-game.php');
?>