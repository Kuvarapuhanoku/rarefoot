<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Rare-Foot Register</title>
<link rel="stylesheet" href="rareRegister.css" />
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">
</head>
<body>
<div class="container">
      <img
        class="rareFootLogo"
        src="../images/rarefoot-logo.png"
        alt="rarefootlogo"
      />
      <figure>
      <img class="shoe" src="../images/landpage-quote.png" alt="shoeimg" />
	</figure>
      <form action="rareregister" method="post">
        <table>
          <h3>REGISTRATION FORM</h3>
          <tr>
            <td><p>First Name:</p></td>
            <td><input type="text" class="inputField" name="fname" /></td>
          </tr>
          <tr>
            <td><p>Last Name:</p></td>
            <td><input type="text" class="inputField" name="lname" /></td>
          </tr>
          <tr>
            <td><p>Email:</p></td>
            <td><input type="email" class="inputField" name="email" /></td>
          </tr>
          <tr>
            <td><p>Password:</p></td>
            <td><input type="password" class="inputField" name="pass" /></td>
          </tr>
        </table>
        <div class="btn-container">
          <input class="btn sign-btn" type="submit" value="Sign Up" />
          <input class="btn clear-btn" type="reset" value="clear" />
        </div>
      <a href="../login/rareLogin.jsp" class="login"><p>Already have an account? </p> </a>
      </form>
    </div>
    <script type="text/javascript" src="rareRegister.js"></script>
    <script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>