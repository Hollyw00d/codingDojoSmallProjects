<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Survey Form Assignment</title>

</head>
<body>

<h1>Survey Form Assignment</h1>

<form action="result.php" method="post">

    <p><label for="name">Your name: <input type="text" name="name" /></label></p>
    <p><label for="dojo_location">Dojo Location:
        <select name="dojo_location" id="dojo_location">
            <option value="choose one">Choose one...</option>
            <option value="San Jose, CA">San Jose, CA</option>
            <option value="Burbank, CA">Burbank, CA</option>
            <option value="Bellevue, WA">Bellevue, WA</option>
        </select>
    </label></p>

    <p><label for="fav_language">Favorite Language:
            <select name="fav_language" id="fav_language">
                <option value="choose one">Choose one...</option>
                <option value="JavaScript">JavaScript</option>
                <option value="PHP">PHP</option>
                <option value="Ruby on Rails">Ruby on Rails</option>
            </select>
        </label></p>
    
    <p><label for="comment">
            <textarea name="comment" id="comment" cols="30" rows="10"></textarea>
    </label></p>

    <p><input type="submit" value="Submit" /></p>

</form>

</body>
</html>