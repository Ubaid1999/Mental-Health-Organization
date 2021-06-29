<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookFromDocProf.aspx.cs" Inherits="WebApplication1.DoctorProfile" %>
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

.picture-src{
    width: 100%;
    
}
    .badge.badge-success {
   background-color: #FF7F50;
}    
    </style>
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
                    <span class="badge badge-success"   >Doctor</span>
                  </div>
                </div>
              </div>
              <ul class="nav nav-tabs">
                <li class="nav-item"><a href="" class="active nav-link"></a></li>
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
<asp:Label ID="DName" runat="server"  Font-Size="Medium"></asp:Label>
                                        </div>
                          </div>
                          <div class="col">
                            <div class="form-group">
                              <label><b>Age</b></label><br />
            <asp:Label ID="DAge" runat="server"  Font-Size="Medium"></asp:Label>
                                       </div>
                          </div>
                        </div>
                       
                          
                            <div class="row">
                              <div class="col">
                            <div class="form-group">
                              <label><b>Gender</b></label><br />
           <asp:Label ID="DGender" runat="server"  Font-Size="Medium"></asp:Label>
                                      </div>
                          </div>

                                <div class="col">
                            <div class="form-group">
                              <label><b>Qualification</b></label><br />
            <asp:Label ID="DQualification" runat="server"  Font-Size="Medium"></asp:Label>
                                     </div>

                               
                        </div>
                                </div>

                              

                          <div class="row">
                              <div class="col">
                            <div class="form-group">
                              <label><b>Specialization</b></label><br />
            <asp:Label ID="Spec" runat="server"  Font-Size="Medium"></asp:Label>
                                        </div>
                          </div>

                                <div class="col">
                            <label><b>Contact No.</b></label><br />
                                <div class="form-group">
           <asp:Label ID="DPhone" runat="server"  Font-Size="Medium"></asp:Label>
                                            </div>

                               
                        </div>
                                </div>

                          
                            <div class="row">
                              <div class="col">
                            <div class="form-group">
                               <label><b>Total Patients treated</b></label><br />
           <asp:Label ID="DPT" runat="server"  Font-Size="Medium"></asp:Label>
                                                 </div>
                          </div>

                                <div class="col">
                            <div class="form-group">
                     <label><b>Charges</b></label><br />

           <asp:Label ID="DCharges" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
                       <asp:Label ID="Label8" runat="server"  Font-Size="Medium"></asp:Label>
                                     </div>

                               
                        </div>
                                </div>

                                 <div class="row">
                              <div class="col">
                            <div class="form-group">
                              
                                                 </div>
                          </div>

                                <div class="col">
                            <div class="form-group">
                    
                                     </div>

                               
                        </div>
                                </div>

                    
                        
                      </div>
                    </div>
                    
                    <div class="row">
                      <div class="col d-flex justify-content-end">
                          
                      </div>
                    </div>
                                            <asp:Label ID="Labelnew" runat="server"></asp:Label>
<br />
                      <asp:Button ID="AppointmentB" runat="server" class="btn btn-primary btn-lg" Text="Take Appointment" OnClick="RedirectToAppointmentTaker" Font-Bold="true"  /> <br />&emsp;&emsp;
                          <br /><br />
                      
                          <a href="Patient.aspx" type="button" class="btn btn-primary btn-lg" >Back to Home</a>
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
</asp:Content>
