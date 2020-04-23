<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NoticiaEditar.aspx.cs" Inherits="VinoSOFT.NoticiaEditar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoMasterPage" runat="server">

    <asp:TextBox ID="txtEditorNoticia" runat="server" Width="300" Height="200" />
    <ajaxToolkit:HtmlEditorExtender ID="HTMLeditorNoticia" runat="server" EnableSanitization="false" TargetControlID="txtEditorNoticia"></ajaxToolkit:HtmlEditorExtender>

    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click"/>

    <asp:Panel ID="panelEditarVPNoticia" runat="server">
    <asp:Literal ID="literalEditorNoticia" runat="server"></asp:Literal>
    </asp:Panel>
</asp:Content>
