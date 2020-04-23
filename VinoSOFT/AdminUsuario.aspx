<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminUsuario.aspx.cs" Inherits="VinoSOFT.AdminUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoMasterPage" runat="server">
    <div class="container">
         <h3>
             <a href="AdminUsuarioNuevo.aspx" class="btn btn-primary pull-right">
                 <asp:Literal ID="Literal1" runat="server" Text="Nuevo"></asp:Literal>
             </a>
         </h3>
    <hr />




       <div class="block full">
            <div class="table-responsive">
                <asp:GridView ID="dgvUsuarios" runat="server" AllowSorting="True" AutoGenerateColumns="False" BorderStyle="None" CssClass="table table-hover" AllowPaging="True" GridLines="None" PagerStyle-CssClass="pagination-dgv " PagerStyle-HorizontalAlign="Right" OnPageIndexChanging="DgvUsuario_PageIndexChanging" OnPageIndexChanged="DgvUsuario_PageIndexChanged" PageSize="15" EmptyDataText="No se encontraron registros">
                    <Columns>
                        <asp:BoundField DataField="IdUsuario" HeaderText="Codigo" />
                        <asp:BoundField DataField="Apellido"  HeaderText="Apellido" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="email" HeaderText="Email" />
                        <asp:BoundField DataField="activo" HeaderText="Activo" />
                        <asp:CommandField ShowEditButton="true" ControlStyle-CssClass="btn btn-xs btn-default" HeaderText="Editar"/>
                        <asp:CommandField ShowDeleteButton="true" ControlStyle-CssClass="btn btn-xs btn-danger" HeaderText="Eliminar"/>
                    </Columns>
                </asp:GridView>
            </div>
        </div>


    </div>
</asp:Content>
