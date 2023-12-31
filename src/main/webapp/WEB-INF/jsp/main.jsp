<%@ page import="java.io.InputStream" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.util.Base64" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%int cnt=0;%>

<!DOCTYPE html>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
          crossorigin="anonymous">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<!--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,1,0" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,1,0" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@splidejs/splide@3.6.12/dist/css/splide.min.css">
    <title>Foodex | Browse</title>
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

    <style>
        td{
            padding: 30px 64px 50px 0;
        }
        .btn-circle.btn-sm {
            width: 100px;
            height: 40px;
            padding: 6px 0px;
            border-radius: 10px;
            font-size: 10px;
            text-align: center;
        }

        .card-title,.card-text {
            padding-top: 10px;
            margin-bottom: 4px;
            font-weight: 600;
            padding-left: 10px;
        }
        .truncate {
            color:#494949;
            font-size: 12px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            width: 70%;
          }
        .inline-div {
            width: 100%;
            position: sticky;
            height: 18px;
            vertical-align: top;
        }
        a{
            text-decoration: none;
        }
        text-container {
            display: inline-block;
        }
        .text-container .text-desc {
            font-size: 12px;
            text-align: center;
            display: none;
            position: absolute;
            top: 100%;
            left: 50%;
            transform: translateX(-50%);
            background-color: lightgray;
            padding: 5px;
            width: 60%;
            border-radius: 100px;
        }
        .text-container:hover .text-desc {
            display: block;
        }

/*        #slider {
            margin: 20px 0;
          position: relative;
          width: 100%;
          height: 20px;
          margin: 10px 0;
        }

        #slider-track {
          position: absolute;
          top: 50%;
          left: 0;
          width: 100%;
          height: 2px;
          background-color: #ccc;
          transform: translateY(-50%);
        }

        #slider-handle {
          position: absolute;
          top: 50%;
          left: 0;
          width: 20px;
          height: 20px;
          border-radius: 50%;
          background-color: #0080ff;
          transform: translateY(-50%);
          cursor: pointer;
        }

        .slider-label {
          position: absolute;
          top: 410px;
          margin-left: 40px;
          transform: translateX(-30%);
          font-size: 14px;
          font-weight: bold;
          text-align: center;
        }

        .slider-label:first-child {
          left: 0;
        }

        .slider-label:last-child {
          left: 0;
        }

        .slider-label:nth-child(2) {
          left: 16%;
        }

        .slider-label:nth-child(3) {
          left: 32%;
        }

        .slider-label:nth-child(4) {
          left: 48%;
        }

        .slider-label:nth-child(5) {
          left: 64%;
        }

        button[type="submit"] {
          margin-top: 20px;
        }*/

        #slider-container {
            margin: 10px 0;
            margin-left: 0px;
            width: 100%;
            position: relative;
          }

          #slider {
            -webkit-appearance: none;
            width: 100%;
            height: 20px;
            border-radius: 50px;
            background: #ddd;
            outline: none;
            opacity: 0.7;
            -webkit-transition: .2s;
            transition: opacity .2s;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
          }

          #slider::-webkit-slider-thumb {
            -webkit-appearance: none;
            appearance: none;
            width: 25px;
            height: 25px;
            border-radius: 50px;
            background: blue;
            cursor: pointer;
          }

          #slider::-moz-range-thumb {
            width: 25px;
            height: 25px;
            border-radius: 50px;
            background: blue;
            cursor: pointer;
          }

          #slider-labels {
            position: absolute;
            width: 100%;
            display: flex;
            justify-content: space-between;
            top: 3px;
            left: 0;
          }

          .slider-label {
            font-size: 14px;
            font-weight: bold;
            text-align: center;
            width: 20px;
          }

          #slider-value {
            font-size: 18px;
            font-weight: bold;
            margin-top: 20px;
          }

          button[type="submit"] {
            margin-top: 20px;
            width: 100%;
          }
          
          .rating-button {
            padding: 5px 10px;
            background-color: lightblue;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            text-transform: uppercase;
          }

    </style>
</head>

<body onload="findMyCoordinates()">
<nav class="navbar navbar-expand-lg nav-main navbar-light" id="nav-main">
    <div class="container-fluid">
        <img src="<c:url value="/resources/img/logo-exp-light.png" />" alt="Foodex Logo" width="120px" style="margin-left: 40px;" />
        <input type="text" placeholder="Enter your Location" value="<%= session.getAttribute("currentLocation")%>" class="location-input">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse"></div>
        <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-auto" style="display: flex; align-items: center">
                <li class="nav-item">
                    <a class="nav-link nav-reg" href="#"><span class="material-symbols-outlined nav-icons">search</span>Search</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-reg" href="offers"><span class="material-symbols-outlined nav-icons">loyalty</span>Offers</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-reg" href="restaurants"><span class="material-symbols-outlined">storefront</span>Restaurants</a>
                </li>

                <%
                    boolean flag = false;
                    Boolean loggedIn = (Boolean) session.getAttribute("loggedIn");
                    if (loggedIn == null || !loggedIn) {
                %>

                <li class="nav-item">
                    <a class="nav-link nav-reg" href="register"><span class="material-symbols-outlined nav-icons">person</span>Sign Up</a>
                </li>

                <li class="nav-item">
                    
                    <a class="nav-link nav-reg" href="login"><span class="material-symbols-outlined nav-icons">login</span>Login</a>
                </li>

                <%
                } else {
                    try {
                        String usnm = (String) session.getAttribute("userName");
                        String pwd = (String) session.getAttribute("password");
                        String prefix_u = "admin";
                        String prefix_p = "admin@123";

                        Class.forName("com.mysql.cj.jdbc.Driver");

                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelivery?characterEncoding=utf8","root","root");
                        PreparedStatement stmt = con.prepareStatement("select * from restaurants where username=?");
                        stmt.setString(1, usnm);

                        PreparedStatement stmt2 = con.prepareStatement("select * from users where username=? and password=?");
                        stmt2.setString(1, usnm);
                        stmt2.setString(2, pwd);

                        ResultSet rs = stmt.executeQuery();
                        ResultSet rs1 = stmt2.executeQuery();

                %>

                <li class="nav-item">
                    <ul>
                        <a href="#" class="display-picture"><img src="<c:url value="/resources/img/user-icon-default.png" />" alt="User Icon"></a>
                    </ul>
                    <div class="card hidden">
                        <ul>
                            <%
                                if(usnm.startsWith(prefix_u) && pwd.startsWith(prefix_p)) {
                                    flag = true;
                            %>
                            <li><a href="admin" target="_blank">Dashboard</a></li>
                            <li><a href="account">Account</a></li>
                            <li><a href="settings">Settings</a></li>
                            <li><a href="#">Log Out</a></li>
                            <%
                                }
                                if(!flag){
                                    if(rs.next()){
                                        if(rs.getString("username").equals(usnm)){
                                            flag = true;

                            %>
                            <li><a href="dashboard" target="_blank">Dashboard</a></li>
                            <li><a href="account">Account</a></li>
                            <li><a href="settings">Settings</a></li>
                            <li><a href="#">Log Out</a></li>
                            <%
                                        }}}

                                if(!flag){
                                    while(rs1.next()){
                                        if(rs1.getString("username").equals(usnm) && rs1.getString("password").equals(pwd)) {
                                            flag = true;
                            %>

                            <li><a href="account">Account</a></li>
                            <li><a href="settings">Settings</a></li>
                            <li><a href="#">Log Out</a></li>
                            <%
                                        }}}
                            %>
                        </ul>
                    </div>

                    <%
                            }catch (Exception k) {
                                System.out.println(k);
                            }
                        }
                    %>
                </li>

                <li class="nav-item">
                    <button onclick="openSidebar()" class="nav-link nav-reg"><span class="material-symbols-outlined nav-icons">shopping_cart</span>Cart</button>
                </li>

            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid" style="background: linear-gradient(48deg, rgba(23,26,41,1) 0%, rgb(20,23,37) 76%, rgb(32,37,56) 95%);">
    <div class="row">
        <div class="splide">
            <div class="splide__track">
                <div class="splide__list">
                    <div class="col-sm-4 splide__slide m-2">
                        <div class="card text-white">
                            <div class="card-body">
                                <img src="<c:url value="/resources/img/carousel-1.jpg" />" style="width: 80%;">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 splide__slide m-2">
                        <div class="card-body">
                            <img src="<c:url value="/resources/img/carousel-2.jpg" />" style="width: 80%">
                        </div>
                    </div>
                    <div class="col-sm-4 splide__slide m-2">
                        <div class="card-body">
                            <img src="<c:url value="/resources/img/carousel-3.jpg" />" style="width: 80%">
                        </div>
                    </div>
                    <div class="col-sm-4 splide__slide m-2">
                        <div class="card-body">
                            <img src="<c:url value="/resources/img/carousel-4.jpg" />" style="width: 80%">
                        </div>
                    </div>
                    <div class="col-sm-4 splide__slide m-2">
                        <div class="card-body">
                            <img src="<c:url value="/resources/img/carousel-5.jpg" />" style="width: 80%">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br>

<div class="container">
    <div class="row">
<!--        <div class="col">
            <button class="filter-icon" data-bs-toggle="modal" data-bs-target="#staticBackdrop" type="button"><span class="material-symbols-outlined" style="color: #1e53ff; margin-right: 5px;">filter_alt</span>Filter</button>
        </div>-->
    </div>
    <div class="row">
        <div class="col">
            <%
                try{
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelivery?characterEncoding=utf8","root","root");
                    Statement state = con.createStatement();

                    ResultSet rst = state.executeQuery("select count(*) from items");
                    while (rst.next()) {
                        cnt = rst.getInt(1);
                    }
                }
                catch (Exception k){
                    System.out.println(k.getMessage());
                }
            %>
            <h4 class="res-heading"><%=cnt%> Items</h4>
        </div>
        <hr style="width: 100%; color: grey">
    </div>
</div>

<div class="container">
            <div class="row">
                <div class="col">
                    <table>
                        <%
                            int colind = 0;
                            try{
                            Class.forName("com.mysql.cj.jdbc.Driver");

                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelivery?characterEncoding=utf8","root","root");

                            PreparedStatement stmt = con.prepareStatement("select * from items, item_images where items.item_id = item_images.item_id order by rand()");
                            ResultSet rs = stmt.executeQuery();

                            while(rs.next()){
                                long m = rs.getLong("res_id");

                                PreparedStatement state = con.prepareStatement("select * from restaurants where res_id=?");
                                state.setLong(1, m);
                                ResultSet rst = state.executeQuery();
                                String l="";
                                while(rst.next()){
                                    l=rst.getString("res_name");
                                }

                                Blob imageBlob = rs.getBlob("data");
                                InputStream imageStream = imageBlob.getBinaryStream();
                                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                                byte[] buffer = new byte[4096];
                                int n = 0;
                                while (-1 != (n = imageStream.read(buffer))) {
                                    outputStream.write(buffer, 0, n);
                                }
                                byte[] imageBytes = outputStream.toByteArray();
                        %>
                        <td class="item-td">
                            <div class="card item-card" align="center" style="width: 14rem;">
                                    <img class="card-img-top" alt="..." align="center" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes) %>"/>
                                    <h4 class="card-title"><%= rs.getString("item_name")%></h4>
                                    <p class="card-text">
                                        <%float rate = rs.getFloat("rating");
                                        int x = (int) rate;
                                        for (int i=0; i<x; i++)
                                        {%>
                                            <span class="material-symbols-rounded" style="color: #3EC70B;">
                                                star
                                            </span>
                                        <%}
                                        if (rate%1!=0)
                                        {%>
                                            <span class="material-symbols-rounded" style="color: #3EC70B;">
                                                star_half
                                            </span>
                                        <%}
                                        %>
                                        <br>
                                        <div align="left" style="color: #494949;"><%= rs.getString("description") %></div>
                                        <div class="price" align="left">Rs. <%= rs.getFloat("price") %></div>

                                        <div align="center" style="display: inline-block; margin-top: 1px; margin-bottom: 15px">
                                            <form action="cart" method="post">
                                                <button type="submit" id="cart-btn" class="btn btn-primary btn-circle btn-sm" style="margin-right: 20px;">
                                                    <span id="cart-text" class="material-symbols-outlined">add_shopping_cart</span>
                                                </button>
                                                <input name="a" value="<%= rs.getLong("item_id") %>" hidden>
                                                <select name="quantity" autocomplete="off" data-action="a-dropdown-select" >
                                                    <option value="1" selected>1</option>
                                                    <option value="2">2 </option>
                                                    <option value="3">3 </option>
                                                    <option value="4">4 </option>
                                                </select>
                                            </form>
                                            <form action="submititemrate" method="post">
                                                <div align="left" id="slider-container">
                                                    <input type="range" min="1" max="5" value="3" class="slider" id="slider" name="rating">
                                                    <div id="slider-labels">
                                                        <span class="slider-label">1</span>
                                                        <span class="slider-label">2</span>
                                                        <span class="slider-label">3</span>
                                                        <span class="slider-label">4</span>
                                                        <span class="slider-label">5</span>
                                                    </div><br>
                                                </div>
                                                <input type="hidden" name="rating" value="0">
                                                <input type="hidden" name="username" value="<%= session.getAttribute("userName")%>">
                                                <input type="hidden" name="item_id" value="<%= rs.getLong("item_id") %>">
                                                <input type="submit" value="Submit Rating" class="rating-button">
                                            </form>
                                        </div>                                                
                                    </p>
                            </div>
                        </td>
                        <%colind++;%>
                            <% if(colind % 4 == 0)
                            {
                            %></tr><tr>
                            <%}%>
                            <%
                            }}
                            catch (Exception k){
                                System.out.println(k.getMessage());
                            }
                        %>
                    </table>
                </div>
            </div>   
</div>

    <%@ include file="footer.jsp"%>
    
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/4.0.2/css/star-rating.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/4.0.2/js/star-rating.min.js"></script>
    
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/4.0.6/css/star-rating.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/4.0.6/js/star-rating.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" rel="stylesheet" />
    
    
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" rel="stylesheet" />


    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/js/all.min.js"></script>
    
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@splidejs/splide@3.6.12/dist/js/splide.min.js"></script>
<script>
    var splide = new Splide('.splide', {
        type: 'loop',
        perPage: 4,
        rewind: true,
        autoplay: true,
    });

    splide.mount();
</script>

<script>
    const div1 = document.getElementById('ele1')

    div1.addEventListener("click", function (){
        div1.style.backgroundColor = "#f3f3f3";
        div2.style.backgroundColor = "#ffffff";
        div3.style.backgroundColor = "#ffffff";
        div4.style.backgroundColor = "#ffffff";
    });

    const div2 = document.getElementById('ele2')
    const para2 = document.getElementById('ele2')

    para2.addEventListener("click", function (){
        div2.style.backgroundColor = "#f3f3f3";
        div1.style.backgroundColor = "#ffffff";
        div3.style.backgroundColor = "#ffffff";
        div4.style.backgroundColor = "#ffffff";
    });

    const div3 = document.getElementById('ele3')
    const para3 = document.getElementById('ele3')

    para3.addEventListener("click", function (){
        div3.style.backgroundColor = "#f3f3f3";
        div2.style.backgroundColor = "#ffffff";
        div1.style.backgroundColor = "#ffffff";
        div4.style.backgroundColor = "#ffffff";
    });

    const div4 = document.getElementById('ele4')
    const para4 = document.getElementById('ele4')

    div4.addEventListener("click", function (){
        div4.style.backgroundColor = "#f3f3f3";
        div2.style.backgroundColor = "#ffffff";
        div3.style.backgroundColor = "#ffffff";
        div1.style.backgroundColor = "#ffffff";
    });

    let card = document.querySelector(".card");
    let displayPicture = document.querySelector(".display-picture");

    displayPicture.addEventListener("click", function() {
        card.classList.toggle("hidden")})
    
    function openSidebar() {
  window.open('sidebar', '_blank');
}
//    document.getElementById('cart-btn').addEventListener("click", function () {
//        <%--

        --%>//
//    })
//
//    const openSidebarBtn = document.getElementById("openSidebarBtn");
//    const closeSidebarBtn = document.getElementById("closeSidebarBtn");
//    const sidebar = document.getElementById("sidebar");
//
//    openSidebarBtn.addEventListener("click", () => {
//        sidebar.classList.toggle("open");
//        sidebar.style.display = "block";
//    });

    document.querySelector(".btn-close").addEventListener("click", () => {
        sidebar.style.display = "none";
    });

    const http = new XMLHttpRequest();
    let result = document.querySelector("#currentLoc");

    function findMyCoordinates() {
        if(navigator.geolocation){
            navigator.geolocation.getCurrentPosition((position) => {
                    const bdcApi = `https://api.bigdatacloud.net/data/reverse-geocode-client?latitude=${position.coords.latitude}&longitude=${position.coords.longitude}`
                    getApi(bdcApi);
                },
                (err) => {
                    alert(err.message)
                })
        } else {
            alert("Geolocation is not supported by your browser")
        }
    }

    function getApi(bdcApi) {
        http.open("GET", bdcApi);
        http.send();
        http.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                const results = JSON.parse(this.responseText)
                let final_location = results.locality + ", " + results.city + ", " + results.principalSubdivision + ", " + results.countryName
                result.value = final_location;
            }
        };
    }
    
   
//$(document).ready(function() {
//  $('.star-rating').rating({
//    filledStar: '<i class="fas fa-star"></i>',
//    emptyStar: '<i class="far fa-star"></i>',
//    onSelect: function(value, text) {
//      $('#star-rating').val(value);
//    }
//  });
//});

var stars = document.querySelectorAll(".star");
var ratingInput = document.querySelector("input[name=rating]");

stars.forEach(function(star) {
  star.addEventListener("click", function() {
    var value = this.getAttribute("data-value");
    ratingInput.value = value;
    stars.forEach(function(s) {
      if (s.getAttribute("data-value") <= value) {
        s.classList.add("selected");
      } else {
        s.classList.remove("selected");
      }
    });
  });
});

//$(function() {
//    $('.star').on('click', function() {
//      $('#star-rating').val($(this).val());
//    });
//  });

//$(function() {
//    $('.rating label').hover(function() {
//      $(this).prevAll().addBack().css('color', '#ffc107');
//    }, function() {
//      $(this).prevAll().addBack().css('color', '#ddd');
//    });
//    
//    $('.rating input[type="radio"]').change(function() {
//      $('#star-rating').val($(this).val());
//    });
//  });

//$(function() {
//  $('.rating i').hover(function() {
//    $(this).prevAll().addBack().addClass('fas').removeClass('far');
//    $(this).nextAll().addClass('far').removeClass('fas');
//  }, function() {
//    $(this).prevAll().addBack().removeClass('fas').addClass('far');
//  });
//  
//  $('.rating i').click(function() {
//    $('#star-rating').val($(this).data('value'));
//  });
//});

//$(function() {
//  $('.star-rating').rating({
//    min: 1,
//    max: 5,
//    step: 1,
//    stars: 5,
//    showClear: false,
//    showCaption: false,
//    size: 'xs',
//    containerClass: 'is-star'
//  });
//  
//  $('.star-rating').on('rating:change', function(event, value, caption) {
//    $('#star-rating').val(value);
//  });
//});

//$(document).ready(function() {
//  $('.star-rating').rating({
//    filledStar: '<i class="fas fa-star"></i>',
//    emptyStar: '<i class="far fa-star"></i>',
//    onSelect: function(value, text) {
//      $('#star-rating').val(value);
//    }
//  });
//});
    
//    function openModal() {
//  var modal = document.getElementById("myModal");
//  modal.style.display = "block";
//}
//
//function rateProduct(numStars) {
//  // Your code to record the user's rating goes here
//  console.log("User rated the product " + numStars + " stars");
//  
//  var modal = document.getElementById("myModal");
//  modal.style.display = "none";
//}
//
//var closeBtn = document.getElementsByClassName("close")[0];
//closeBtn.onclick = function() {
//  var modal = document.getElementById("myModal");
//  modal.style.display = "none";
//}
var modal = document.getElementById("rate-modal");

// Get the button that opens the modal
var btn = document.getElementById("rate-btn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

// When the user clicks on a star, set the rating value and close the modal
//var stars = document.getElementsByClassName("star");
//for (var i = 0; i < stars.length; i++) {
//  stars[i].onclick = function() {
//    var rating = this.getAttribute("data-value");
//    // Do something with the rating value, such as send it to a server
//    console.log("Rating: " + rating);
//    modal.style.display = "none";
//  }
//}

</script>

<!--<script>
//    var slider = document.getElementById("slider");
//var track = document.getElementById("slider-track");
//var handle = document.getElementById("slider-handle");
//var ratingInput = document.querySelector("input[name=rating]");
//
//var min = 1;
//var max = 5;
//var range = max - min;
//
//function getPosition(value) {
//  var position = (value - min) / range;
//  return position * (slider.offsetWidth - handle.offsetWidth);
//}
//
//function getValue(position) {
//  var value = (position / (slider.offsetWidth - handle.offsetWidth)) * range + min;
//  return Math.round(value * 10) / 10;
//}
//
//function setHandle(position) {
//  if (position < 0) {
//    position = 0;
//  } else if (position > slider.offsetWidth - handle.offsetWidth) {
//    position = slider.offsetWidth - handle.offsetWidth;
//  }
//  handle.style.left = position + "px";
//}
//
//function setRating(value) {
//  ratingInput.value = value;
//}
//
//handle.addEventListener("mousedown", function(event) {
//  event.preventDefault();
//  var startX = event.clientX;
//  var handleX = handle.offsetLeft;
//
//  function handleMouseMove(event) {
//    var dx = event.clientX - startX;
//    var newPosition = handleX + dx;
//    var newValue = getValue(newPosition);
//    setHandle(newPosition);
//    setRating(newValue);
//  }
//
//  function handleMouseUp(event) {
//    document.removeEventListener("mousemove", handleMouseMove);
//    document.removeEventListener("mouseup", handleMouseUp);
//  }
//
//  document.addEventListener("mousemove", handleMouseMove);
//  document.addEventListener("mouseup", handleMouseUp);
//});
//
//slider.addEventListener("click", function(event) {
//  var position = event.clientX - slider.getBoundingClientRect().left - handle.offsetWidth / 2;
//  var value = getValue(position);
//  setHandle(getPosition(value));
//  setRating(value);
//});
//
//setHandle(getPosition(min));
//setRating(min);

var slider = document.getElementById("slider");
var track = document.getElementById("slider-track");
var handle = document.getElementById("slider-handle");
var ratingInput = document.querySelector("input[name=rating]");

var min = 1;
var max = 5;
var range = max - min;

function getPosition(value) {
  var position = (value - min) / range;
  return position * (slider.offsetWidth - handle.offsetWidth);
}

function getValue(position) {
  var value = (position / (slider.offsetWidth - handle.offsetWidth)) * range + min;
  return Math.round(value * 10) / 10;
}

function setHandle(position) {
  if (position < 0) {
    position = 0;
  } else if (position > slider.offsetWidth - handle.offsetWidth) {
    position = slider.offsetWidth - handle.offsetWidth;
  }
  handle.style.left = position + "px";
}

function setRating(value) {
  ratingInput.value = value;
}

handle.addEventListener("mousedown", function(event) {
  event.preventDefault();
  var startX = event.clientX;
  var handleX = handle.offsetLeft;

  function handleMouseMove(event) {
    var dx = event.clientX - startX;
    var newPosition = handleX + dx;
    var newValue = getValue(newPosition);
    setHandle(newPosition);
    setRating(newValue);
  }

  function handleMouseUp(event) {
    document.removeEventListener("mousemove", handleMouseMove);
    document.removeEventListener("mouseup", handleMouseUp);
  }

  document.addEventListener("mousemove", handleMouseMove);
  document.addEventListener("mouseup", handleMouseUp);
});

slider.addEventListener("click", function(event) {
  var position = event.clientX - slider.getBoundingClientRect().left - handle.offsetWidth / 2;
  var value = getValue(position);
  setHandle(getPosition(value));
  setRating(value);
});

setHandle(getPosition(min));
setRating(min);
</script>-->
<script>
    const slider = document.getElementById("slider");
const sliderValue = document.getElementById("slider-value");

const updateSliderValue = (event) => {
  sliderValue.innerText = event.target.value;
};

slider.addEventListener("input", updateSliderValue);

</script>
</body>
</html>