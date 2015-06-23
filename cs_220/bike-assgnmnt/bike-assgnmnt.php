<?php
class Bike
{
    public $price;
    public $max_speed;
    public $miles;


    public function __construct($price, $max_speed)
    {
        $this->price = $price;
        $this->max_speed = $max_speed;
        $this->miles = 0;
    }

    public function displayInfo()
    {
        echo '<br />Price: ' . $this->price . '<br />';
        echo 'Max Speed: ' . $this->max_speed . '<br />';
        echo 'Miles: ' . $this->miles . '<br />';

        return $this;
    }

    public function drive()
    {
        echo 'Driving';
        $this->miles += 10;
        return $this;
    }

    public function reverse()
    {
        echo 'Reversing';
        $this->miles -= 5;
        return $this;
    }
}

$bmx = new Bike(500, "50mph");
$mt_bike = new Bike(2000, "60mph");
$road_bike = new Bike(2500, "100mph");

echo '<h2>1st Bike Object</h2>';
$bmx->drive()->drive()->drive()->displayInfo();

echo '<h2>2nd Bike Object</h2>';
$mt_bike->drive()->drive()->reverse()->reverse()->displayInfo();

echo '<h2>3rd Bike Object</h2>';
$road_bike->reverse()->reverse()->reverse()->displayInfo();

?>