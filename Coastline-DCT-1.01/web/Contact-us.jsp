<%-- 
    Document   : Contact-us
    Created on : May 26, 2024, 6:45:12 PM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/contact-us-styles.css">
  <title>Contact Us</title>
  <style>
    /* Add your CSS styles here */
  </style>
</head>
<body>

  <header>
    <h1 class="sign-in">Contact Us</h1>
  </header>

  <div class="signin-form">
<form
  action="https://formspree.io/f/xrgndgpz"
  method="POST"
>
  <label class="form-title">
    Your email:
    <input class="email2" type="email" name="email">
  </label>
  <label class="form-title">
    Your message:
    <br>
    <textarea class="textarea" name="message">Your message here!</textarea>
  </label>
    <br>
  <button class="btn btn-primary btn-xl rounded" type="submit">Send</button>
</form>
  </div>

</body>
</html>