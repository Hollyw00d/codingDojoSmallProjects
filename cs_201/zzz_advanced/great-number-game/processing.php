<?php
session_start();

$_SESSION['rand_num_session'] = rand(1, 2);

$_SESSION['my_guess'] = $_POST['guess'];

header('Location: great-number-game.php');
?>