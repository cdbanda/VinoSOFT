<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mensajes.aspx.cs" Inherits="VinoSOFT.WebForm2" %>
<%@ Register Src="~/mensajesUC.ascx" TagPrefix="uc1" TagName="mensajesUC" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:mensajesUC runat="server" ID="mensajesUC" />
    </div>
    </form>
</body>
</html>
