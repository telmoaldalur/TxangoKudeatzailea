<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Bezeroa.aspx.vb" Inherits="TxangoKudeatzailea.Bezeroa" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            width: 837px;
            height: 286px;
            position: absolute;
            top: 169px;
            left: 18px;
            z-index: 1;
        }
        .style2
        {
            position: absolute;
            top: 53px;
            left: 34px;
            z-index: 1;
        }
        .style1
        {
            position: absolute;
            top: 103px;
            left: 33px;
            z-index: 1;
            height: 27px;
        }
        .style4
        {
            position: absolute;
            top: 156px;
            left: 37px;
            z-index: 1;
        }
        .style5
        {
            position: absolute;
            top: 138px;
            left: 96px;
            z-index: 1;
        }
        .style42
        {
            z-index: 1;
            left: 434px;
            top: -118px;
            position: absolute;
            width: 126px;
        }
        </style>
</head>
<body style="height: 477px">
    <form id="form1" runat="server">
    <p>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Irudiak/MendiLogo.jpg" 
            style="z-index: 1; left: 22px; top: 7px; position: absolute; height: 122px; width: 297px" />
    </p>
    <div>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" CssClass="style3">
        <br />
        &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLinkPerfila" runat="server" CssClass="style2" 
            NavigateUrl="~/MendiElkartea/Bezeroa/Perfila.aspx">Perfila</asp:HyperLink>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLinkTxangoGuztiak" runat="server" CssClass="style1" 
            NavigateUrl="~/MendiElkartea/Bezeroa/TxangoGuztiak.aspx">Txangoetara Apuntatu</asp:HyperLink>
        <asp:HyperLink ID="HyperLinkNireTxangoak" runat="server" CssClass="style4" 
            NavigateUrl="~/MendiElkartea/Bezeroa/NireTxangoak.aspx">Nire Txangoak</asp:HyperLink>
        <asp:Label ID="Bezero" runat="server" CssClass="style42" Font-Size="XX-Large" 
            Font-Underline="True" Text="Bezeroa"></asp:Label>
    </asp:Panel>
    <asp:Label ID="Mezua" runat="server" CssClass="style5" Text="Mezua"></asp:Label>
    </form>
</body>
</html>
