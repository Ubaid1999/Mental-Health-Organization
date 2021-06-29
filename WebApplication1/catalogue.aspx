<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="catalogue.aspx.cs" Inherits="WebApplication1.catalogue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        body, html {
  height: 100%;
  margin: 0;
}
        .bg {
  /* The image used */
  background-image: url("https://wallpaperaccess.com/full/289374.jpg");

  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat:repeat;
  background-size: cover;
}
        .btn-primary {
            color: white;
            background-color: #FF7F50;
            border-color: #FF7F50
        }
        svg {
            text-align: center;
        }


        .dropbtn {
  background-color: #FF7F50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  border-radius:12px;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #ddd;}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {display: block;}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {background-color: #ff6a00;}
       
    </style>
       <section>
<%--        <img src="Images/homeup.png" class="img-fluid" width="1674px" height="187px"/>--%>
    </section>

    <section>
       
        <div class="container">

            <div class="row">
                 <div class="col-12">
                        <center>
                        <h1 >CATALOGUE
<%--  <p>Resize this responsive page to see the effect!</p>--%>
    <img src="Images/cat.jpg" alt="DOC" width="90" height="110"/>
</h1>
                     <p><b>Your Mental Health is our First Priority</b></p>
                       </center>
                     
                 </div>
            </div>


            <br /><br /><br />
        
            <div class="row">

                 <div class="col">
                        <center>
                       <img src="Images/rpat.png" width="160px" height="150px" /><br />
                    <div class="dropdown">
                   
  <button class="dropbtn">How to Book Appointment</button>
  <div class="dropdown-content">
    <a >Step1: Go to specializations</a>
    <a >step2: Look at the Available Doctors </a>
    <a >step3: Pick your preferred Doctor</a>
      <a>step4: Confirm your Appointment</a>
      </div>
                        </div>
      </center>
                     
                 </div>
<div class="col">
                        <center>
                       <img src="Images/opat.png" width="160px" height="150px"/><br />
                    <div class="dropdown">
                   
  <button class="dropbtn">Available Specializations</button>
  <div class="dropdown-content">
    <a >(1)Psychologists</a>
    <a >(2)Family Counselors</a>
    <a >(3)Therapists</a>
      <a >(4)Psychiatrists</a>
      
      </div>
                        </div>
      </center>
                     
                 </div>

                 <div class="col">
                        <center>
                       <img src="Images/psycho.png" width="160px" height="150px" /><br />
                    <div class="dropdown">
                   
  <button class="dropbtn">Yearly Packages</button>
  <div class="dropdown-content">
   <a>Lite Package</a>
    <a >Pro Package</a>
      <a>Premium Package</a>
      </div>
                        </div>
      </center>
                     
                 </div>

                 


            </div>


            </div>
          
        

    </section>
       <br /><br /><br />
       <section>
       
       <br /><br /><br /><br />
    

    </section>

</asp:Content>
