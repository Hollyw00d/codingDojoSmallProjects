<?php
class Car
{
    public $price;
    public $speed;
    public $fuel;
    public $mileage;
    public $tax;

    function __construct($price, $speed, $fuel, $mileage)
    {
        $this->price = $price;
        $this->speed = $speed;
        $this->fuel = $fuel;
        $this->mileage = $mileage;

        if ($price > 10000) {
            $this->tax = 0.15;
        } else {
            $this->tax = 0.12;
        }
    }

    function DisplayAll()
    {
        echo 'Price: ' . $this->price . '<br />';
        echo 'Speed: ' . $this->speed . '<br />';
        echo 'Fuel: ' . $this->fuel . '<br />';
        echo 'Mileage: ' . $this->mileage . '<br />';
        echo 'Tax: ' . $this->tax . '<br />';

        return $this;
    }
}

$car1 = new Car(2000, '65mph', 'Full', '15mpg');
$car2 = new Car(2000, '70mph', 'Not Full', '105mpg');
$car3 = new Car(50000, '160mph', 'Kind of Full', '95mpg');
$car4 = new Car(2000, '85mph', 'Empty', '15mpg');
$car5 = new Car(20000000, '250mph', 'Empty', '15mpg');

echo '<h2>Car 1</h2>';
$car1->DisplayAll();

echo '<h2>Car 2</h2>';
$car2->DisplayAll();

echo '<h2>Car 3</h2>';
$car3->DisplayAll();

echo '<h2>Car 4</h2>';
$car4->DisplayAll();

echo '<h2>Car 5</h2>';
$car5->DisplayAll();

?>