<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="admin.css" />
<title>Rare Admin</title>
</head>
	 <body>
    <div class="fullAdminContainer">
      <div class="categoryContainer">
        <!-- -------------------------User Profiles---------------------------- -->

        <div class="subContainer">
          <a href="users.jsp">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              height="120px"
              viewBox="0 -960 960 960"
              width="120px"
              fill="#5f6368"
            >
              <path
                d="M234-276q51-39 114-61.5T480-360q69 0 132 22.5T726-276q35-41 54.5-93T800-480q0-133-93.5-226.5T480-800q-133 0-226.5 93.5T160-480q0 59 19.5 111t54.5 93Zm246-164q-59 0-99.5-40.5T340-580q0-59 40.5-99.5T480-720q59 0 99.5 40.5T620-580q0 59-40.5 99.5T480-440Zm0 360q-83 0-156-31.5T197-197q-54-54-85.5-127T80-480q0-83 31.5-156T197-763q54-54 127-85.5T480-880q83 0 156 31.5T763-763q54 54 85.5 127T880-480q0 83-31.5 156T763-197q-54 54-127 85.5T480-80Zm0-80q53 0 100-15.5t86-44.5q-39-29-86-44.5T480-280q-53 0-100 15.5T294-220q39 29 86 44.5T480-160Zm0-360q26 0 43-17t17-43q0-26-17-43t-43-17q-26 0-43 17t-17 43q0 26 17 43t43 17Zm0-60Zm0 360Z"
              />
            </svg>
          </a>
          <h2>List Users</h2>
        </div>

        <!-- -----------------------------Add Items--------------------------------- -->
        <div class="subContainer">
          <a href="productform.jsp">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              height="120px"
              viewBox="0 -960 960 960"
              width="120px"
              fill="#5f6368"
            >
              <path
                d="M440-600v-120H320v-80h120v-120h80v120h120v80H520v120h-80ZM280-80q-33 0-56.5-23.5T200-160q0-33 23.5-56.5T280-240q33 0 56.5 23.5T360-160q0 33-23.5 56.5T280-80Zm400 0q-33 0-56.5-23.5T600-160q0-33 23.5-56.5T680-240q33 0 56.5 23.5T760-160q0 33-23.5 56.5T680-80ZM40-800v-80h131l170 360h280l156-280h91L692-482q-11 20-29.5 31T622-440H324l-44 80h480v80H280q-45 0-68.5-39t-1.5-79l54-98-144-304H40Z"
              />
            </svg>
          </a>
          <h2>Add Items</h2>
        </div>

        <!-- -----------------------------Edit Items------------------------------------ -->

        <div class="subContainer">
          <a href="edit.jsp">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              height="120px"
              viewBox="0 -960 960 960"
              width="120px"
              fill="#5f6368"
            >
              <path
                d="M200-200h57l391-391-57-57-391 391v57Zm-80 80v-170l528-527q12-11 26.5-17t30.5-6q16 0 31 6t26 18l55 56q12 11 17.5 26t5.5 30q0 16-5.5 30.5T817-647L290-120H120Zm640-584-56-56 56 56Zm-141 85-28-29 57 57-29-28Z"
              />
            </svg>
          </a>
          <h2>Edit Items</h2>
        </div>
      </div>

      <!-- -----------------------------------LOGO---------------------------------- -->

      <div class="rareLogo">
        <img src="../rareApplication/AppImages/rarefoot logo.png" alt="rarefoot logo" />
      </div>
    </div>
  </body>
</html>