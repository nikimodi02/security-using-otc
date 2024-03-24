<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="preview.aspx.cs" Inherits="ShoppingSite.preview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Free Home Shoppe Website Template | Preview :: w3layouts</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
    <link href="css/easy-responsive-tabs.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/global.css">
    <script src="js/slides.min.jquery.js"></script>
    <script>
        $(function () {
            $('#products').slides({
                preload: true,
                preloadImage: 'img/loading.gif',
                effect: 'slide, fade',
                crossfade: true,
                slideSpeed: 350,
                fadeSpeed: 500,
                generateNextPrev: true,
                generatePagination: false
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrap">
        <div class="header">
            <div class="headertop_desc">
                <%--<div class="call">
                    <p>
                        <span>Need help?</span> call us <span class="number">1-22-3456789</span></span></p>
                </div>
                <div class="account_desc">
                    <ul>
                        <li><a href="#">Register</a></li>
                        <li><a href="#">Login</a></li>
                        <li><a href="#">Delivery</a></li>
                        <li><a href="#">Checkout</a></li>
                        <li><a href="#">My Account</a></li>
                    </ul>
                </div>--%>
                <div class="clear">
                </div>
            </div>
            <div class="header_top">
                <div class="logo">
                    <a href="index.html">
                        <img src="images/logo.png" alt="" /></a>
                </div>
                <%-- <div class="cart">
                    <p>
                        Welcome to our Online Store! <span>Cart:</span><div id="dd" class="wrapper-dropdown-2">
                            0 item(s) - $0.00
                            <ul class="dropdown">
                                <li>you have no items in your Shopping cart</li>
                            </ul>
                        </div>
                    </p>
                </div>--%>
                <script type="text/javascript">
                    function DropDown(el) {
                        this.dd = el;
                        this.initEvents();
                    }
                    DropDown.prototype = {
                        initEvents: function () {
                            var obj = this;

                            obj.dd.on('click', function (event) {
                                $(this).toggleClass('active');
                                event.stopPropagation();
                            });
                        }
                    }

                    $(function () {

                        var dd = new DropDown($('#dd'));

                        $(document).click(function () {
                            // all dropdowns
                            $('.wrapper-dropdown-2').removeClass('active');
                        });

                    });

                </script>
                <div class="clear">
                </div>
            </div>
            <div class="header_bottom">
                <div class="menu">
                    <ul>
                        <li class="active"><a href="Default.aspx">Home</a></li>
                        <li><a href="About.aspx">About</a></li>
                        <li><a href="Cart.aspx">Cart</a></li>
                       <%-- <li><a href="news.html">News</a></li>
                        <li><a href="contact.html">Contact</a></li>--%>
                        <div class="clear">
                        </div>
                    </ul>
                </div>
                <%--<div class="search_box">
                    <form>
                    <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input
                        type="submit" value="">
                    </form>
                </div>--%>
                <div class="clear">
                </div>
            </div>
        </div>
        <div class="main">
            <div class="content">
                <div class="content_top">
                    <div class="back-links">
                        <% if (Session["ID"] != null)
                           { %>
                        <h3>
                            Welcome:<%= Session["Name"].ToString() %></h3>
                        <% } %>
                    </div>
                    <div class="clear">
                    </div>
                </div>
                <div class="section group">
                    <div class="cont-desc span_1_of_2">
                        <div class="product-details">
                            <div class="grid images_3_of_2">
                                <div id="container">
                                    <div id="products_example">
                                        <div id="products">
                                            <asp:Image ID="Image1" runat="server" Height="178px" Width="201px" />
                                            <%--<div class="slides_container">
                                                <a href="#" target="_blank">
                                                    </a> <a href="#" target="_blank">
                                            </div>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="desc span_3_of_2">
                                <h2>
                                    <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                                </h2>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore.</p>
                                <div class="price">
                                    <p>
                                        Price:
                                        <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label></p>
                                </div>
                                <%--<div class="available">
                                    <p>
                                        Available Options :</p>
                                    <ul>
                                        <li>Color:
                                            <select>
                                                <option>Silver</option>
                                                <option>Black</option>
                                                <option>Dark Black</option>
                                                <option>Red</option>
                                            </select></li>
                                        <li>Size:<select>
                                            <option>Large</option>
                                            <option>Medium</option>
                                            <option>small</option>
                                            <option>Large</option>
                                            <option>small</option>
                                        </select></li>
                                        <li>Quality:<select>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select></li>
                                    </ul>
                                </div>--%>
                                <div class="share-desc">
                                    <div class="share">
                                        <p>
                                            Share Product :</p>
                                        <ul>
                                            <li><a href="#">
                                                <img src="images/facebook.png" alt="" /></a></li>
                                            <li><a href="#">
                                                <img src="images/twitter.png" alt="" /></a></li>
                                        </ul>
                                    </div>
                                    <div class="button">
                                        <span>
                                            <%--<a href="#">Add to Cart</a>--%><asp:Button ID="btnBuy" runat="server" Text="Add to Cart"
                                                Height="33px" OnClick="btnBuy_Click" /></span></div>
                                    <div class="clear">
                                    </div>
                                </div>
                                <%--  <div class="wish-list">
                                    <ul>
                                        <li class="wish"><a href="#">Add to Wishlist</a></li>
                                        <li class="compare"><a href="#">Add to Compare</a></li>
                                    </ul>
                                </div>--%>
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="wrap">
            <div class="section group">
                <div class="col_1_of_4 span_1_of_4">
                    <h4>
                        Information</h4>
                    <ul>
                        <li><a href="about.html">About Us</a></li>
                        <li><a href="contact.html">Customer Service</a></li>
                        <li><a href="#">Advanced Search</a></li>
                        <li><a href="delivery.html">Orders and Returns</a></li>
                        <li><a href="contact.html">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col_1_of_4 span_1_of_4">
                    <h4>
                        Why buy from us</h4>
                    <ul>
                        <li><a href="about.html">About Us</a></li>
                        <li><a href="contact.html">Customer Service</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="contact.html">Site Map</a></li>
                        <li><a href="#">Search Terms</a></li>
                    </ul>
                </div>
                <div class="col_1_of_4 span_1_of_4">
                    <h4>
                        My account</h4>
                    <ul>
                        <li><a href="contact.html">Sign In</a></li>
                        <li><a href="index.html">View Cart</a></li>
                        <li><a href="#">My Wishlist</a></li>
                        <li><a href="#">Track My Order</a></li>
                        <li><a href="contact.html">Help</a></li>
                    </ul>
                </div>
                <div class="col_1_of_4 span_1_of_4">
                    <h4>
                        Contact</h4>
                    <ul>
                        <li><span>+91-123-456789</span></li>
                        <li><span>+00-123-000000</span></li>
                    </ul>
                    <div class="social-icons">
                        <h4>
                            Follow Us</h4>
                        <ul>
                            <li><a href="#" target="_blank">
                                <img src="images/facebook.png" alt="" /></a></li>
                            <li><a href="#" target="_blank">
                                <img src="images/twitter.png" alt="" /></a></li>
                            <li><a href="#" target="_blank">
                                <img src="images/skype.png" alt="" />
                            </a></li>
                            <li><a href="#" target="_blank">
                                <img src="images/dribbble.png" alt="" /></a></li>
                            <li><a href="#" target="_blank">
                                <img src="images/linkedin.png" alt="" /></a></li>
                            <div class="clear">
                            </div>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy_right">
            <p>
                Company Name © All rights Reseverd | Design by <a href="http://w3layouts.com">W3Layouts</a>
            </p>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $().UItoTop({ easingType: 'easeOutQuart' });

        });
    </script>
    <a href="#" id="toTop"><span id="toTopHover"></span></a>
    </form>
</body>
</html>
