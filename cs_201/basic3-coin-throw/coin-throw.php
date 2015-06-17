<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Basic 3 - Coin Throw</title>
</head>
<body>

<h1>Basic 3 - Coin Throw</h1>

<?php
function coin_throw($min, $max)
{

    $heads_counter = 0;
    $tails_counter = 0;
    for($i = $min; $i < $max + 1; $i++)
    {
        $heads_or_tails = rand(0, 1);
        if($heads_or_tails == 0)
        {
            $heads_or_tails = 'head';
            $heads_counter++;
        }
        else
        {
            $heads_or_tails = 'tail';
            $tails_counter++;
        }

        echo '<p>Attempt #' . $i . ': Throwing coin... It\'s a ' . $heads_or_tails . '!... Got ' . $heads_counter . ' head(s) so far and ' . $tails_counter . ' tail(s) so far</p>';
    }
}

coin_throw(1, 5000);
?>


</body>
</html>