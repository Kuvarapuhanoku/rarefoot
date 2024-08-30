<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.rarefoot.webapp.home.ProductDto"%>
<%@page import="com.rarefoot.webapp.home.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Insert title here</title>
<script src="rareHome.js"></script>
<link rel="stylesheet" type="text/css" href="rareProduct.css" />
</head>
 <body>
    <!-- ------------------------------------------------navBar------------------------------------ -->

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
        <li class="onMobileScreen"><a class="rareNavLinks" href="rareKids.jsp">Kid</a></li>
        <li class="onMobileScreen">
          <a class="rareNavLinks" href="rareNew.jsp">New & Features</a>
        </li>
      </ul>
    </nav>
    
      <% 
      ProductDto dto = (ProductDto)session.getAttribute("mdto");
      ProductDao dao = new ProductDao();
      ProductDto p = dao.getProduct(dto.getSid());
      %>

    <!-- ------------------------------------------------------- productDetails ----------------------------------------------- -->

    <div class="productDetailsContainer">
      <div class="productImgContainer">
        <img
          class="productImg"
          src="AppImages/Shoes/<%=p.getShoeImage() %>"
          alt="adidasRunningShoes"
        />
      </div>
      
      
		
      
      <div class="productDetailsSubContainer">
        <h1 class="rareShoeName"><%= p.getShoeName() %></h1>
        <div class="line"></div>
        <h2 class="rareSpecifications">Specifications</h2>
        <div class="specificationContainer">
          <select name="Size" id="rareProductSize">
            <option hidden>SIZE</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
          </select>
          <select name="Color" id="rareProductColor">
            <option hidden>COLOR</option>
            <option>Not Available</option>
          </select>
        </div>
        
        <div class="rareBuyNowContainer">
          <p class="rarePrize"><%=p.getPrize() %> $</p>
          <p class="rareDelivery">Delivery on Monday</p>
          <p class="rareStockCount"><%=p.getStock() %> in Stock</p>
          <a href="">
            <input class="rareBuyButton btn" type="submit" value="Buy Now" />
          </a>
          <a href="rarewishlist?id=<%= p.getSid() %>">
            <input
              class="rareCartButton btn"
              type="submit"
              value="Add to Wishlist"
            />
          </a>
        </div>
      </div>
    </div>

    <!-- ----------------------------------------------- review ----------------------------------------------- -->

    <div class="reviewHeadContainer">
      <h1 class="reviewHead">Customer Reviews</h1>
      <div class="reviewContainer">
        <h2 class="customerName">Anok</h2>
        <p class="review">
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Fuga iure
          perferendis sint ab accusamus dignissimos perspiciatis voluptas,
          maxime labore qui, repellendus omnis minima consequatur ipsam, tenetur
          rem asperiores numquam quo. Laboriosam sapiente similique fuga
          accusantium reprehenderit temporibus dignissimos aperiam dolorem sequi
          nemo nesciunt, tempora magnam possimus dicta autem quae animi? Vel
          suscipit dolorum porro voluptatum magnam magni repellendus inventore
          laboriosam?
        </p>
        <div class="reviewLine"></div>
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
            ><p class="ourstory">our story</p></a
          >
        </div>

        <div class="checkThisContainer">
          <p class="checkThis">Check This</p>
          <a class="checkThisAnchor" href="men.jsp"
            ><p class="checkThisPara">Mens</p></a
          >
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
</html>