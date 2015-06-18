<?php
session_start();

function get_gold($min, $max)
{
    return rand($min, $max);
}

/*
If the gold_count session variable doesn't exist assign it to 0
 */
if(!isset($_SESSION['gold_count']))
{
    $_SESSION['gold_count'] = 0;
}

/*
If game_messages session variable doesn't exist
assign it to an empty array
*/
if(!isset($_SESSION['game_messages']))
{
    $_SESSION['game_messages'] = array();
}

if(isset($_POST['building']))
{

    $_SESSION['building_name'] = $_POST['building'];

    $building = $_POST['building'];
    $gold_count = 0;
    $activity = array();
    $font_color = 'green';
    $eared_or_lost = 'earned';

    switch($building)
    {
        /*
        Line below same as:
        $_POST['building'] = 'farm';
        */
        case 'farm':
            $gold_count = get_gold(10, 20);
            break;
        case 'cave':
            $gold_count = get_gold(5, 10);
            break;
        case 'house':
            $gold_count = get_gold(2, 5);
            break;
        case 'casino':
            $gold_count = get_gold(-50, 50);
            // If you lose money at the casino show
            // red text
            if($gold_count < 0)
            {
                $font_color = 'red';
                $eared_or_lost = 'lost';
            }
            break;
    }

    $_SESSION['gold_count'] += $gold_count;


    $_SESSION['game_messages'][] =
        '<span class="' . $font_color . '">You entered a ' . $building . ' and ' . $eared_or_lost . ' ' . $gold_count .' golds. '
    . '(' . date('F jS Y g:ia') . ')</span>';

}


header('Location: index.php');
die();
?>