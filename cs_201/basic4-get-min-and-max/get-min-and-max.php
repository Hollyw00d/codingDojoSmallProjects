<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Basic 4 - Get Max and Min</title>
</head>
<body>

<h1>Basic 4 - Get Max and Min</h1>

<?php
function get_max_and_min($arr)
{

    $max = $arr[0];
    $min = $arr[0];

    for($i = 0; $i < count($arr); $i++)
    {

        if($arr[$i] > $max)
        {
            $max = $arr[$i];
        }

        if($arr[$i] < $min)
        {
            $min = $arr[$i];
        }

    }

    return array('max' => $max, 'min' => $min);

}

$sample = array(135, 2.4, 2.67, 1.02, 1.23, 332, 2);

get_max_and_min($sample);

$output = get_max_and_min($sample);

var_dump($output);
?>

</body>
</html>