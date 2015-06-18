<?php
session_start();

// Reset form by destroying session & redirect to great-number-game.php
session_destroy();
header('Location: great-number-game.php');
?>