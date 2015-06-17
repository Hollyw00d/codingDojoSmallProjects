<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Intermediate 2 - Multiplication Table</title>

    <style type="text/css">
        table {
            border-collapse: collapse;
        }

        td {
            border: 1px solid #000;
            width: 20px;
            height: 20px;
            text-align: center;
        }

        .black-font {
            color: #000;
            font-weight: bold;
        }

        .lavendar-bg {
            background: #E6E6FA;
        }


    </style>

</head>
<body>

<h1>Intermediate 2 - Multiplication Table</h1>

<table>
    <?php
    function multiplication_table($max)
    {
    ?>
        <tr>
            <td>&nbsp;</td>
            <?php
            for($h = 1; $h < $max + 1; $h++)
            {
                echo '<td class="black-font">' . $h . '</td>';
            }
            ?>
        </tr>
    <?php

        for($i = 1; $i < $max + 1; $i++)
        {


            if($i % 2 !== 0)
            {
                echo '<tr class="lavendar-bg">';
            }
            else {
                echo '<tr>';
            }

            echo '<td class="black-font">' . $i . '</td>';

            for($j = 1; $j < $max + 1; $j++)
            {
                echo '<td>' . $j * $i . '</td>';
            }
            ?>

        </tr>
    <?php
        }

    }

    multiplication_table(9);
    ?>

</table>


</body>
</html>