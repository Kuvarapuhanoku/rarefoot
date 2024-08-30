<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <body>
    <form action="addProduct" method="post" enctype="multipart/form-data">
      <table>
        <tr>
          <td><p>Name:</p></td>
          <td><input type="text" name="shoeName"/></td>
        </tr>
        <tr>
          <td><p>Shoe Image:</p></td>
          <td><input type="file" name="shoeImg"/></td>
        </tr>
        <tr>
          <td><p>Rating:</p></td>
          <td><input type="number" name="rating"/></td>
        </tr>
        <tr>
          <td><p>prize:</p></td>
          <td><input type="number" name="prize"/></td>
        </tr>
        <tr>
          <td><p>Stock:</p></td>
          <td><input type="number" name="stock"/></td>
        </tr>
        <tr>
          <td><p>Category:</p></td>
          <td><input type="text" name="category"/></td>
        </tr>
        <tr>
          <td><p>Brand:</p></td>
          <td><input type="text" name="brand"/></td>
        </tr>
      </table>
      <input type="submit" class="btn" />
      <a href="edit.jsp"><p> Check Out </p> </a>
    </form>

    <style>
      body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 90vh;
      }

      form {
        height: 62vh;
        width: 33vw;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 10px;
        background-color: aliceblue;
        border: solid grey 2px;
        border-radius: 10px;
      }
      table {
        height: 100%;
        width: 100%;
      }

      input {
        height: 3vh;
        border: solid black 1px;
        width: 80%;
        border-radius: 5px;
      }

      p {
        font-weight: 800;
        font-family: math;
      }

      input.btn {
        width: 10vw;
        height: 4vh;
        background-color: black;
        color: white;
      }
      
      button.btn-edit{
      color: black;
      background-color: white;
      width: 10vw;
      height: 4vh;
      }
      
      a{
      text-decoration: none;
      color: black;
      }
    </style>
  </body>
</html>