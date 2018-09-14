<%-- 
    Document   : Login
    Created on : Sep 6, 2018, 10:03:06 PM
    Author     : yapilk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>Login Page</title>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h2 {font-family: "Montserrat", sans-serif}
#main {margin-left: 100px}
</style>
<body class="w3-black">

<div class="w3-padding-large" id="main">

  <div class="w3-padding-64 w3-content w3-text-grey" id="contact">
    <h2 class="w3-text-light-grey">Log In</h2>
    <hr style="width:200px" class="w3-opacity">

    <form method="POST" action="LoginController">
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Username" required name="userName" value="ypieris"></p>
      <p><input class="w3-input w3-padding-16" type="password" placeholder="Password" required name="passWord" value="12345"></p>
      <p>
        <button class="w3-button w3-light-grey w3-padding-large" type="submit">LOG IN
        </button>
      </p>
    </form>
  </div>
</div>

</body>
</html>
