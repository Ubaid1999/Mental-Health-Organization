<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Benefits.aspx.cs" Inherits="WebApplication1.Benefits" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
     <asp:Label style="text-align:center; font-size:x-large; font-display:block; color:red; font-family:'Segoe UI'" class="label2" ID="Message" runat="server"></asp:Label>

    <br /><br />
    <style>
        .container{

            justify-content:space-evenly;
        }
        .container{
            color:white;
        }
        .card-body{
            background-color:lightgray;
        }
        #div1{

            background-color:lightseagreen;

        }
        #div2{
            background-color:cornflowerblue;
        }
        #div3{
            background-color:mediumorchid;
        }
        .col-md-4{
            
            transition: transform .2s; /* Animation */
          
        }
        .col-md-4:hover{
            transform: scale(1.1);
            color:HighlightText;

        }
        
    
    </style>
     

    <div class="container">

        <div class="row">

            <div class="col-md-4" >

                <div class="card">
                    <div class="card-body" id="div1">

                        

                         <div class="row">
                            <div class="col">
                                <center>
                                   <h3><b>Lite Benefit</b></h3>
                                </center>

                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>If treated patients 10 or more</label>
                                <div class="form-group">
                                    <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Circle" >
                                        <asp:ListItem>BENEFIT PACKAGE 1</asp:ListItem>
                                        <asp:ListItem> Time</asp:ListItem>
                                        <asp:ListItem>blah blah blah</asp:ListItem>
                                    </asp:BulletedList>                               

                                </div>
                            <div class="row">
                           
                                </div>


                                   <div class="form-group">
    <asp:Button class="btn btn-danger btn-block" runat ="server" OnClick="sendARequest1" Text ="Claim!" Font-Bold ="true" />

                                  </div>

                                  
                               

                            </div>

                            </div>

                        </div>

                    </div>
                </div>


            <div class="col-md-4" >


                <div class="card">
                    <div class="card-body" id="div2">
                        <div class="row">
                            <div class="col">
                                <center>
                                   <h3><b>Pro Benefit</b></h3>
                                </center>

                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>If treated patients 50 or more</label>
                                <div class="form-group">
                                    <asp:BulletedList ID="BulletedList2" runat="server" BulletStyle="Circle" >
                                        <asp:ListItem>Benefit Package 2</asp:ListItem>
                                        <asp:ListItem> Time</asp:ListItem>
                                        <asp:ListItem>blah blah blah</asp:ListItem>
                                          <asp:ListItem> Time</asp:ListItem>
                                        <asp:ListItem>blah blah blah</asp:ListItem>
                                    </asp:BulletedList>                               

                                </div>
                            
                                <div class="row">
                            
                                </div>

                                   <div class="form-group">
    <asp:Button class="btn btn-danger btn-block" runat ="server" OnClick="sendARequest2" Text ="Claim!" Font-Bold ="true" />
                                  </div>

                                  
                               

                            </div>

                            </div>

                        </div>

                        </div>
                </div>
            
               <div class="col-md-4" >


                <div class="card">
                    <div class="card-body" id="div3">
                        <div class="row">
                            <div class="col">
                                <center>
                                   <h3><b>Premium Benefit</b></h3>
                                </center>

                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>If treated patients 100 or more</label>
                                <div class="form-group">
                                    <asp:BulletedList ID="BulletedList3" runat="server" BulletStyle="Circle" >
                                        <asp:ListItem>Benefit Package 3</asp:ListItem>
                                        <asp:ListItem> Time</asp:ListItem>
                                        <asp:ListItem>blah blah blah</asp:ListItem>
                                          <asp:ListItem> Time</asp:ListItem>
                                        <asp:ListItem>blah blah blah</asp:ListItem>
                                        <asp:ListItem> Time</asp:ListItem>
                                        <asp:ListItem>blah blah blah</asp:ListItem>
                                    </asp:BulletedList>                               

                                </div>
                            <div class="row">
                            
                                </div>


                                   <div class="form-group">
    <asp:Button class="btn btn-danger btn-block" runat ="server" OnClick="sendARequest3" Text ="Claim!" Font-Bold ="true" />
                                  </div>

                          
                               

                            </div>

                            </div>

                        </div>

                        </div>
                </div>
             <div class="row">
                      <div class="col d-flex justify-content-end">
                          
                                      <a href="Doctor.aspx" type="button" class="btn btn-primary btn-lg" >Back to Home</a>

                      </div>
                    </div>       









            </div>
        </div>

     <br />


            


              


     <br />
</asp:Content>
