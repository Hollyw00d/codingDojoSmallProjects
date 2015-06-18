<?php
session_start();
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ninja Gold Game</title>
    <link rel="stylesheet" href="css/styles.css"/>

</head>
<body>

<div id="wrapper">

    <h1>Ninja Gold Game</h1>

    <h2 id="your-gold-heading">You Gold: <span id="gold-counter">0</span></h2>

    <div id="games">

        <div class="game">
            <h3>Farm</h3>
            <p>(earns 10 &mdash; 20 golds)</p>
            <form action="process.php">
                <input type="hidden" name="farm_gold" value="farm_gold"/>
                <input type="submit" value="Find Gold!"/>
            </form>
        </div>

        <div class="game">
            <h3>Cave</h3>
            <p>(earns 5 &mdash; 10 golds)</p>
            <form action="process.php">
                <input type="hidden" name="farm_find_gold" value="farm_find_gold"/>
                <input type="submit" value="Find Gold!"/>
            </form>
        </div>

        <div class="game">
            <h3>House</h3>
            <p>(earns 2 &mdash; 5 golds)</p>
            <form action="process.php">
                <input type="hidden" name="farm_find_gold" value="farm_find_gold"/>
                <input type="submit" value="Find Gold!"/>
            </form>
        </div>

        <div class="game">
            <h3>Casino!</h3>
            <p>(earns/takes 0 &mdash; 50 gold)</p>
            <form action="process.php">
                <input type="hidden" name="farm_find_gold" value="farm_find_gold"/>
                <input type="submit" value="Find Gold!"/>
            </form>
        </div>

    </div>

    <h3>Activities:</h3>
    <div id="activities">


    </div>

    <h3><a href="reset.php">Reset Game</a></h3>


</div>

</body>
</html>