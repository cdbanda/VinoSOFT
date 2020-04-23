<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminUsuarioEditar.aspx.cs" Inherits="VinoSOFT.AdminUsuarioEditar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoMasterPage" runat="server">

    <%-- Datos de Usuario --%>
<div class="block full">
    <div class="container">
        <div class="row">
            <div class="col col-md-4">
                <asp:TextBox ID="impNombre" runat="server"></asp:TextBox>
            </div>
            <div class="col col-md-4">
                <asp:TextBox ID="impApellido" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>

    <%--  --%>

    <asp:DropDownList ID="ddRoles" runat="server">

    </asp:DropDownList>
</div>
</asp:Content>
