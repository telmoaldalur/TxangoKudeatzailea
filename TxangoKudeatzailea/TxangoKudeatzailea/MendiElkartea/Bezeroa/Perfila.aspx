<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Perfila.aspx.vb" Inherits="TxangoKudeatzailea.Perfila" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        #form1
        {
            height: 600px;
            width: 1096px;
        }
        
        .style7
        {
            position: absolute;
            top: 47px;
            left: 162px;
            z-index: 1;
        }
        .style9
        {
            z-index: 1;
            left: 159px;
            top: 133px;
            position: absolute;
        }
        .style1
        {
            z-index: 1;
            left: 526px;
            top: 94px;
            position: absolute;
        }
        .style10
        {
            z-index: 1;
            left: 526px;
            top: 133px;
            position: absolute;
        }
        .style3
        {
            position: absolute;
            top: 224px;
            left: 64px;
            z-index: 1;
        }
        .style4
        {
            position: absolute;
            top: 220px;
            left: 158px;
            z-index: 1;
        }
        .style6
        {
            position: absolute;
            top: 270px;
            left: 156px;
            z-index: 1;
        }
        .style8
        {
            position: absolute;
            top: 179px;
            left: 159px;
            z-index: 1;
        }
        .style5
        {
            position: absolute;
            top: 271px;
            left: 43px;
            z-index: 1;
        }
        .style11
        {
            z-index: 1;
            left: 63px;
            top: 48px;
            position: absolute;
            bottom: 254px;
            width: 70px;
        }
        .style12
        {
            z-index: 1;
            left: 160px;
            top: 93px;
            position: absolute;
        }
        .style13
        {
            z-index: 1;
            left: 74px;
            top: 90px;
            position: absolute;
            bottom: 244px;
            width: 45px;
        }
        .style14
        {
            z-index: 1;
            left: 56px;
            top: 133px;
            position: absolute;
        }
        .style15
        {
            z-index: 1;
            left: 69px;
            top: 176px;
            position: absolute;
        }
        .style16
        {
            z-index: 1;
            left: 408px;
            top: 304px;
            position: absolute;
        }
        .style17
        {
            z-index: 1;
            left: 440px;
            top: 94px;
            position: absolute;
        }
        .style18
        {
            z-index: 1;
            left: 376px;
            top: 132px;
            position: absolute;
            width: 137px;
            height: 21px;
        }
        .style19
        {
            z-index: 1;
            left: 528px;
            top: 179px;
            position: absolute;
        }
        .style20
        {
            z-index: 1;
            left: 401px;
            top: 180px;
            position: absolute;
            width: 112px;
            height: 20px;
        }
        .style21
        {
            z-index: 1;
            left: 527px;
            top: 224px;
            position: absolute;
        }
        .style22
        {
            z-index: 1;
            left: 321px;
            top: 223px;
            position: absolute;
            width: 189px;
        }
        .style42
        {
            z-index: 1;
            left: 445px;
            top: 76px;
            position: absolute;
            width: 115px;
        }
        .style43
        {
            position: absolute;
            top: 307px;
            left: 570px;
            z-index: 1;
        }
        .style44
        {
            position: absolute;
            top: 549px;
            left: 695px;
            z-index: 1;
            width: 51px;
            height: 19px;
        }
        .style45
        {
            z-index: 1;
            left: 507px;
            top: 208px;
            position: absolute;
            width: 199px;
            bottom: 245px;
            height: 19px;
        }
        .style46
        {
            z-index: 1;
            left: 882px;
            top: 255px;
            position: absolute;
            width: 178px;
        }
        .style47
        {
            z-index: 1;
            left: 139px;
            top: 47px;
            position: absolute;
            width: 8px;
        }
        .style48
        {
            z-index: 1;
            left: 140px;
            top: 95px;
            position: absolute;
        }
        .style49
        {
            z-index: 1;
            left: 140px;
            top: 135px;
            position: absolute;
        }
        .style50
        {
            z-index: 1;
            left: 141px;
            top: 180px;
            position: absolute;
        }
        .style51
        {
            z-index: 1;
            left: 139px;
            top: 220px;
            position: absolute;
            bottom: 112px;
            width: 12px;
        }
        .style52
        {
            z-index: 1;
            left: 510px;
            top: 95px;
            position: absolute;
        }
        .style53
        {
            z-index: 1;
            left: 513px;
            top: 134px;
            position: absolute;
        }
        .style54
        {
            z-index: 1;
            left: 513px;
            top: 180px;
            position: absolute;
        }
        .style55
        {
            z-index: 1;
            left: 512px;
            top: 224px;
            position: absolute;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Perfila" runat="server" CssClass="style42" 
            Font-Size="XX-Large" Font-Underline="True" Text="Perfila"></asp:Label>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Irudiak/MendiLogo.jpg" 
            style="z-index: 1; left: 22px; top: 7px; position: absolute; height: 122px; width: 297px" />
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" 
            style="z-index: 1; left: 204px; top: 156px; position: absolute; height: 349px; width: 873px">
            <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="style7" TabIndex="1"></asp:TextBox>
            <asp:TextBox ID="TextBoxIzena" runat="server" CssClass="style12" TabIndex="2"></asp:TextBox>
            <asp:TextBox ID="TextBoxAbizena" runat="server" CssClass="style9" TabIndex="3"></asp:TextBox>
            <asp:TextBox ID="TextBoxPasahitza" runat="server" CssClass="style1" 
                TabIndex="7"></asp:TextBox>
            <asp:TextBox ID="TextBoxGalderaEzkutua" runat="server" CssClass="style19" 
                TabIndex="9"></asp:TextBox>
            <asp:TextBox ID="TextBoxGalderarenErantzuna" runat="server" CssClass="style21" 
                TabIndex="10"></asp:TextBox>
            <asp:TextBox ID="TextBoxPasahitzaErrepikatua" runat="server" CssClass="style10" 
                TabIndex="8"></asp:TextBox>
            <asp:Label ID="LabelPasahitza1" runat="server" CssClass="style17" 
                Text="Pasahitza :"></asp:Label>
            <asp:Label ID="LabelGaldera" runat="server" CssClass="style20" 
                Text="Galdera ezkutua :"></asp:Label>
            <asp:Label ID="LabelErantzuna" runat="server" CssClass="style22" 
                Text="Galdera ezkutuaren erantzuna :"></asp:Label>
            <asp:Label ID="LabelPasahitza2" runat="server" CssClass="style18" 
                Text="Pasahitza Errepikatu :"></asp:Label>
            <asp:Label ID="Herria" runat="server" CssClass="style3" Text="Herria :"></asp:Label>
            <asp:TextBox ID="TextBoxHerria" runat="server" CssClass="style4" TabIndex="5"></asp:TextBox>
            <asp:TextBox ID="TextBoxTelefonoa" runat="server" CssClass="style6" 
                TabIndex="6"></asp:TextBox>
            <asp:TextBox ID="TextBoxDNI" runat="server" CssClass="style8" TabIndex="4"></asp:TextBox>
            <asp:Label ID="LabelEmail" runat="server" CssClass="style11" Text="Email-a : "></asp:Label>
            <asp:Label ID="LabelIzena" runat="server" CssClass="style13" Text="Izena :"></asp:Label>
            <asp:Label ID="LabelAbizena" runat="server" CssClass="style14" Text="Abizena :"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="style15" Text="NAN :"></asp:Label>
            <asp:Label ID="Telefonoa" runat="server" CssClass="style5" Text="Telefonoa :"></asp:Label>
            <asp:Button ID="ButtonAldatu" runat="server" 
                Text="Aldatu" CssClass="style16" />
            <asp:Button ID="ButtonEzabatu" runat="server" CssClass="style43" 
                Text="Ezabatu" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBoxEmail" CssClass="style47" ErrorMessage="*" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBoxIzena" CssClass="style48" ErrorMessage="*" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBoxAbizena" CssClass="style49" ErrorMessage="*" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBoxDNI" CssClass="style50" ErrorMessage="*" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBoxHerria" CssClass="style51" ErrorMessage="*" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBoxPasahitza" CssClass="style52" ErrorMessage="*" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="TextBoxPasahitzaErrepikatua" CssClass="style53" 
                ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="TextBoxGalderaEzkutua" CssClass="style54" ErrorMessage="*" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="TextBoxGalderarenErantzuna" CssClass="style55" 
                ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </asp:Panel>
    
        <asp:HyperLink ID="HyperLinkAtzera" runat="server" CssClass="style44" 
            NavigateUrl="~/MendiElkartea/Bezeroa/Bezeroa.aspx">Atzera</asp:HyperLink>
    
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
            runat="server" ControlToValidate="TextBoxEmail" CssClass="style45" 
            ErrorMessage="Hau ez da email helbidea bat" ForeColor="#CC0000" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:CompareValidator ID="CompareValidatorPasahitzak" runat="server" 
            ControlToCompare="TextBoxPasahitza" 
            ControlToValidate="TextBoxPasahitzaErrepikatua" CssClass="style46" 
            ErrorMessage="Pasahitzak ez dira berdinak" ForeColor="#CC0000"></asp:CompareValidator>
    
    </div>
    </form>
</body>
</html>
