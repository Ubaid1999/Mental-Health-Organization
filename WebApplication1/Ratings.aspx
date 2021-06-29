<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ratings.aspx.cs" Inherits="WebApplication1.Ratings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

       <div class="container">

        <div class="row">

            <div class="col-md-8  mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
        
                                <center>

                        <img src="Images/doc.png" width="166" height="186" />
                                </center>

                            </div>

                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                   <h4><b>Doctor Rating</b></h4>
                                </center>

                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">

                                 <label>Doctor Name</label>
                                <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="First Name + Last Name"></asp:TextBox>
                                </div>

                            </div>

                            <div class="col-md-6">

                                 <label>Specialization</label>
                                <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"  placeholder="Specialization"></asp:TextBox>
                                </div>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col-md-6">

                                <label>Patient Name</label>
                                <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"  placeholder="First+LastName" TextMode="Phone"></asp:TextBox>
                                </div>

                            </div>
                           
                            </div>
                           
                        <div class="row">
                            
                            <div class="col-md-4">

                                  <label>Rating</label>
                                <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" Text="Enter Num" TextMode="Number"></asp:TextBox>
                                </div>
                               
                                </div>
                            </div>                           
                                 <div class="form-group">
                                     <a href="Rating.aspx">  <input class="btn btn-info btn-block" id="Button2" type="button" value="Rate" /> </a> 
                                  </div>                            
                        </div>



                        </div>

                <div class="row">
                      <div class="col d-flex justify-content-end">
                          
                                      <a href="Patient.aspx" type="button" class="btn btn-primary btn-lg" >Back to Home</a>

                      </div>





            </div>
                    </div>
                </div>

            </div>
       

    <br />

</asp:Content>
