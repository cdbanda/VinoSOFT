﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminBitacora.aspx.cs" Inherits="VinoSOFT.AdminBitacora" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoMasterPage" runat="server">

    <div class="block full">
        <div class="row">
            <div id="filter-panel" class="filter-panel">
                <div class="panel panel-default bg-panel">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="input-group">
                                    <div class="input-group-addon">Observ.</div>
                                    <asp:TextBox ID="filtroPalabraClave" runat="server" MaxLength="20" CssClass="form-control input-sm"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="input-group">
                                    <div class="input-group-addon">Fecha desde</div>
                                    <asp:TextBox ID="filtroFechaDesde" CssClass="form-control" MaxLength="10" runat="server"></asp:TextBox>
                                    <ajaxtoolkit:CalendarExtender ID="calFechaDesde" TargetControlID="filtroFechaDesde" runat="server" Format="dd-MM-yyyy"></ajaxtoolkit:CalendarExtender>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="input-group">
                                    <div class="input-group-addon">Fecha Hasta</div>
                                    <asp:TextBox ID="filtroFechaHasta" CssClass="form-control" MaxLength="10" runat="server"></asp:TextBox>
                                    <ajaxtoolkit:CalendarExtender ID="calFechaHasta" TargetControlID="filtroFechaHasta" runat="server" Format="dd-MM-yyyy"></ajaxtoolkit:CalendarExtender>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="input-group">
                                    <div class="input-group-addon">Evento</div>
                                    <asp:DropDownList ID="ddFiltroEvento" runat="server" AppendDataBoundItems="True" CssClass="form-control" AutoPostBack="True">
                                        <asp:ListItem Selected="True" Value="0">Todos</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="row botones-buscador">
                            <div class="col-md-3 col-md-offset-10">
                                <!-- form group [rows] -->
                                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-info" OnClick="btnBuscar_Click" />
                                <a href="/AdminBitacora.aspx" class="btn btn-default"><span class="glyphicon glyphicon-trash"></span>&nbsp;Limpiar</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    
    
    
    <div class="block full">
            <div class="table-responsive">
                <%--<span class="lead">Se han encontrado <strong class="text-danger">
                    <asp:Literal ID="txtCantRegistros" runat="server"></asp:Literal></strong> registros
                </span>
                <span class="help-block pull-right">Mostrando 10 registros por p&aacute;gina</span>--%>
                <%--<div style="border-top: 1px solid black;"></div>--%>

                <asp:GridView ID="DgvBitacora" runat="server" AllowSorting="True" AutoGenerateColumns="False" BorderStyle="None" CssClass="table table-hover" AllowPaging="True" GridLines="None" PagerStyle-CssClass="pagination-dgv " PagerStyle-HorizontalAlign="Right" OnPageIndexChanging="DgvBitacora_PageIndexChanging" OnPageIndexChanged="DgvBitacora_PageIndexChanged" PageSize="15" EmptyDataText="No se encontraron registros">
                    <Columns>
                        <asp:BoundField DataField="IdBitacora" HeaderText="Codigo" />
                        <asp:BoundField DataField="Impacto"   ControlStyle-CssClass='criti'  HeaderText="Impacto" />
                        <asp:TemplateField HeaderText="Evento">
                            <ItemTemplate>
                                <%# Eval("Evento.Nombre") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="FechaHora" HeaderText="Fecha" />
                        <asp:BoundField DataField="Observacion" HeaderText="Observacion" />
                    </Columns>
                </asp:GridView>

            </div>
        </div>

</asp:Content>
