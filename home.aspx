<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container container_slider">
          <br/>
          <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1"></li>
              <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">

              <div class="item active">
                <img src="images/slide1.jpg" width="460" height="345"/>
              </div>

              <div class="item">
                <img src="images/slide2.jpg" width="460" height="345"/>
              </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div>

        <div class="container_flag">
            <center>
                <span class="course_title">COURSES</span><br />
                    <a href="#"><img src="images/india.png" alt="" class="img_flag" /></a>
                    <a href="france.aspx"><img src="images/france.png" alt="" class="img_flag" /></a>
                    <a href="#"><img src="images/spain.png" alt="" class="img_flag" /></a>
                    <a href="#"><img src="images/germany.png" alt="" class="img_flag" /></a>
                    <a href="#"><img src="images/england.png" alt="" class="img_flag" /></a>
                    <br />
                    <a href="#"><img src="images/russia.png" alt="" class="img_flag" /></a>
                    <a href="#"><img src="images/japan.png" alt="" class="img_flag" /></a>
                    <a href="#"><img src="images/italy.png" alt="" class="img_flag" /></a>
                    <a href="#"><img src="images/portugal.png" alt="" class="img_flag" /></a>
                    <a href="#"><img src="images/china.png" alt="" class="img_flag" /></a>
            </center>         
        </div>

            
            <div class="container container_aboutus">
                <center><span class="aboutus_title">ABOUT US</span></center>
            
                <p style="margin-top:20px;">
                    We are a rapidly growing language institution that offers the very best in an extensive array of services linked to the foreign language industry in India. 
                    Our team has experienced academicians, skilled translators specialized in different domains and a host of interpreters available at all time to help you bridge the language gap.
                    We have been providing corporate training to various premier companies successfully in a row. 
                    Workshops in speech and diction for TV, Films, Theatre and other media is also one of our fortes. 
                    As our motto says, LEARN & GROW…
                </p>
            </div>
</asp:Content>

