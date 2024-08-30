<%@page import="com.rarefoot.webapp.home.ProductDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.rarefoot.webapp.home.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products Edit</title>
</head>
	 <body>
    <table border="3">
      <tr>
        <th>Id</th>
        <th>Shoe Name</th>
        <th>Shoe Image</th>
        <th>rating</th>
        <th>prize</th>
        <th>Stock</th>
        <th>Category</th>
        <th>Brand</th>
      </tr>

<% ProductDao dao = new ProductDao();
	ArrayList<ProductDto> all = (ArrayList<ProductDto>)dao.getProducts();
	for (ProductDto l:all){
%>
      <tr>
        <td><%=l.getSid() %></td>
        <td><%=l.getShoeName() %></td>
        <td><img src="../rareApplication/AppImages/Shoes/<%=l.getShoeImage() %>" width="150vw" /></td>
        <td><%=l.getRating() %></td>
        <td><%=l.getPrize() %></td>
        <td><%=l.getStock() %></td>
        <td><%=l.getCategory() %></td>
        <td><%=l.getBrand() %></td>
        <td>
          <a href="">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              height="34px"
              viewBox="0 -960 960 960"
              width="34px"
              fill="#5f6368"
            >
              <path
                d="M200-200h57l391-391-57-57-391 391v57Zm-80 80v-170l528-527q12-11 26.5-17t30.5-6q16 0 31 6t26 18l55 56q12 11 17.5 26t5.5 30q0 16-5.5 30.5T817-647L290-120H120Zm640-584-56-56 56 56Zm-141 85-28-29 57 57-29-28Z"
              />
            </svg>
          </a>
        </td>
        <td>
          <a href="raredelete?sid=<%=l.getSid()%>">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              height="34px"
              viewBox="0 -960 960 960"
              width="34px"
              fill="#5f6368"
            >
              <path
                d="M280-120q-33 0-56.5-23.5T200-200v-520h-40v-80h200v-40h240v40h200v80h-40v520q0 33-23.5 56.5T680-120H280Zm400-600H280v520h400v-520ZM360-280h80v-360h-80v360Zm160 0h80v-360h-80v360ZM280-720v520-520Z"
              />
            </svg>
          </a>
        </td>
      </tr>
      
      <%} %>
    </table>

    <style>
      * {
        font-size: 20px;
        text-align: center;
      }
      table {
        width: 80%;
        margin: auto;
      }

      input {
        width: 8vw;
        margin: 0;
      }
    </style>
  </body>
</html>