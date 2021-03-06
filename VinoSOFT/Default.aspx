﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VinoSOFT.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoMasterPage" runat="server">
    <div class="jumbotron">
    <div class="container">
      <h1>Bienvenidos a VinoSOFT</h1>
      <p>Somos una empresa que se dedica a la comercialización de soluciones para el viñedo.</p>
      <p>A través de los productos para el riego, sensores de temperatura y humedad, y de imagenes aereas, permite mejorar la calidad de la uva.</p>
      <p>Nuestras soluciones de alta calidad y enfocados a estas necesidades de negocio, permitira a cada productor tener un control de la plantación y poder ser mas competitivo.</p>

      <asp:UpdatePanel ID="updatePanelAds" runat="server">
      <ContentTemplate>     
        <asp:AdRotator ID="AdRotatorDefault" runat="server" 
        AdvertisementFile="~/publicidad/publicidad.xml" 
        Height="200px" 
        Width="300px" />
        <asp:Timer ID="Timer1" Interval="3000" runat="server" />
      </ContentTemplate>
        <Triggers>  
        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />  
        </Triggers> 
      </asp:UpdatePanel> 

      </div>
  </div>
</asp:Content>