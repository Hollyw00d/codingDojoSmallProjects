<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Basic 2 - States Array</title>
</head>
<body>

<p>You have an array called $states that has the following information:</p>

<pre>$states = array('CA', 'WA', 'VA', 'UT', 'AZ');</pre>

<p>Display a dropdown menu in HTML (using select tag and option tag) that displays the different states. Create this dropdown menu using for loops. Create another identical dropdown menu but, this time, use foreach statement.</p>

<p>Once you're done with above exercise, insert three new states in the array $states: 'NJ', 'NY', 'DE'. Display a new dropdown menu with the eight (8) states.</p>

<p>Your output should have three dropdown menus.</p>

<h3>Stats Array with HTML Only</h3>

<form action="#">
    <select name="states" id="states">
        <option value="CA">CA</option>
        <option value="WA">WA</option>
        <option value="VA">VA</option>
        <option value="UT">UT</option>
        <option value="AZ">AZ</option>
    </select>
</form>

<h3>States Array Using a PHP Foreach Statement</h3>

<?php

function states_dropdown($arr)
{
    foreach($arr as $state)
    {
        echo '<option value="' . $state . '">' . $state . '</option>';
    }
}

$states = array('CA', 'WA', 'VA', 'UT', 'AZ');
?>

<form action="#">
    <select name="states" id="states">
        <?php states_dropdown($states); ?>
    </select>
</form>


<h3>Updated States Array Using a PHP Foreach Statement with 'NJ', 'NY', 'DE' Pushed into Array</h3>

<?php
array_push($states, 'NJ', 'NY', 'DE');
?>

<form action="#">
    <select name="states" id="states">
        <?php states_dropdown($states); ?>
    </select>
</form>

</body>
</html>