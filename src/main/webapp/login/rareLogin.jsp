<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../register/rareRegister.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Rare-foot Login</title>
</head>
<body>
<div class="container">
      <img
        class="rareFootLogo"
        src="../rareApplication/AppImages/rarefoot logo.png"
        alt="rarefootlogo"
      />
      <img class="shoe" src="../rareApplication/AppImages/landpage-quote.png" alt="shoeimg" />

      <form action="rarelogin" method="post">
        <table>
          <h3>LOGIN</h3>
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
          <input class="btn sign-btn" type="submit" value="Login" />
          <input class="btn clear-btn" type="reset" value="clear" />
        </div>
        <a href="../register/rareRegister.jsp" class="register"><p>Create account</p></a>
      </form>
    </div>
</body>
</html>