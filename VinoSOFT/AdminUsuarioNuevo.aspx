<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminUsuarioNuevo.aspx.cs" Inherits="VinoSOFT.AdminUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoMasterPage" runat="server">
<div class="container">

    <span class="lead">Registrar Usuario
    </span>
    <hr />

    <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="form-horizontal">

                <div class="form-group">
                    <label for="iptEmail" class="col-sm-3 control-label">Email *</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="iptEmail" CssClass="form-control" runat="server" MaxLength="320"></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="Red"  ID="EmailRequerido" runat="server" ErrorMessage="Campo requerido  (Max 320 caracteres)" ControlToValidate="iptEmail"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="iptEmail" ErrorMessage="Formato de Email inválido"></asp:RegularExpressionValidator>
                    </div>
                </div>
<%--                    <div class="form-group">
                        <label for="iptUsuario" class="col-sm-3 control-label">Usuario *</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="iptUsuario" CssClass="form-control" runat="server" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red"  ID="UsuarioRequerido" runat="server" ErrorMessage="Campo requerido  (Max 10 caracteres)" ControlToValidate="iptUsuario"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regexUsuarioValido" runat="server" ValidationExpression="^[a-zA-Z0-9]*$" ControlToValidate="iptUsuario" ErrorMessage="Ingrese solo letras"></asp:RegularExpressionValidator>
                        </div>
                    </div>--%>

                    <div class="form-group">
                        <label for="iptContrasenia" class="col-sm-3 control-label">Contrase&ntilde;a *</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="iptContrasenia" CssClass="form-control" runat="server" MaxLength="10" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red"  ID="ContraseniaRequerida" runat="server" ErrorMessage="Campo requerido  (Max 10 caracteres)" ControlToValidate="iptContrasenia"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                        <div class="form-group">
                                <label for="iptNombre" class="col-sm-3 control-label">Nombre *</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="iptNombre" CssClass="form-control" MaxLength="50" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ForeColor="Red"  ID="NombreRequerido" runat="server" ErrorMessage="Campo requerido  (Max 10 caracteres)" ControlToValidate="iptNombre"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="iptApellido" class="col-sm-3 control-label">Apellido *</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="iptApellido" CssClass="form-control" MaxLength="50" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ForeColor="Red"  ID="ApellidoRequerido" runat="server" ErrorMessage="Campo requerido  (Max 10 caracteres)" ControlToValidate="iptApellido"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="iptDNI" class="col-sm-3 control-label">D.N.I.</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="iptDNI" CssClass="form-control js-max-length" ClientIDMode="Static" runat="server"></asp:TextBox>
                                </div>
                            </div>

                    <div class="form-group">
                        <label for="iptTelefono" class="col-sm-3 control-label">Tel&eacute;fono</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="iptTelefono" CssClass="form-control" runat="server" MaxLength="10"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                      <div class="form-group">
                        <label for="ddPermisos" class="col-sm-3 control-label">Permiso</label>
                        <div class="col-sm-9">
                            <asp:DropDownList ID="ddPermiso" CssClass="form-control" runat="server" AppendDataBoundItems="True">
                                <asp:ListItem Value="0" Text="Seleccione..."></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                            <div class="form-group">
                                <div class="col-sm-3 col-sm-offset-6">
                                    <asp:Button ID="btnRegistrar" CssClass="btn btn-success" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
                                </div>
                            </div>
                    </div>
                </div>
        </div>
    </div>

</asp:Content>
