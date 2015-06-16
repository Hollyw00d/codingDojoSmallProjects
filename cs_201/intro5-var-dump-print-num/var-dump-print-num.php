<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Intro 5 - Var Dump Print Num</title>
</head>
<body>

<h3>Create an array that contains all the odd numbers between 1 to 20,000. Use the var_dump() at the end to display the array values without using loops.</h3>

<?php
function var_dump_print_num()
{
    $num_array = array();

    for($i = 1; $i < 20001; $i ++)
    {
        if($i % 2 !== 0)
        {
            array_push($num_array, $i);
        }

    }

    var_dump($num_array);
}

var_dump_print_num();
?>

</body>
</html>