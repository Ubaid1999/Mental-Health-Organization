<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewPatientProfile.aspx.cs" Inherits="WebApplication1.ViewPatientProfile" %>
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
        .picture-container{
    position: relative;
    cursor: pointer;
    text-align: center;
}
.picture{
    width: 106px;
    height: 106px;
    background-color: #999999;
    border: 4px solid #CCCCCC;
    color: #FFFFFF;
    border-radius: 50%;
    margin: 0px auto;
    overflow: hidden;
    transition: all 0.2s;
    -webkit-transition: all 0.2s;
}
.picture:hover{
    border-color: #2ca8ff;
}
.content.ct-wizard-green .picture:hover{
    border-color: #05ae0e;
}
.content.ct-wizard-blue .picture:hover{
    border-color: #3472f7;
}
.content.ct-wizard-orange .picture:hover{
    border-color: #ff9500;
}
.content.ct-wizard-red .picture:hover{
    border-color: #ff3b30;
}
.picture input[type="file"] {
    cursor: pointer;
    display: block;
    height: 100%;
    left: 0;
    opacity: 0 !important;
    position: absolute;
    top: 0;
    width: 100%;
}
label   {color:#32a885; 
              font-family: "Segoe UI", Arial, sans-serif;
              text-align: center;
        }
.picture-src{
    width: 100%;
    
}
    .badge.badge-success {
   background-color: #FF7F50;
}    
    </style>
       <section>
           <div class="row">
                 <div class="col-12">
                        <center>
                        <h1 >PATIENT
       <img src="data:image/png;base64,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" alt="DOC" width="70" height="90"/>

</h1>
                     <p>Welcome To Your Profile</p>
                       </center>
                     
                 </div>
            </div>
    </section>

     
    <section>
<div class="container">
<div class="row flex-lg-nowrap">
  <div class="col-12 col-lg-auto mb-3" style="width: 200px;">
    <div class="card p-3">
      
    </div>
  </div>

  <div class="col">
    <div class="row">
      <div class="col mb-3">
        <div class="card">
          <div class="card-body">
            <div class="e-profile">
              <div class="row">
                <div class="col-12 col-sm-auto mb-3">
                  <div class="mx-auto" style="width: 140px;">
                    <div class="picture-container">
        <div class="picture">
            <img src="https://lh3.googleusercontent.com/LfmMVU71g-HKXTCP_QWlDOemmWg4Dn1rJjxeEsZKMNaQprgunDTtEuzmcwUBgupKQVTuP0vczT9bH32ywaF7h68mF-osUSBAeM6MxyhvJhG6HKZMTYjgEv3WkWCfLB7czfODidNQPdja99HMb4qhCY1uFS8X0OQOVGeuhdHy8ln7eyr-6MnkCcy64wl6S_S6ep9j7aJIIopZ9wxk7Iqm-gFjmBtg6KJVkBD0IA6BnS-XlIVpbqL5LYi62elCrbDgiaD6Oe8uluucbYeL1i9kgr4c1b_NBSNe6zFwj7vrju4Zdbax-GPHmiuirf2h86eKdRl7A5h8PXGrCDNIYMID-J7_KuHKqaM-I7W5yI00QDpG9x5q5xOQMgCy1bbu3St1paqt9KHrvNS_SCx-QJgBTOIWW6T0DHVlvV_9YF5UZpN7aV5a79xvN1Gdrc7spvSs82v6gta8AJHCgzNSWQw5QUR8EN_-cTPF6S-vifLa2KtRdRAV7q-CQvhMrbBCaEYY73bQcPZFd9XE7HIbHXwXYA=s200-no" class="picture-src" id="wizardPicturePreview" title="BLAAAHHHH"/>
            <asp:FileUpload  id="FileUpload1" runat="server" cssclass="form-control"/>
        </div>

                       
         <h6 class="">Choose Picture</h6>

    </div>
                  </div>
                </div>
                <div class="col d-flex flex-column flex-sm-row justify-content-between mb-3">
                  <div class="text-center text-sm-left mb-2 mb-sm-0">
                    
                  </div>
                  <div class="text-center text-sm-right" >
                    <span class="badge badge-success"   >Patient</span>
                  </div>
                </div>
              </div>
              <ul class="nav nav-tabs">
                <li class="nav-item"><a href="" class="active nav-link">Settings</a></li>
              </ul>
              <div class="tab-content pt-3">
                <div class="tab-pane active">
                  <form class="form" novalidate="">
                    <div class="row">
                      <div class="col">
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label><b>Full Name</b></label><br />
                       <asp:Label ID="PName2" class="pt-sm-2 pb-1 mb-0 text-nowrap" runat="server"  Font-Size="Large"></asp:Label>
                            </div>
                          </div>
                          <div class="col">
                            <div class="form-group">
                              <label><b>Age</b></label><br />
            <asp:Label ID="PatientAge" runat="server" Font-Size="Large"></asp:Label>
                            </div>
                          </div>
                        </div>
                       
                          
                            <div class="row">
                              <div class="col">
                            <div class="form-group">
                              <label><b>Birth Date</b></label><br />
            <asp:Label ID="PBirthDate" runat="server"  Font-Size="Large"></asp:Label>
                            </div>
                          </div>

                                <div class="col">
                            <div class="form-group">
                              <label><b>Gender</b></label><br />
            <asp:Label ID="PGender" runat="server" Font-Size="Large"></asp:Label>
                          </div>

                               
                        </div>
                                </div>
                              

                          <div class="row">
                              <div class="col">
                            <div class="form-group">
                              <label><b>Address</b></label><br />
            <asp:Label ID="PAddress" runat="server"  Font-Size="Large"></asp:Label>
                            </div>
                          </div>

                                <div class="col">
                            <label><b>Contact No.</b></label><br />
                                <div class="form-group">
            <asp:Label ID="PPhone" runat="server"   Font-Size="Large"></asp:Label>
                                </div>

                               
                        </div>
                                </div>



                            <div class="row">
                              
                        
                                <div class="col">
                            <div class="form-group">
                              <label><b>Yearly Package</b></label><br />
                                <div class="form-group">
            <asp:Label ID="PYP" runat="server"   Font-Size="Large"></asp:Label>
                           </div>
                          </div>
                        </div>
                        
                      </div>
                    </div>
                    
                    <div class="row">
                      <div class="col d-flex justify-content-end">
                      </div>
                    </div>
                  </form>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

     
    </div>

  </div>
</div>
</div>
       

    </section>
                              <a href="Patient.aspx" type="button" class="btn btn-primary btn-lg" >Back to Home</a>

       <br /><br /><br />
       <section>
       

    </section>
    </asp:Content>