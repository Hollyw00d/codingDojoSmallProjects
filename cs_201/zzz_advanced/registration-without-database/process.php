<?php
session_start();

$errors = array();

// Validate email
if(!isset($_POST['email']) || $_POST['email'] == NULL)
{
    $errors[] = 'Email should not be empty';
}
elseif(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL))
{
    $errors[] = 'This email is not valid';
}

// First name validate
if(!isset($_POST['first_name']) || $_POST['first_name'] == NULL)
{
    $errors[] = 'First name should not be empty';
}
elseif(strlen($_POST['first_name']) < 2)
{
    $errors[] = 'First name needs to have more than one character';
}
elseif(strlen($_POST['first_name']) >= 100)
{
    $errors[] = 'First name must have 100 characters or less';
}

// Last name validate
if(!isset($_POST['last_name']) || $_POST['last_name'] == NULL)
{
    $errors[] = 'Last name should not be empty';
}
elseif(strlen($_POST['last_name']) < 2)
{
    $errors[] = 'Last name needs to have more than one character';
}
elseif(strlen($_POST['last_name']) >= 100)
{
    $errors[] = 'Last name must have 100 characters or less';
}

// Password validate
if(!isset($_POST['password']) || $_POST['password'] == NULL)
{
    $errors[] = 'Password should not be empty';
}
elseif(strlen($_POST['password']) < 6)
{
    $errors[] = 'Password need to have at least 6 characters';
}
elseif(strlen($_POST['password']) >= 30)
{
    $errors[] = 'Password cannot have more than 30 characters';
}

// Confirm password validate
if(!isset($_POST['confirm_password']) || $_POST['confirm_password'] == NULL)
{
    $errors[] = 'Please re-enter your password';
}
// Check to see if the text in the
// password and confirm password fields are the same
elseif($_POST['password'] != $_POST['confirm_password'])
{
    $errors[] = 'The text in your "Password" and "Confirm Password" fields must match';
}

// Validate birth date
if(!isset($_POST['birth_date']) || substr($_POST['birth_date'], 0, 4) < '1900')
{
    $errors[] = 'Your birth year must be 1900 or later.';
}


if($errors != NULL)
{
    $_SESSION['errors'] = $errors;
    header('Location: index.php');
}
else {
    header('Location: thank-you.php');
}

?>