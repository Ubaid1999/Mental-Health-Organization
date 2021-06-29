<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebApplication1.Admin1" %>
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

       
    </style>
       <section>
<%--        <img src="Images/homeup.png" class="img-fluid" width="1674px" height="187px"/>--%>
    </section>

    <section>
       
        <div class="container">

            <div class="row">
                 <div class="col-12">
                        <center>
                        <h1 >Admin
    <img src="Images/admin.png" alt="DOC" width="80" height="90"/>
</h1>
                     <p><b>Welcome! You may access all Doctors and Patients</b></p>
                       </center>
                     
                 </div>
            </div>
        
            <div class="row">

                 <div class="col">
                        <center>
                       <img src="Images/contact.png" width="170px" height="163px" /><br />
                    <a href="AdminDoctors.aspx" type="button" class="btn btn-primary btn-lg">Doctors</a>
        <p>View or delete any Doctor..</p>
                     </center>
                 </div>


                <div class="col">
                        <center>
                       <img src="Images/Patient.png" width="170px" height="163px" /><br />
                    <a href="AdminPatients.aspx" type="button" class="btn btn-primary btn-lg">Patients</a>
      <p>View or delete any Patient..</p>

                        </center>
                 </div>

    
            </div>


            
          
        </div>

    </section>
       <br /><br /><br />
       <section>
       
       

    </section>
</asp:Content>
