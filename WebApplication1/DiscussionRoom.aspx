<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DiscussionRoom.aspx.cs" Inherits="WebApplication1.DiscussionRoom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">

        <div class="row">

            <div class="col-md-10  mx-auto">

                <div class="card">
                    <div class="card-body">
                       <div class="row">
                            <div class="col">
        
                                <center>

                        <h3><b>Discussion Rooms</b></h3>
                                </center>

                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
        
                                <center>

                        <img src="Images/discussion.png" width="166" height="186" />
                                </center>

                            </div>

                        </div>
                        <div class="row" >
                            <div class="col">
         
                              <label>Room Name</label>

                            </div>
                            <div class="col">
         
                              <label>Doctor Assigned</label>

                            </div>
                            <div class="col">
         
                              <label>Number of People</label>

                            </div>
                          
                            <hr />

                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:TextBox ID="TextBox3" runat="server" placeholder="Room Name..." CssClass="form-control"></asp:TextBox>


                                </div>
                            <div class="col">
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Doc Name..." CssClass="form-control"></asp:TextBox>


                                </div>
                            <div class="col">
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="People..." TextMode="Number" CssClass="form-control"></asp:TextBox>


                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
         </div>




</asp:Content>
