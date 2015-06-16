<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Intro 7 - Multiply Numbers in an Array</title>
</head>
<body>

<p>Create a function called 'multiply()' that reads each value in the array (e.g. $A = array(2, 4, 10, 16)) and returns an array where each value has been multiplied by 5.</p>

<p>Modify this function so that you can pass an additional argument to this function. The function should multiply each value in the array by this additional argument (call this additional argument 'factor' inside the function). For example say $A = array(2,4,10,16). When you say</p>

<pre>$B = multiply($A, 5);
var_dump($B);</pre>

<p>this should dump B which contains [10, 20, 50, 80 ].</p>

<?php
function multiply($arr_to_multiply, $num)
{
    echo '<strong>var_dump output below:</strong><br />';

    foreach($arr_to_multiply as $value)
    {
        $update_arr_values = $value * $num;
        echo var_dump($update_arr_values);
    }

}

$a = array(2,4,10,16);

multiply($a, 5);

?>



</body>
</html>