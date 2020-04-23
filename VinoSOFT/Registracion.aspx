<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registracion.aspx.cs" Inherits="VinoSOFT.Registracion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoMasterPage" runat="server">
<div class="container">
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
                    <div class="form-group">
                        <label for="iptEmail" class="col-sm-3 control-label">Usuario *</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="iptNickname" CssClass="form-control" runat="server" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red"  ID="NicknameRequerido" runat="server" ErrorMessage="Campo requerido  (Max 10 caracteres)" ControlToValidate="iptNickname"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regexUsuarioValido" runat="server" ValidationExpression="^[a-zA-Z0-9]*$" ControlToValidate="iptNickname" ErrorMessage="Ingrese solo números  y/o letras"></asp:RegularExpressionValidator>
                        </div>
                    </div>
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
                        <label for="iptCuitDNI" class="col-sm-3 control-label">D.N.I.</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="iptDNI" CssClass="form-control js-max-length" ClientIDMode="Static" runat="server"></asp:TextBox>
                        </div>
                    </div>
<%--                    <div class="form-group">
                        <label for="iptCuitDNI" class="col-sm-3 control-label">C.U.I.T.</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="iptCUIT" CssClass="form-control  js-max-length"  ClientIDMode="Static" runat="server"></asp:TextBox>
                        </div>
                    </div>--%>
                    <div class="form-group">
                        <label for="iptTelefono" class="col-sm-3 control-label">Tel&eacute;fono</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="iptTelefono" CssClass="form-control" runat="server" MaxLength="10"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="iptDomicilio" class="col-sm-3 control-label">Domicilio</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="iptDomicilio" CssClass="form-control" runat="server" MaxLength="50"></asp:TextBox>
                        </div>
                    </div>
                    <%--<div class="form-group">
                        <label for="ddProvincia" class="col-sm-3 control-label">Provincia</label>
                        <div class="col-sm-9">
                            <asp:DropDownList ID="ddProvincia" CssClass="form-control slt-provincia" runat="server" AppendDataBoundItems="True">
                                <asp:ListItem Value="0" Text="Seleccione..."></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ddCiudad" class="col-sm-3 control-label">Ciudad</label>
                        <div class="col-sm-9">
                            <asp:DropDownList ID="ddCiudad" CssClass="form-control slt-ciudad" runat="server"></asp:DropDownList>
                        </div>
                    </div>--%>
                    <div class="checkbox">
                        
                        <div class="col-sm-6 col-sm-offset-3">
                            <label>
                                <br />
                                <asp:CheckBox ID="CheckBoxTyC" CssClass="checkboxTyC" runat="server" />
                                Acepto los <a href="TerminosYCondiciones.aspx">T&eacute;rminos y Condiciones</a>
                                <span runat="server" style="color:red" id="ErrorTyC" visible="false">Debe aceptar los t&eacute;rminos y condiciones.</span>
                                <asp:CustomValidator runat="server" ID="CheckBoxRequired" ForeColor="Red"  EnableClientScript="true" 
                                    OnServerValidate="CheckBoxRequired_ServerValidate"
                                    ClientValidationFunction="CheckBoxRequired_ClientValidate">
                                    Debe aceptar los t&eacute;rminos y condiciones.                                   
                                </asp:CustomValidator>
                                <br />
                            </label>
                        </div>
                    </div>

                   
                    <div class="form-group">
                        <div class="col-sm-3 col-sm-offset-6">
                            <asp:Button ID="btnRegistrarme" CssClass="btn btn-success" runat="server" Text="Registrarme" OnClick="btnRegistrarme_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="js/validaciones.js"></script>
</asp:Content>