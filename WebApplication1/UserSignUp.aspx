<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="WebApplication1.UserSignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    

				       
        <div>    
        <!-- Top content -->
             	                                
        <div class="top-content"> 
            <div class="inner-bg">
               <div class="container">
                             
                    <div class="row">
                
                        

                        <div class="col-sm-1 middle-border"></div>
                        <div class="col-sm-1"></div>
                        	
                        <div class="col-sm-5">
                        	
                        	<div class="form-box">
                        		<div class="form-top">
	                        		<div class="form-top-left">
	                        			<h3>Sign up </h3>
	                            		<p>Make a free account!</p>
	                        		</div>
	                        		<div class="form-top-right">
	                        			<i class="fa fa-pencil"></i>
	                        		</div>
	                            </div>


	                            <div class="form-bottom">
				                    
                                    
                                                                    
                                    
                            <div class="form-group">
			                    User Name
                                <asp:TextBox ID="sName" runat="server" type="text" class="form-username form-control" placeholder="Full Name"  ></asp:TextBox>

                                                       	                            
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="sName" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                                                       	                            
                            </div> 

				            <div class="form-group">
				                Birth Date 	
                                <asp:TextBox ID="sBirthDate" runat="server" type="text" class="form-username form-control" placeholder="(dd-mm-yyyy)" TextMode="Date" ></asp:TextBox>
           	                            
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="sBirthDate" ErrorMessage="*Please Enter Birthdate" ForeColor="Red"></asp:RequiredFieldValidator>
           	                            
                            </div>

				            <div class="form-group">
				                    Email 
                                    <asp:TextBox ID="Email" runat="server" type="text" class="form-username form-control" placeholder="@abc" ></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email" ErrorMessage="*Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Invalid Email Please Re-enter" ForeColor="Blue" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                            </div>

                            <div class="form-group">
				                    <asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label>
                                    <br />
				                    Password
                                    <asp:TextBox ID="sPassword" runat="server" type="password" class="form-username form-control" placeholder="New Password" ></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="sPassword" ErrorMessage="*Please EnterPassword" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>


                            <div class="form-group">
                                    Re-Enter Password  				                        
                                    <asp:TextBox ID="scPassword" runat="server" type="password" class="form-username form-control" placeholder="Confirm Password" ></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="scPassword" ErrorMessage="*Please Re-enter Password" ForeColor="Red"></asp:RequiredFieldValidator>

                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="sPassword" ControlToValidate="scPassword" ErrorMessage="*Password Doesnot match" ForeColor="Blue"></asp:CompareValidator>

                            </div>


                            <div class="form-group">
                                    Phone Number
                                    <asp:TextBox ID="Phone" runat="server" type="text" class="form-username form-control" placeholder="1234567890" ></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Phone" ErrorMessage="*Please Enter Phone Number" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                                    
                            <div class="form-group">
                                    Gender
                                 <input type="radio" name="Gender" value="M" id="test" checked="checked" />
                                  Male
                                 <input type="radio" name="Gender" value="F" />
                                  Female

                            </div>


                            <div class="form-group">
                                  Address				                        
                                <asp:TextBox id="Address" placeholder ="Address" TextMode="multiline" Columns="40" Rows="10" runat="server" Height="75px" Width="410px" />
        
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Address" ErrorMessage="*Please enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
        
                            </div>

				            <asp:button Text ="SignUp"  runat="server" type="submit" class="btn btn-primary" onclick="signUpFunct"></asp:button>
				                    
                                    
                   
                                            
                               </div>
                           </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>

</asp:Content>
