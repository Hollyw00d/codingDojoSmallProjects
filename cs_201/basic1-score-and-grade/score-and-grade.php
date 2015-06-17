<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Basic 1 - Score and Grade Assignment</title>
</head>
<body>

<p><strong>This is what you'll do:</strong></p>

<ol>
    <li>Use a rand() function to generate a random number between 50-100.</li> <li>Store the value returned from the above random function to a variable called $score</li> <li>Display the following grade depending on the score:</li></ol>

<ul>
    <li>Score below 70: display the score in h1 tag and display in h2 tag their grade: D<br>
    </li><li>Score between 70-80: display the score in h1 tag and display in h2 tag their grade: C</li>  <li>Score between 80-90: display the score in h1 tag and display in h2 tag their grade: B;&nbsp;if someone got 80, give them a B</li>  <li>Score between 90-100: display the score in h1 tag and display in h2 tag their grade: A;&nbsp;if someone got 90, give them an A</li> </ul>

<p><strong>Your Score: 81/100</strong></p>
<p><strong>Your grade is B.</strong></p>

<p>IMPORTANT: After you make this work, use a for loop to generate your score/grade 100 times. In other words, after you run your PHP script, it should display the score and grade 100 times.</p>

<h2>In PHP Display a Grade Using rand() and WITHOUT a For Loop</h2>
<?php
function your_score($min, $max)
{
    $score = rand($min, $max);

    if ($score < 70)
    {
        $grade = 'D';
    }
    elseif($score >= 70 && $score < 81)
    {
        $grade = 'C';
    }
    elseif($score >= 81 && $score < 90)
    {
        $grade = 'B';
    }
    elseif($score >= 90 && $score <= 100)
    {
        $grade = 'A';
    }

    echo '<p>Your Score: ' . $score . '/100<br />';
    echo 'Your grade is ' . $grade . '.</p>';
}
your_score(50, 100);
?>

<h2>In PHP Display a Grade 100 Times Using rand() and WITH a For Loop</h2>
<?php
function your_score_with_for_loop($min, $max)
{

    for($i = 1; $i <= $max; $i++)
    {

        $score = rand($min, $max);
        if ($score < 70)
        {
            $grade = 'D';
        }
        elseif($score >= 70 && $score < 81)
        {
            $grade = 'C';
        }
        elseif($score >= 81 && $score < 90)
        {
            $grade = 'B';
        }
        elseif($score >= 90 && $score <= 100)
        {
            $grade = 'A';
        }

        echo '<p>Your Score: ' . $score . '/100<br />';
        echo 'Your grade is ' . $grade . '.</p>';
    }

}

your_score_with_for_loop(50, 100);
?>

</body>
</html>