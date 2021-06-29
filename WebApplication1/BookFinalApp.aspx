<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookFinalApp.aspx.cs" Inherits="WebApplication1.AppointmentRequestSent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        label   {color:#32a885; 
              font-family: "Segoe UI", Arial, sans-serif;
              text-align: center;
        }

    </style>
    <br /><br /><br /><br /> 
    <div style="text-align: center; border: 1px solid">
  

    <asp:Button class="btn btn-primary btn-lg" runat ="server" OnClick="sendARequest" Text ="CLICK HERE TO BOOK YOUR APPOINTMENT!" Font-Bold ="true" />

    <br /><br />
    <asp:Label  ID="Message" runat="server"></asp:Label>
        </div>
    <br /><div class="row">
                      <div class="col d-flex justify-content-end">
                          <a href="Patient.aspx" type="button" class="btn btn-primary btn-lg" >Back to Home</a>
                      </div>
                    </div><br />
     
</asp:Content>
