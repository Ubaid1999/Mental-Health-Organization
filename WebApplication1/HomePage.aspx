<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication1.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <section>
        <img src="Images/homeup.png" class="img-fluid" width="1674px" height="187px"/>
    </section>
    <section>
       
        <div class="container">

            <div class="row">
                 <div class="col-12">
                        <center>
                        <h2>Features in our Website</h2>
                     <p><b>Our 3 Primary Features</b></p>
                       </center>
                     
                 </div>
            </div>
        
            <div class="row">

                 <div class="col-md-4">
                        <center>
                       <img src="Images/contact.png" width="170px" height="163px" />
                     <h4><b>24/7 Contact Services</b></h4>
                    <p class="text-justify" >We are providing our customers with 24/7 Contact service</p>
                     </center>
                 </div>


                <div class="col-md-4">
                        <center>
                       <img src="Images/discussion.png" width="170px" height="163px" />
                     <h4><b>Therapy Services</b></h4>
                    <p class="text-justify" >Different types of therapies are available to be given to our residential pateients and outpatients. They can either be in group or individual as well.</p>
                     </center>
                 </div>

                 <div class="col-md-4">
                        <center>
                       <img src="Images/packages.png" width="170px" height="163px" />
                     <h4><b>Yearly Packages</b></h4>
                    <p class="text-justify" >Suitable yearly packages that satisfy both the doctor and the patient will be displayed on the website. This can include the patients choice of location for therapy as well. </p>
                     </center>
                 </div>

                
            </div>


            
          
        </div>

    </section>
       
       <section>
       
        <div class="container">
            <div class="row">

                <div class="col-md-4">
                        <center>

                        <p class="text-justify"><b>Our Goals :-</b>
                         &nbsp;
                        Under the leadership of former First Lady Rosalynn Carter, 
                        a longtime champion for the rights of people with mental illnesses, 
                            the Carter Center's Mental Health Program works to promote awareness 
                            about mental health issues, inform public policy, achieve equity for 
                            mental health care comparable to other health care, and reduce stigma 
                            and discrimination against those with mental illnesses.
                        </p>

                       </center>
                     
                 </div>


                  <div class="col-md-6">
                        <center>
                        <asp:Image ID="Image1" src="Images/homebottom.png" runat="server"></asp:Image>
                       </center>
                     
                 </div>



            </div>
            
 
        </div>

    </section>
   
</asp:Content>
