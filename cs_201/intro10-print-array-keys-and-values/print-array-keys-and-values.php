<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Intro 10 - Print Array Keys and Values</title>
</head>
<body>

<p>Let's create a new array called $users that have the following keys and values:</p>

<pre>$users['first_name'] = "Michael";
$users['last_name'] = "Choi";</pre>

<p>Create a function where you can pass this $users and which would print an output that looks like below:</p>

<pre>There are 2 keys in this array: first_name, last_name
The value in the key 'first_name' is 'Michael'.
The value in the key 'last_name' is 'Choi'.</pre>

<h3>PHP Function Output Below:</h3>

<?php
function show_array_keys_values($insert_array)
{
    echo 'There are ' . count($insert_array) . ' key(s) in this array: ';

    foreach($insert_array as $key => $value)
    {
        $mykey = $key;
        $mykey_add_comma_at_end = $mykey . ', ';
            echo $mykey_add_comma_at_end;
    }

    echo '<br />';

    foreach($insert_array as $key => $value)
    {
        $mykey = $key;
        echo 'The value in the key \'' . $mykey . '\' is ' . $value . '.<br />';
    }
}

$users = array('first_name' => 'Michael', 'last_name' => 'Choi');

show_array_keys_values($users);
?>

</body>
</html>