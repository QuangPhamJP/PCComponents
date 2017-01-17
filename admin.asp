<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE HTML>
<head>
<title>PC & Components Online</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/slider.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/menu.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script> 
<script type="text/javascript" src="js/nav.js"></script>
<script type="text/javascript" src="js/nav-hover.js"></script>
<script type="text/javascript">
  $(document).ready(function($){
    $('#dc_mega-menu-orange').dcMegaMenu({rowItems:'4',speed:'fast',effect:'fade'});
    $('.header_top_right').css({"display" :"flex", "align-items": "center"});
  });
</script>
</head>
<body>
  <div class="wrap">
  <div class="header">
    <div class="header_top">
      <div class="logo">
        <a href="index.html"><img src="images/logo.png" alt="" /></a>
      </div>
        <div class="header_top_right">
          <div class="shopping_cart">
          <div class="cart">
            <a href="#" title="View my shopping cart" rel="nofollow">
              <strong class="opencart"> </strong>
                <span class="cart_title">Cart</span>
                  <span class="no_product">(empty)</span>
              </a>
            </div>
          </div>
       <div class="login">
           <span><a href="login.html"><img src="images/login.png" alt="" title="login"/></a></span>
       </div>
     <div class="clear"></div>
     </div>
   <div class="clear"></div>
   </div>
  <div class="menu manage">
    <ul id="dc_mega-menu-orange" class="dc_mm-orange">
      <li><a href="index.html">Quản lý sản phẩm</a></li>
      <li><a href="products.html">Quản lý Admin</a>
      <li><a href="products.html">Quản lý Users</a>
      </li> 
      <li><a href="products.html">Quản lý Thương hiệu</a>
      </li>
      <li><a href="about.html">Quản lý FAQ</a></li>
      <li><a href="faq.html">Quản lý Feedback</a></li>
      <div class="clear"></div>
    </ul>
</div>
 </div>
 <div class="main">
    <div class="content">
      <h1>Quản lý Admin</h1><br>
      <form action="" style="text-align: center;">
      <table>
        <tr><td>Username</td>
            <td>Password</td>
            <td>Role</td>
        </tr>
        <tr></tr>
        <tr>
          <td><input type="text" value="a"></td>
          <td><input type="text" value="123"></td>
          <td><input type="text" value="super"></td>
        </tr>
      </table>
      <div>
          <td><input type="button" value="Thêm"></td>
          <td><input type="button" value="Xóa"></td>
      </div>
    </form>
      
        <div class="clear"></div>
    </div>
 </div>
</div>
   <div class="footer">
      <div class="wrapper"> 
       <div class="section group">
        <div class="col_1_of_4 span_1_of_4">
            <h4>Information</h4>
            <ul>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Customer Service</a></li>
            <li><a href="#"><span>Advanced Search</span></a></li>
            <li><a href="#">Orders and Returns</a></li>
            <li><a href="#"><span>Contact Us</span></a></li>
            </ul>
          </div>
        <div class="col_1_of_4 span_1_of_4">
          <h4>Why buy from us</h4>
            <ul>
              <li><a href="about.html">About Us</a></li>
              <li><a href="faq.html">Customer Service</a></li>
              <li><a href="#">Privacy Policy</a></li>
              <li><a href="contact.html"><span>Site Map</span></a></li>
              <li><a href="preview-2.html"><span>Search Terms</span></a></li>
            </ul>
        </div>
        <div class="col_1_of_4 span_1_of_4">
          <h4>My account</h4>
            <ul>
              <li><a href="contact.html">Sign In</a></li>
              <li><a href="index.html">View Cart</a></li>
              <li><a href="#">My Wishlist</a></li>
              <li><a href="#">Track My Order</a></li>
              <li><a href="faq.html">Help</a></li>
            </ul>
        </div>
        <div class="col_1_of_4 span_1_of_4">
          <h4>Contact</h4>
            <ul>
              <li><span>+91-123-456789</span></li>
              <li><span>+00-123-000000</span></li>
            </ul>
            <div class="social-icons">
              <h4>Follow Us</h4>
                  <ul>
                    <li class="facebook"><a href="#" target="_blank"> </a></li>
                    <li class="twitter"><a href="#" target="_blank"> </a></li>
                    <li class="googleplus"><a href="#" target="_blank"> </a></li>
                    <li class="contact"><a href="#" target="_blank"> </a></li>
                    <div class="clear"></div>
                 </ul>
              </div>
        </div>
      </div>
      <div class="copy_right">
        <p>Compant Name © All rights Reseverd | Design by G3 </p>
       </div>
     </div>
    </div>
    <script type="text/javascript">
    $(document).ready(function() {
      /*
      var defaults = {
          containerID: 'toTop', // fading element id
        containerHoverID: 'toTopHover', // fading element hover id
        scrollSpeed: 1200,
        easingType: 'linear' 
      };
      */
      
      $().UItoTop({ easingType: 'easeOutQuart' });
      
    });
  </script>
    <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
    <%
        Session.TimeOut = 3
        if(Session("username_admin") = "") then
	  	    Response.redirect("Admin_Login.asp")
		    else
          Response.Write("<script>$('<p class=welcom_admin"&">Welcome&nbsp</p>').insertAfter('.login');</script>")
          Response.Write("<script>$('<p>"&"<a href=#>"&Session("username_admin")&"</a>"&"</p>').insertAfter('.welcom_admin')</script>")
          Response.Write("<script>$('<input type=button value=Logout id=logout></input>').appendTo('.header_top_right')</script>")
        end if
    %>
</body>
</html>

