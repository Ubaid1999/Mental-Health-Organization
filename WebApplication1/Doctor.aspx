<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Doctor.aspx.cs" Inherits="WebApplication1.Doctor" %>
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
    </section>

    <section>
       
        <div class="container">

            <div class="row">
                 <div class="col-12">
                        <center>
                        <h1 >DOCTOR
<%--  <p>Resize this responsive page to see the effect!</p>--%>
    <img src="https://www.pinclipart.com/picdir/big/1-11658_stethoscope-clipart-stethoscope-clipart-black-and-white-png.png" alt="DOC" width="70" height="90"/>
</h1>
                     <p><b>Welcome! You may access the following</b></p>
                       </center>
                     
                 </div>
            </div>
        
            <div class="row">

                 <div class="col">
                        <center>
                       <img src="Images/contact.png" width="170px" height="163px" /><br />
                    <a href="ViewDoctorProfile.aspx" type="button" class="btn btn-primary btn-lg">View Profile</a>
        <p>Edit your profile..</p>
                     </center>
                 </div>


                <div class="col">
                        <center>
                       <img src="Images/Patient.png" width="170px" height="163px" /><br />
                    <a href="DocAppToday.aspx" type="button" class="btn btn-primary btn-lg">Appointments</a>
      <p>check your Patients..</p>

                        </center>
                 </div>

                 <div class="col">
                        <center>
                       <img src="Images/discussion.png" width="165px" height="158px" />
                     <a href="DiscussionRoom.aspx" type="button" class="btn btn-primary btn-lg">Discussion Room</a>
      <p>Join Discussion..</p> </center>
                 </div>

                  <div class="col">
                        <center>
                       <img src="Images/packages.png" width="170px" height="163px" />
                     <a href="Benefits.aspx" type="button" class="btn btn-primary btn-lg">Benefits</a>
      <p>Claim Benefits..</p> </center>
                 </div>

                
            </div>


            
          
        </div>

    </section>
       <br /><br /><br />
       <section>
       
       

    </section>

</asp:Content>
