<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Intro 1 - PHP For Loop Assignment</title>
</head>
<body>

<h3>Create a program that prints all the odd numbers from 1 to 1000. Use the for loop and don't use any array to do this exercise.</h3>

<?php
function odd_num()
{

    for($i = 1; $i < 1001; $i++)
    {
        if($i % 2 != 0) {
            echo $i . '<br />';
        }
    }

}

odd_num();
?>

</body>
</html>