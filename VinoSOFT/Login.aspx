<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VinoSOFT.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoMasterPage" runat="server">
    <form id="form1" runat="server">
        <div class="jumbotron">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="text-center">
                            <h4><b>Ingresar</b></h4>
                        </div>

                        <div class="form-group">
                            <label for="username">Usuario</label>
                            <asp:TextBox ID="usuarioLoginPage" runat="server" TabIndex="1" class="form-control" placeholder="Usuario" MaxLength="20" autocomplete="off"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="password">Contrase&ntilde;a</label>
                            <asp:TextBox ID="contraseniaLoginPage" runat="server" TabIndex="2" MaxLength="20" class="form-control" placeholder="Contrase&ntilde;a" autocomplete="off" TextMode="Password"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="text-center">
                                        <asp:Button ID="btn_login_LoginPage" runat="server" Text="Ingresar" TabIndex="4" class="form-control btn btn-success" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="text-center">
                                        <a href="#" tabindex="5" class="registrarse">Registrarse</a>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="text-center">
                                        <a href="#" tabindex="5" class="olvido-password">&iquest;Olvid&oacute; su contrase&ntilde;a?</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </form>
</asp:Content>
