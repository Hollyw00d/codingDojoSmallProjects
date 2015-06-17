<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Intermediate 1 - Draw Stars</title>
</head>
<body>

<h1>Intermediate 1 - Draw Stars</h1>

<?php
function draw_stars($arr)
{

    foreach($arr as $value)
    {

        if(is_int($value))
        {
            echo str_repeat('*', $value) . '<br />';
        }
        else
        {
            echo strtolower(str_repeat(substr($value, 0, 1), strlen($value)) . '<br />');
        }

    }
}

$x = array(4, "Tom", 1, "Michael", 5, 7, "Jimmy Smith");

draw_stars($x);



?>

</body>
</html>