<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Intro 6 - Count Numbers</title>
</head>
<body>

<h3>Create a program that counts from 1 to 2000. As it loops through each number, have your program generate the number and whether it's an odd number or whether it's an even number.</h3>

<h3>Your program output should look like below:</h3>

<pre>Number is 1.  This is an odd number.
Number is 2.  This is an even number.
Number is 3.  This is an odd number.
...
Number is 2000.  This is an even number.</pre>


<?php
function count_num($start, $stop)
{

    for($i = $start; $i < ($stop + 1); $i++) {

        if($i % 2 !== 0)
        {
            $odd_or_even_msg = 'This is an odd number.';
        }
        else
        {
            $odd_or_even_msg = 'This is an even number.';
        }

        $final_msg = '<p>' . 'Number is ' . $i . '. ' . $odd_or_even_msg . '</p>';
        echo $final_msg;
    }

}

count_num(1, 2000);
?>



</body>
</html>