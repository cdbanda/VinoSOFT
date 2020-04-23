<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="AdminFamiliasListado.aspx.cs" Inherits="VinoSOFT.AdminFamiliasListado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headBackend" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoBackendMasterPage" runat="server">

    <div class="block full">
            <div class="table-responsive">
                <span class="lead">Se han encontrado <strong class="text-danger">
                    <asp:Literal ID="txtCantRegistros" runat="server"></asp:Literal></strong> registros
                </span>
                <span class="help-block pull-right">Mostrando 10 registros por p&aacute;gina</span>
                <div style="border-top: 1px solid black;"></div>
                <asp:GridView ID="DgvFamilias" runat="server" AllowSorting="True" AutoGenerateColumns="False" BorderStyle="None" CssClass="table table-striped table-hover" AllowPaging="True" GridLines="None" PagerStyle-CssClass="pagination-dgv " PagerStyle-HorizontalAlign="Right" OnPageIndexChanging="DgvFamilias_PageIndexChanging" OnPageIndexChanged="DgvFamilias_PageIndexChanged" PageSize="15">
                    <Columns>
                        <asp:BoundField DataField="IdFamilia" HeaderText="Codigo" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                        <asp:CommandField ShowEditButton="True" EditText="<i class='glyphicon glyphicon-edit'></i>" ControlStyle-CssClass="btn btn-xs btn-default" HeaderText="Editar" />
                        <asp:CommandField ShowDeleteButton="True" DeleteText="<i class='glyphicon glyphicon-trash'></i>" ControlStyle-CssClass="btn btn-xs btn-danger"  HeaderText="Eliminar" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>

</asp:Content>
