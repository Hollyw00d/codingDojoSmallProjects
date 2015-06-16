<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Intro 2 - PHP For Loop Assignment</title>
</head>
<body>

<h3>Create a program that prints all the multiples of 5 from 5 to 1,000,000.</h3>

<?php
function multiples_of_five()
{

    for($i = 5; $i < 1000001; $i += 5)
    {
            echo $i . '<br />';
    }

}

multiples_of_five();
?>

</body>
</html>