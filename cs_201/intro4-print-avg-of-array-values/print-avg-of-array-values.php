<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Intro 3 - In PHP Print the Average of Array Values</title>
</head>
<body>

<h3>Create a program that prints the average of the values in the array called "A". Array "A" should have the following values:<br />
    [1, 2, 5, 10, 255, 3].</h3>

<?php
function avg_of_array_nums()
{

    $a = array(1, 2, 5, 10, 255, 3);

    $array_sum = 0;

    for($i = 0; $i < count($a); $i ++)
    {
        $array_sum += $a[$i];
    }

    echo 'Array Average: ' . $array_sum / count($a);

}

avg_of_array_nums();
?>

</body>
</html>