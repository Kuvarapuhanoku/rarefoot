<%@page import="com.rarefoot.webapp.home.ProductDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.rarefoot.webapp.home.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Rare Kids</title>
<link rel="stylesheet" href="rarePages.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <script type="text/javascript" src="rareHome.js"></script>
</head>
<body>
<div class="navImages">
      <img
        class="rareFootLogo"
        src="AppImages/rarefoot logo.png"
        alt="rarefoot-logo"
      />
      <img
        class="rareProfilePic"
        src="AppImages/profile pic.JPG"
        alt="profilepic"
      />
      <svg
        onclick="openMenu()"
        class="menuButton"
        xmlns="http://www.w3.org/2000/svg"
        height="24px"
        viewBox="0 -960 960 960"
        width="24px"
        fill="white"
      >
        <path
          d="M120-240v-80h720v80H120Zm0-200v-80h720v80H120Zm0-200v-80h720v80H120Z"
        />
      </svg>
    </div>
    <nav class="rareNavBar">
      <ul id="openSideBar" class="rareSideBar">
        <li>
          <svg
            onclick="closeMenu()"
            xmlns="http://www.w3.org/2000/svg"
            height="24px"
            viewBox="0 -960 960 960"
            width="24px"
            fill="white"
            class="closeSVG"
          >
            <path
              d="m256-200-56-56 224-224-224-224 56-56 224 224 224-224 56 56-224 224 224 224-56 56-224-224-224 224Z"
            />
          </svg>
        </li>
        <li>
          <a class="sideLinks" href="rareHome.jsp"><p>Home</p></a>
        </li>
        <li>
          <a class="sideLinks" href="rareMens.jsp"><p>Mens</p></a>
        </li>
        <li>
          <a class="sideLinks" href="rareWomens.jsp"><p>Womens</p></a>
        </li>
        <li>
          <a class="sideLinks" href="rareKids.jsp"><p>Kid</p></a>
        </li>
        <li>
          <a class="sideLinks" href="rareNew.jsp"><p>New & Features</p></a>
        </li>
      </ul>
      <ul>
        <li class="onMobileScreen">
          <a class="rareNavLinks" href="rareHome.jsp">Home</a>
        </li>
        <li class="onMobileScreen">
          <a class="rareNavLinks" href="rareMens.jsp">Mens</a>
        </li>
        <li class="onMobileScreen">
          <a class="rareNavLinks" href="rareWomens.jsp">Womens</a>
        </li>
        <li class="onMobileScreen">
        <a class="rareNavLinks" href="rareKids.jsp">Kid</a></li>
        <li class="onMobileScreen">
          <a class="rareNavLinks" href="rareNew.jsp">New & Features</a>
        </li>
      </ul>
    </nav>

    <!-- ----------------------------------------curousel--------------------------------- -->

    <div
      id="carouselExampleAutoplaying"
      class="carousel slide"
      data-bs-ride="carousel"
    >
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img
            class="curouselImg"
            src="AppImages/jordon-women-c.png"
            class="d-block w-100"
            alt="jordanoffer"
          />
        </div>
        <div class="carousel-item">
          <img
            class="curouselImg"
            src="AppImages/lv-women-c.png"
            class="d-block w-100"
            alt="lvoffer"
          />
        </div>
      </div>
      <button
        class="carousel-control-prev"
        type="button"
        data-bs-target="#carouselExampleAutoplaying"
        data-bs-slide="prev"
      >
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button
        class="carousel-control-next"
        type="button"
        data-bs-target="#carouselExampleAutoplaying"
        data-bs-slide="next"
      >
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>

    <!-- ------------------------------------------------brands and products------------------------------- -->

<%
	ProductDao dao = new ProductDao();
	ArrayList<ProductDto> allProducts = (ArrayList<ProductDto>) dao.getProducts();
	
	%>

      </div>
      <div class="productsMainContainer">
        <img
          class="brandImages"
          src="AppImages/rarefoot logo black.png"
          alt="jordanlogo"
        />

        <!-- ------------------------------------------------------items------------------------------------------------- -->



        <div class="fullProductContainer">
          <!-- ---- -->
<%for(ProductDto l: allProducts){ 
	String category = l.getCategory();
		if (category.equals("kids") ) {
%>
          <a class="productAnchor" href="rareproduct?sid=<%= l.getSid() %>">
            <div class="productContainer">
              <img
                class="productImg"
                src="AppImages/Shoes/<%=l.getShoeImage() %>"
                alt="jordanimg"
              />
              <div class="productDetails">
                <p class="productName"><%=l.getShoeName() %></p>
                <div class="productRatingContainer">
                  <p class="productRating">Rating</p>
                  <div class="starRatingContainer">
                  <%
					for (int i = 1; i <= 5; i++) {
							%>
                    <span
                      class="fa fa-star fa-size <%if (i <= l.getRating()) {%> checked <%}%>"
                    ></span>
                    <%} %>
                  </div>
                </div>
                <div class="productPriceContainer">
                  <p class="productPrice">Prize :</p>
                  <p class="actualPrice">$ <%= l.getPrize() %>
                  </p>
                </div>
              </div>
            </div>
          </a>
         <%}%>
	<%}%>
                    <!-- ---- -->
        </div>
      </div>
    </div>

    <!-- --------------------------------------------------------footer---------------------------------------------------------- -->

    <div class="rareFooterContainer">
      <img
        class="rareLogoFooter"
        src="AppImages/rarefoot logo.png"
        alt="rareLogo"
      />

      <div class="footSubContainer">
        <div class="aboutUsContainer">
          <p class="aboutUs">About Us</p>
          <a class="ourStoryAnchor" href="ourstory.jsp"
            ><p class="ourstory">our story</p>
          </a>
        </div>

        <div class="checkThisContainer">
          <p class="checkThis">Check This</p>
          <a class="checkThisAnchor" href="men.jsp">
            <p class="checkThisPara">Mens</p>
          </a>
          <a class="checkThisAnchor" href="women.jsp"
            ><p class="checkThisPara">Womens</p></a
          >
          <a class="checkThisAnchor" href="kid.jsp"
            ><p class="checkThisPara">Kids</p></a
          >
        </div>
      </div>
      <div class="contactUsContainer">
        <p class="contactUs">CONTACT US ON</p>
        <div class="socialLogoContainer">
          <a href=""
            ><img
              class="socialLogoImg"
              src="AppImages/facebook logo.png"
              alt="facebook"
          /></a>
          <a href=""
            ><img
              class="socialLogoImg"
              src="AppImages/insta logo.png"
              alt="instagram"
          /></a>
          <a href=""
            ><img
              class="socialLogoImg"
              src="AppImages/linked-in-logo.png"
              alt="linked-in"
          /></a>
        </div>
      </div>
    </div>
  </body>
  
  <style>
  input.filter{
	width: auto;
    color: white;
    background-color: black;
    border-radius: 5px;
    }
    div.brandsContainer {
    align-items: center;
    }
  </style>
</body>
</html>