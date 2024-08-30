<%@page import="com.rarefoot.webapp.login.LoginDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.rarefoot.webapp.login.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <table border="3" class="data">
      <tr>
        <th>Id</th>
        <th>User Name</th>
        <th>Email</th>
        <th>profile pic</th>
      </tr>
      
      <% LoginDao dao = new LoginDao();%>
      
      <% try{
    	  LoginDto l = dao.getUser();%>
      <tr>
        <td><%= l.getId() %></td>
        <td> <%= l.getUsername() %> </td>
        <td> <%= l.getEmail() %> </td>
        <td><img src="../rareApplication/AppImages/profile pic.JPG" width="100px" /></td>
      </tr>
    	  <%
      }catch(Exception e){
    	  %>
      <%
      ArrayList<LoginDto> all = (ArrayList<LoginDto>) dao.getAllUsers();
      %>
      
      <% for(LoginDto l: all){ %>
      <tr>
        <td><%= l.getId() %></td>
        <td> <%= l.getUsername() %> </td>
        <td> <%= l.getEmail() %> </td>
        <td><img src="../rareApplication/AppImages/profile pic.JPG" width="100px" /></td>
      </tr>
      <%} 
      }
      %>
    </table>

    <style>
      body {
        display: flex;
        flex-direction: column;
        align-items: center;
      }

      table.data {
        width: 50vw;
      }

      input {
        width: 20vw;
        height: 20px;
        border-radius: 5px;
        border: solid black 2px;
      }

      input.search {
        width: 8vw;
        height: 25px;
        color: white;
        background-color: black;
      }
      
      *{
      text-align: center;
      }
    </style>
  </body>
</html>