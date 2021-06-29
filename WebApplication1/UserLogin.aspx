<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="WebApplication1.UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br />


    <div class="container">

        <div class="row">

            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                
                                <center>

                        <img width="176" height="202" src="Images/User.png" />
                                </center>

                            </div>

                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                   <h3><b>User Login</b></h3>
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
                                <label>UserName</label>
                                <div class="form-group">
                                    <asp:TextBox ID="uname" runat="server" type="text" class="form-username form-control" placeholder="userName" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uname" ErrorMessage="*Please enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                </div>
                               

                            <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="loginPassword" runat="server" type="password" class="form-username form-control" placeholder="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="loginPassword" ErrorMessage="*Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:Label ID="Label2" runat="server"></asp:Label>
                                </div>
                                
                                  

                                   <div class="form-group">
                                 <asp:button ID="loginUserName"  runat="server"  type="submit" Text="Login"  class="btn btn-info btn-block" onclick="loginFunct"></asp:button>
                                  </div>

                                  <div class="form-group">
                                     <a href="UserSignUp.aspx">  <input class="btn btn-info btn-block" id="Button2" type="button" value="Sign Up" /> </a> 
                                  </div> 
                               

                            </div>

                            </div>

                        </div>


                    </div>
                </div>

            </div>
        </div>

     <br />
    

</asp:Content>
