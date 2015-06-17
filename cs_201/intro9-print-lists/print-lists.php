<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Intro 9 - Print Lists</title>
</head>
<body>

<p>Create a function called 'print_lists' that takes any array and prints each value in the array in <span style="white-space:pre">&lt;li&gt;</span>. For example, running print_lists($A) where $A = array(2,3,'hello');.</p>


<span style="white-space:pre">
&lt;ul&gt;
    &lt;li&gt;2&lt;/li&gt;
    &lt;li&gt;3&lt;/li&gt;
    &lt;li&gt;hello&lt;/li&gt;
&lt;/ul&gt;
</span>

<?php
$a = array(2, 3, 'hello');

function print_lists($arr)
{
    echo '<p><strong>PHP print_lists function below</strong></p><ul>';
        foreach($arr as $value)
        {
            echo '<li>' . $value . '</li>';
        }
    echo '</ul>';
}

print_lists($a);
?>


</body>
</html>