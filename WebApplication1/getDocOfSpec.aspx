﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="getDocOfSpec.aspx.cs" Inherits="WebApplication1.ViewDoctors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        h1   {color:#32a885; 
              font-family: "Segoe UI", Arial, sans-serif;
              text-align: center;
        }

    </style>

    <h1><strong>Select a Doctor to Book Appointment</strong></h1>
    <br /><br />

    <asp:Label ID="TDoctor" runat="server"></asp:Label>
    

    <asp:GridView ID="TDoctorGrid" runat="server" class = "GridView-d" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="1000px"
        EnableViewState ="False"
        AutoGenerateSelectButton="True" 
        OnRowCommand="TDoctorGrid_RowCommand" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" HorizontalAlign="Center"
     
        >
        
        <HeaderStyle BackColor="#FF7F50" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#F7F7DE" />
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#CCCC99" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />        
          
        <Columns>
            <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText = "No." ItemStyle-Width="50">
                <ItemTemplate>
                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                </ItemTemplate>

            <ItemStyle Width="50px"></ItemStyle>
            </asp:TemplateField>
        </Columns>


    </asp:GridView>

    <br /><div class="row">
                      <div class="col d-flex justify-content-end">
                          <a href="Patient.aspx" type="button" class="btn btn-primary btn-lg" >Back to Home</a>
                      </div>
                    </div><br />

</asp:Content>
