<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PatientAppToday.aspx.cs" Inherits="WebApplication1.CurrentAppointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><strong style="margin:30%">Current Appointments</strong></h1>
    <br /><br />

    <div style="margin-left: 70px">

    <asp:Label ID="Appointment" runat="server"  Font-Bold="true" Font-Size="Medium"></asp:Label>
    <br /><br />

    <asp:Label ID="ADoctor" runat="server"  Font-Bold="true" Font-Size="Medium"></asp:Label>
    <br /><br />

    <asp:Label ID="ATimings" runat="server"  Font-Bold="true" Font-Size="Medium"></asp:Label>
    <br /><br />

    </div>
    <div class="row">
                      <div class="col d-flex justify-content-end">
                          <a href="Patient.aspx" type="button" class="btn btn-primary btn-lg" >Back to Home</a>
                      </div>
                    </div>
</asp:Content>
